# Loaders bind to Import and Export only

**Status: implemented 2026-08-21.** The rule lives in `src/services/logistics/loader_binding.lua`,
registered from `src/control.lua`. This file is the record of what was measured in the engine and
what those measurements decided — the design itself is stated in `CLAUDE.md`.

## The rule

A loader may only ever be bound to an `import` or an `export`. Anything else — a chest, a furnace,
an assembler, the Entrance — is refused and the item handed back.

Import and Export are the item-heavy machines: a shop lot and a customer order are both bulk
deliveries. The Entrance is excluded on purpose, because it crafts one customer at a time and an
inserter handles that.

A loader's **bound side** is intrinsic: the tile it faces in `input` mode, the tile behind it in
`output`. The rule constrains that side only — the belt side is unconstrained, and a loader
bound to a machine in `output` mode is a legitimate unloader.

`bind` is **preserve-first**: an already-valid binding returns before anything is written. That is
what makes it safe on the paths no hand triggers — bot revive, upgrade planner, blueprint paste,
the load-time sweep. A rule of "whatever is ahead wins" is a fixpoint only by luck.

This replaced a heuristic that bound a loader to anything with an inventory, and deleted
`CONTAINER_INVENTORIES`, `has_container`, `BELT_TYPES`, `belt_at`, `feeds` and `wants_input` with it:
a two-name whitelist answers directly what those existed to guess.

## What was measured

Run as one scenario harness through `tools/check/player.ps1`, because three of these need
`build_from_cursor`, `rotate{by_player=}` or a live `script.on_event`.

| | Question | Result |
| --- | --- | --- |
| P1 | Can a `wooden-chest` be built on a tile of an `import` **ghost**? | **Yes.** `can_place_entity{build_check_type = manual}` returns true and `build_from_cursor` places the chest, destroying the ghost. The hole is real |
| P2 | Does `on_object_destroyed` fire for a watched ghost? | **Yes, on all three paths** — overbuild, deconstruction-planner cancel, **and revive**. An untouched ghost does not fire |
| P3 | What does R do to a placed `loader-1x1`? | Swings `direction` 180° **and** flips `loader_type` together: `dir 0/output → 8/input → 0/output`. The bound side never moves. A bound loader stayed bound to its export across a rotation (dir 4/input → dir 12/output) |
| P4 | Does `find_entities_filtered{area, ghost_name = {"import","export"}}` find a 3×3 machine ghost from an adjacent tile centre? | **Yes.** No `name = "entity-ghost"` fallback is needed |
| P5 | Does a hand-placed `loader-1x1` arrive as `output`? | **Yes**, direction as built |

### What those decided

- **P1 + P2 → the watch.** When `bind` succeeds, `register_on_object_destroyed(machine)` and record
  the site. One `on_object_destroyed` handler covers ghost cancellation, ghost overbuild, ghost
  revival, script destroys, editor deletion and entity death. No periodic scan, no unfiltered
  handler. Re-registering the same object returns the same number, so it is idempotent, and a
  registration survives save/load.
- **P2's revive case is why the handler re-*binds* rather than refunding on sight.** Reviving a
  machine ghost destroys it, so a handler that refunded on destruction would confiscate a loader on
  the ordinary blueprint path. This is the single most load-bearing thing the probe found.
- **P3 → no rotate handler.** Every state R can produce is one `bind` already accepts, and there is
  no 90° rotation for a loader, so `on_player_rotated_entity` could only ever be a no-op.
  `src/control.lua` deliberately does not register it and says so.
- **P4 → `machine_at` matches `name` then `ghost_name`,** two searches, both forced to the loader's
  own force so another force's ghost cannot validate your loader.

## Two bugs the rigs found

Both were inherited from the original `entrance_limit.lua` refund path, and both fail silently:

- **`spill_item_stack` defaults `allow_belts = true`.** Spilling before destroying put the refunded
  item on the refused loader's own transport line, and destroying the loader then deleted it — the
  building vanished and refunded nothing. `refuse.spill` now destroys first and passes
  `allow_belts = false`.
- **Its `force` parameter does not mean "give it to this force"** — it marks the spilled item for
  deconstruction. It is no longer passed.

## Deliberate absences

- `on_player_rotated_entity`, `on_player_flipped_entity` (mirroring flips over the axis pointing
  *along* `direction`, so direction is invariant), `on_entity_died` (no combat), and
  `script_raised_destroy` (the watch covers it). Each is named in `src/control.lua`.
- `on_entity_cloned` stays Entrance-only: a clone has no ordering guarantee and no ghost to fall
  back on, so a cloned loader would be refused for a machine not yet cloned.
- `import`/`export` carry no `fast_replaceable_group` and no `next_upgrade`, so a bound machine
  cannot be swapped out without a mining event. That absence is load-bearing.

## Rejected alternatives

- **A prototype-level whitelist.** None exists. `LoaderPrototype::allow_container_interaction` is one
  boolean covering containers *and* crafting machines together, so it cannot separate an Export from
  a furnace. Collision masks govern overlap, not adjacency. Enforcement has to be control-stage.
- **Vetoing the build.** No event can. `on_pre_build` carries no cancel, `can_place_entity` is a
  query the engine never asks a mod, and permission groups are all-or-nothing per player. Every
  design is undo-after-the-fact.
- **A periodic sweep.** Same coverage as the watch, but it costs a recurring scan and delivers a
  refund seconds after the action that caused it, which reads as a bug.

## Verification

`tools/check/prototypes.ps1` and `python tools/check/translations.py` prove it loads. Behaviour goes
through `tools/check/player.ps1` with twelve rigs, each asserting **a count of items that moved or
were refunded** — never a `loader_type` readback, which reads correct on a loader bound to the wrong
neighbour that moves nothing. Rig 2 is the control that script-creates the intended end state.

Covered: hand build, output-mode unloading, refusal against a chest / an assembler / perpendicular /
diagonal, mining the machine, a loader ghost revived *before* its machine ghost, ghost cancellation,
rotation, and fast-replacing to `fast-loader`.

The sweep was exercised separately on a copy of a real save through `tools/check/probe.ps1`, since
it only runs on `on_configuration_changed`: a loader beside an Export in the wrong mode was **fixed**
rather than confiscated, and one beside a chest was confiscated with its item on the ground.

Note for anyone extending the rigs: `surface.create_entity` does **not** raise `script_raised_built`
unless `raise_built = true`, so a rig that script-creates the loader will "prove" the rule does not
fire.

## Accepted gaps

- A refusal probably lands in the player's undo queue (`player.mine_entity` is "as if this player
  mined it"), so Ctrl+Z may re-create the illegal loader, which is then refused again. The Entrance
  limit already has this quirk.
- Items riding a refused loader's own belt are lost.
