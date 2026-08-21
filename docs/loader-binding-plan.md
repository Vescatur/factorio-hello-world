# Restrict loaders to Import and Export — implementation plan

**Status: planned, not implemented.** Written 2026-08-20. `src/services/logistics/assist.lua` still
binds a loader to anything with an inventory. Nothing below is in the code yet.

## Context

`src/services/logistics/loaders.lua` un-hides vanilla's three loaders, retypes them to `loader-1x1`
and prices them off the logistics technologies — a Penny, a Silver Coin and a Bond. Today
they bind to *anything with an inventory*: `src/services/logistics/assist.lua` probes a dozen
`defines.inventory.*` slots on whatever occupies the neighbouring tile, so a loader is a
general-purpose chest-to-belt mover. That is more capability than the mod intends. Import
and Export are the item-heavy machines — a shop lot and a customer order are both bulk
deliveries — and they are the only two that justify a loader. The Entrance is deliberately
excluded: it crafts one customer per minute, which an inserter handles.

So the rule becomes: **a loader may only ever be bound to an `import` or an `export`.**
Anything else is refused and the item handed back.

That rule also lets a large amount of generality go. `CONTAINER_INVENTORIES`,
`has_container`, `BELT_TYPES`, `belt_at`, `feeds` and `wants_input` exist to answer "is the
thing next door plausibly a target, and is a belt feeding me" — questions a two-name
whitelist answers directly. ~74 of the module's 151 lines are deleted.

## The rule, precisely

A loader's **bound side** is intrinsic: the tile it faces in `input` mode, the tile behind
it in `output` mode. The rule is about that side only — the belt side is unconstrained.

`bind(loader)`, preserve-first so it is a fixpoint by construction:

```lua
-- The bound side is the one thing the entity knows that nothing else can
-- reconstruct. If it is already a machine, leave it alone.
local function bind(loader)
    if machine_at(loader, bound_direction(loader)) then return true end
    local aimed = loader.direction
    local mode = machine_at(loader, aimed) and "input"
        or machine_at(loader, opposite(aimed)) and "output"
    if not mode then return false end
    if loader.loader_type ~= mode then loader.loader_type = mode end
    if loader.direction ~= aimed then loader.direction = aimed end
    return true
end
```

Preserve-first matters because `bind` now runs on paths a player never triggers by hand
(robot build, upgrade planner, rotate, blueprint paste, sweep). Every already-valid state
returns at the first line and writes nothing, so no working binding is ever silently
flipped. "Ahead wins" is a fixpoint only by luck.

This falls out for free, with no special cases:

- **sideways / diagonal** — neither the aimed tile nor the tile behind holds the machine, so
  the placement is refused. Deliberately no auto-snap: rotating the player's loader 90° for
  them would put the belt side where nothing is.
- **two loaders facing each other** — only machines qualify; both refused.
- **upgrade planner** `loader` → `fast-loader` — arrives as a build event on the
  replacement, which inherits direction and mode, so `bind` is a guaranteed no-op.
- **rotating a bound machine** — `import`/`export` have no fluidboxes, so they do not
  support direction and no event fires; a 3×3 body covers the same tiles either way.

## Step 0 — probe first, and let it pick the ghost policy

A pasted blueprint becomes ghosts, and construction bots revive them in arbitrary order, so
a loader can come up before its Export. A ghost `import`/`export` therefore has to count as
a valid neighbour, or roughly half of all bot-built blueprints lose their loader. Accepting
ghosts is only safe if a ghost cannot quietly disappear from under the loader.

Write one scenario harness (`.claude/skills/verify-in-engine/templates/harness.lua` as the
base, run with `tools/check/player.ps1`) that measures five things and writes `probe.txt`.
A scenario rather than RCON because two of these need `script.on_event` and a real cursor:

| | Question | Why it decides something |
| --- | --- | --- |
| P1 | Can a `wooden-chest` be built on a tile occupied by an `import` **ghost**, and is the ghost then gone? Try both `can_place_entity{build_check_type = defines.build_check_type.manual}` and an actual `build_from_cursor`. | If the engine refuses, there is no hole and no watch is needed. |
| P2 | With that ghost passed to `register_on_object_destroyed`, does `on_object_destroyed` fire when it is overbuilt? And when it is cancelled with a deconstruction planner? And when it is revived? | Decides whether the watch below is viable. |
| P3 | Does the R key on a placed `loader-1x1` change `direction` (moving the binding) or only `loader_type` (keeping it)? Four successive `rotate{by_player = player}` calls; log the `{direction, loader_type}` sequence as a **diagnostic**, and assert on the machine's `crafter_input` count. | `CLAUDE.md` asserts the binding is preserved. If true the rotate handler is a no-op; if R is a 90° step it is load-bearing. Do not stake a new invariant on an undocumented claim. |
| P4 | Does `find_entities_filtered{area = tile_area(pos), ghost_name = {"import","export"}}` find a 3×3 machine **ghost** from an adjacent tile centre? | A ghost's box is not documented as the inner entity's. If it misses, match on `name = "entity-ghost"` and read `ghost_name` instead. |
| P5 | Confirm a hand-placed `loader-1x1` still arrives as `output`. (`create_entity` defaults to `"input"` — the two differ.) | The module header states this as fact and `bind` reads better for it. |

**Pre-committed decision table**, so the probe result picks the design rather than another
round trip:

- **P1 says the engine refuses the overbuild** → no hole. Accept ghosts uniformly, no watch,
  no ghost-removal handler. Simplest outcome.
- **P1 overbuild works and P2 fires** → **the watch**: whenever `bind` succeeds against a
  neighbour, `register_on_object_destroyed(machine)` and record
  `storage.watch[registration] = { surface_index, position }`. One `on_object_destroyed`
  handler re-runs `bind` on the loaders around that position and refunds the orphans.
  Registering the same object twice returns the same number, so re-recording is idempotent,
  and the registration survives save/load. This covers ghost cancellation, ghost overbuild,
  ghost revival, script destroys, editor deletion and entity death from one filtered
  registration — airtight, ~15 lines, no periodic scan, no unfiltered handler.
- **P1 overbuild works and P2 does not fire** → fall back: hand placement refuses a ghost
  neighbour (build the machine first), bot/script revives accept one, plus
  `on_pre_ghost_deconstructed` (filterable on `ghost_name`, ghost still valid). The residual
  path then needs bots, a race and a deliberate overbuild, and the load-time sweep cleans it.

## Step 1 — `src/services/logistics/refuse.lua` (new, ~35 lines)

`control.lua` already owns the refund ladder — flying text, `cannot_build` sound,
`player.mine_entity` → robot cargo → spill-and-destroy. The loader rule needs the same
ladder plus two more shapes, and two drifting copies of that fallback chain is exactly what
rots. Lift it verbatim, with the message as a parameter:

- `refuse.build(entity, event, message)` — the existing ladder. Item name comes from
  `entity.name` (it equals the item name for `entrance`, `import`, `export` and all three
  loaders).
- `refuse.into(entity, inventory)` — insert then destroy, for the mining buffer.
- `refuse.spill(entity)` — spill then destroy, for the sweep and the watch.

Then rewrite `control.lua`'s Entrance path to call `refuse.build(entity, event,
{"profitorio.entrance-limit"})` and confirm it is behaviourally unchanged **before** touching
anything loader-related.

## Step 2 — `src/services/logistics/loader_binding.lua` (replaces `assist.lua`)

Deleted outright: `CONTAINER_INVENTORIES`, `has_container`, `BELT_TYPES`, `belt_at`,
`feeds`, `wants_input`. Kept: `OFFSET`, `tile_area` (an inset box, not
`find_entities_filtered{position=}` — the docs never say which box `position` tests and it
is unverified for ghosts; six proven lines beat a 0.2-tile margin).

Kept verbatim from the old header, because it is the archetypal comment `CLAUDE.md` asks
for and is *more* load-bearing now that `bind` writes on paths no hand ever triggers: the
two-write truth table, and that a fresh loader is `output`. Dropped from the header: the
prose about why fixing the mode is worthwhile — that is design rationale and belongs in a
doc like this one.

Exports:

- `binding.machines = { "import", "export" }` — the single source of truth. `control.lua`
  **generates its event filters from this table in a loop**, so adding a third machine
  cannot leave a removal filter behind.
- `machine_at(loader, direction)` — one search, `force = loader.force` (without it another
  force's ghost validates your loader), matching `name` first and only then `ghost_name`.
- `bound_direction`, `opposite`, `bind` as above.
- `binding.on_built(event)` — `bind`, else `refuse.build` with
  `{"profitorio.loader-needs-machine"}`.
- `binding.on_rebound(event)` — rotate and blueprint-paste. `bind`; if it fails and the
  event carries `previous_direction`, restore that and `bind` again; refuse only if that
  also fails. **Reverting a rotation is a far smaller surprise than confiscating a
  Bond-priced express loader.**
- `binding.on_machine_mined(event)` — for each `loader-1x1` in the machine's **selection
  box** expanded by 1 (±1.5 not ±1.2: the adjacent tile centres sit at ±2 and the collision
  box would leave a 0.2 margin), if
  `machine_at(loader, bound_direction(loader)) == event.entity` then
  `refuse.into(loader, event.buffer)`. The buffer, not `mine_entity`: nested mining inside a
  mining event, and `LuaEntity.mine`'s `inventory` must be a created or entity-owned
  inventory, which the dynamic mined buffer is not.
- `binding.sweep()` — every `loader-1x1` on every surface: `bind`, and `refuse.spill` the
  failures. Note it calls `bind`, not just validate, so a legacy loader that *is* next to an
  Import merely in the wrong mode gets fixed rather than confiscated.
- Plus the watch pair if Step 0 selects it.

One line in the header saying the rule holds no `storage` state (or only the watch table),
so nobody adds a tracking table by reflex.

## Step 3 — `src/control.lua` registrations

The one-registration-per-event rule is the hazard here: `control.lua` already registers
`on_robot_built_entity`, `script_raised_built`, `script_raised_revive` and
`on_entity_cloned` with `entrance_filter`, and a second call for any of them silently
deletes the Entrance limit. So: **one dispatcher, one union filter**, reusing the existing
`hand_built_filter` shape for all four build events.

- `on_built_entity`, `on_robot_built_entity`, `script_raised_built`, `script_raised_revive`
  → the union filter, dispatching on `entity.type == "loader-1x1"` vs
  `entity.name == ENTRANCE`. Running on robot and script builds is *required*, not optional:
  it is how the upgrade planner and bot revives get validated at all.
- `on_entity_cloned` stays **Entrance-only**, with a one-line note saying why: clone has no
  ordering guarantee and no ghost to fall back on, so a cloned loader would be refused
  because its machine has not been cloned yet. Same for `on_area_cloned` / `on_brush_cloned`,
  which nothing registers.
- `on_player_mined_entity`, `on_robot_mined_entity` → filters generated from
  `binding.machines`.
- `on_player_rotated_entity` → `binding.on_rebound`. Register it regardless of what P3 says:
  if the binding is preserved, `bind` returns at its first line and writes nothing; if it is
  not, this is the repair. Making the question moot is cheaper than depending on the answer.
- `on_blueprint_settings_pasted` → `binding.on_rebound`. The doc is explicit that rotation
  may have been updated, it supplies `previous_direction`, and it has **no filter table**,
  so it is one unfiltered handler that early-outs on `entity.type ~= "loader-1x1"` (which
  also excludes the ghost case the doc warns about).
- `on_object_destroyed` or `on_pre_ghost_deconstructed` per Step 0.
- `binding.sweep()` into the existing `on_setup()` beside `adopt()`, printing a count the
  way `adopt` does. This is what cleans the dev save, which has loaders next to chests today.

**Not registered, each worth a one-line deliberate-absence note:** `on_entity_died` (no
combat, only reachable via `die()`), `script_raised_destroy`, `on_player_flipped_entity`
(`mirroring` flips over the axis *pointing along* `direction`, so direction is invariant and
the bound tile cannot move).

## Step 4 — locale and discoverability

`src/locale/en/hello-world.cfg`:

- Add `profitorio.loader-needs-machine` (the refusal flying text) and a sweep summary key.
- **Delete `profitorio.loader-switched-to-input`** — an orphan referenced nowhere.
  `translations.py`'s stale check only inspects `*-name`/`*-description` sections and
  skips `[profitorio]`, so nothing will ever report it.
- **Rewrite the three `[entity-description]` lines** for `loader`, `fast-loader` and
  `express-loader`. They currently promise "Loads and unloads a machine continuously"; after
  this change that is false for every machine but two, and a player pays a **Bond** for
  `express-loader` before discovering it by refusal.

Never quote an example `profitorio.*` string inside a comment — `translations.py` greps
for that idiom and reports the example as a missing key.

## Step 5 — documentation

`CLAUDE.md`, three existing places plus one new, same commit:

- the project-structure bullet for `services/logistics/assist.lua` — rename and rewrite for the
  new job.
- the Comments section, which names that file as the style exemplar.
- the Rules bullet on the loader's intrinsic bound side — still true, still the file that
  documents the truth table, new path.
- **a new Rules bullet** for the invariant, with the reason: Import and Export are the
  item-heavy machines, the Entrance crafts one customer a minute and needs no loader.
  Without it the next contributor re-adds container support to be helpful. Footnote that
  `import`/`export` carry no `fast_replaceable_group` and no `next_upgrade`, so the machine
  cannot be swapped under a bound loader without a mining event — that absence is now
  load-bearing.

`docs/game-design.md` — one sentence that loaders are Import/Export infrastructure.

## Verification

`.\tools\check\prototypes.ps1` and `python tools\check\translations.py` (must print only its
`OK:` line) prove it loads, not that it works. The Problems panel stays empty.

Behaviour goes through `tools/check/player.ps1` with the phased build → settle → assert
harness, because a hand placement needs `build_from_cursor` and a binding reads nil on the
tick it was created. Every rig returns **a count of items that moved or were refunded** —
never a `loader_type` readback. Rigs, each `expect` the smallest count that means it works:

1. Belt → loader → `export` (recipe `customer_wooden-chest_deliver`, force-enabled), loader
   hand-built facing the machine: assert the machine's `crafter_input` count.
2. **CONTROL** — same end state script-created with `type = "input"` and the correct
   direction. Control passes and rig 1 fails → the bug is in our code. Both fail → our model
   of the engine is wrong.
3. `import` (recipe `buy_iron-ore`) → loader → belt, machine *behind* the loader: assert the
   transport line carries iron ore. Covers `output` mode and the deliberate-unloader case.
4. Loader hand-built facing a `wooden-chest`: assert the player's `loader` item count is 1
   **and** the chest is empty.
5. Loader hand-built facing an `assembling-machine-1`: refunded.
6. Loader hand-built **perpendicular** to an `export`: refunded.
7. Loader hand-built **diagonal** to an `export`: refunded.
8. Working rig 1, then `player.mine_entity(export)`: assert the player gained a `loader` and
   no loader entity remains.
9. Blueprint of `export` + loader pasted as ghosts, **loader ghost revived first**: assert it
   survives, then revive the machine and assert items move.
10. The ghost-removal case Step 0 selected — cancelled with a deconstruction planner, and
    overbuilt with a chest if P1 says that is possible: assert the loader is gone.
11. Rotate a working loader with `rotate{by_player = player}`: assert items still move.
12. Upgrade planner `loader` → `fast-loader`: assert items still move.

Then run the whole thing once against a copy of `dev.zip` (`tools/check/probe.ps1 -Action
start -Save dev.zip`) so the Step 3 sweep is exercised on the real loaders-next-to-chests it
exists for. Never inspect the save in place. Stop the server afterwards — a running one holds
the lock file and `prototypes.ps1` then fails with something that reads like a mod error.

Note for whoever writes the rigs: `surface.create_entity` does **not** raise
`script_raised_built` unless `raise_built = true`, so a rig that script-creates the loader
will "prove" the rule does not fire.

## Simplification pass

Only after the rigs are green, so it is refactoring rather than guessing. This design is the
third iteration — the first kept the belt-feeding heuristic, the second used "ahead wins"
precedence and four separate removal handlers — and the leftovers of that are what to hunt:

1. Re-read `loader_binding.lua` against the deletion list above. Anything still generic about
   "things that hold items", belt direction, underground-belt ends or the player's character
   is dead weight now: two prototype names cannot produce those false positives, and the
   verify skill's four documented false-positive cases stop existing.
2. Confirm `bind` is the only writer of `loader_type`/`direction`, and that both writes are
   guarded on inequality.
3. Confirm `binding.machines` is read by every filter — no second hardcoded
   `{"import","export"}` anywhere.
4. Check the removal paths did not converge: if Step 0 selected the watch, the mined handlers
   are a **UX fast path** over a strict superset. Keep them only because they put the item in
   your inventory rather than on the ground, and say exactly that in one line — otherwise
   delete them and let the watch do it.
5. Run the `/simplify` skill over the diff.
6. Comment ratio: the repo sits at ~15%; treat this file drifting past ~20%, or any block
   over ~20 lines, as a prompt to re-read the Comments section of `CLAUDE.md`. Net line count
   should land around +60 to +80 across all files — if it is much more, something did not get
   deleted.

## Accepted gaps

- If Step 0 lands on the fallback branch, a loader can be orphaned by bots reviving it before
  its machine and the player then overbuilding the machine ghost. Cleaned at the next
  `on_configuration_changed`.
- A refusal probably lands in the player's undo queue (`player.mine_entity` is "as if this
  player mined it"), so Ctrl+Z may re-create the illegal loader, which is then refused again.
  The Entrance limit already has this quirk. Verify once, accept, and do **not** opt further
  into it by passing `player` or `undo_index` to `destroy`.
- Items riding a refused loader's own belt are lost. The alternative is `LuaEntity.mine`,
  which is not usable here (Step 2).

## Rejected alternatives

- **A prototype-level whitelist.** None exists. `LoaderPrototype::allow_container_interaction`
  is one boolean covering "containers *and* crafting machines" together, so it cannot separate
  an Export from a furnace; `allow_rail_interaction` is the same for rolling stock;
  `container_distance` moves where the loader looks, equally for everything. Collision masks
  govern overlap, not adjacency, and a loader reaching a container one tile away involves no
  overlap at all. Enforcement has to be control-stage.
- **Vetoing the build.** No event can. `on_pre_build` fires before the entity exists but
  carries no cancel and no return value is read; `LuaSurface.can_place_entity` is a query the
  engine never asks a mod; `LuaPermissionGroup.set_allows_action(defines.input_action.build)`
  is all-or-nothing per player. Every design is undo-after-the-fact.
- **A periodic sweep.** Airtight, but it costs a recurring scan and delivers a refund seconds
  after the action that caused it, which reads as a bug. The watch in Step 0 gets the same
  coverage from one event.
- **`create_entity{name = "flying-text"}`.** The `flying-text` entity type was removed in
  2.0.8. `LuaPlayer.create_local_flying_text` is the replacement, which `control.lua` already
  uses.
