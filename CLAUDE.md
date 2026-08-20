# Profitorio — Factorio 2.1 Total Overhaul Mod

A constraint-based overhaul mod inspired by [Ultracube](https://mods.factorio.com/mod/Ultracube). Instead of mining and expanding, players serve customers to earn money — the only way to acquire resources. The goal: what can we do with existing Factorio mechanics that requires a completely new factory design?

## Design Philosophy

- **No ores, no electricity** — all resource generation and electric infrastructure are removed
- **No enemies, no combat** — there is nothing to defend against, so biters and the whole weapon tree are gone
- **Customers are the economy** — they arrive as spoiling items, request goods, pay in currency
- **Money is science** — six of the science packs are re-skinned into currency denominations, so research is literally what you spend profit on
- **Optimize, don't expand** — the money bottleneck and customer spoilage reward efficiency over scale
- **Vanilla mechanics only** — uses Factorio 2.1's spoilage, `shared_probability`, and `independent_probability` features
- **Restaurant-tycoon mechanics, not theme** — we borrow the serve-customers-under-pressure loop, not the restaurant setting

## Scope

- **Base game only — no Space Age** — the mod targets vanilla Factorio 2.1 and does not use, depend on, or support the Space Age expansion. No Space Age prototypes, items, planets, or quality mechanics. `src/info.json` depends on `base` only.
- **No mod compatibility** — the mod is not intended to work alongside other mods and makes no effort to support them. It removes ores and electricity wholesale, so most other mods will break; that is expected and acceptable. Never add compatibility shims, soft dependencies, or conditional handling for other mods.

See [docs/game-design.md](docs/game-design.md) for full design rationale and Ultracube comparison.

## Project Structure

- `src/` — The mod source (symlinked into Factorio mods folder)
  - `data.lua` — Entry point, requires all services
  - `data-updates.lua` — Requires `shop.lua`, then `tolls.lua`, then `cost.lua`, **in that order** — the order is correctness, not readability, and the file says why. Exists because base generates the fluid barrel items in *its* data-updates, so neither the shop nor the toll injector can see a complete recipe list any earlier
  - `control.lua` — Runtime entry point: enforces the single-Entrance limit, sets the starter inventory, and owns the event registrations every runtime module hangs off
  - `runtime/loader_assist.lua` — Control stage. On hand placement, switches a loader to `input` when the tile it faces holds something that can hold items, or the tile behind holds a belt running into it. Takes **two writes**, and the second is not optional: assigning `loader_type` preserves the bound side by swinging the arrow 180°, so the aimed direction has to be written back afterwards. A loader with a container already behind it is left alone, which is what keeps a deliberate unloader (and a hand-revived blueprint) intact
  - `lib/prototypes.lua` — The four moves every removal service makes: delete recipes (and strip the unlock effects naming them), hide items, delete technologies, re-link the prerequisites and dependents left dangling. Also `find_item`/`icons_of`, the type-agnostic item lookup — reach for those instead of `data.raw.item[name]`, which is nil for armor, modules, rail planners and item-with-entity-data. Not a service; required by the ones below
  - `services/customers.lua` — Core: the band and order tables, the customer items, and the generated spoil chain and spawn weights. Returns the bands, the orders and each order's item name; the recipes that consume them live with the machine that crafts them
  - `services/currency.lua` — Re-skins six science packs into currency denominations; also the module the rest of the mod asks for currency item names
  - `services/entrance.lua`, `services/import.lua`, `services/export.lua` — The three machines the whole loop runs through, plus the recipes two of them craft: `customer-new` and the `customer_*_deliver` payouts. `export.lua` also wires each band's licence onto its technology
  - `services/shop.lua` — The `buy_*` price list the Import machine crafts, each good priced in the denomination of the era that needs it. Separate from `import.lua` because it runs a stage later. Returns its `resources` table, which `cost.lua` uses as the solver's seeds
  - `services/tolls.lua` — Charges a coin to craft. Derives each recipe's denomination from the technology that unlocks it, and owns the exemption list (fluid-only, smelting, barrels, start-enabled). Also puts the Diamond client into the `satellite` recipe
  - `services/cost.lua` — Emits no prototypes. Re-solves the recipe graph and asserts the authored refunds still cover what each order costs, so the numbers in `customers.lua` cannot rot silently
  - `services/item_groups.lua` — The Profitorio tab and its subgroup ordering
  - `services/loaders.lua` — The one service that adds rather than removes. Un-hides the three vanilla loaders — entity, item and recipe are all `hidden` in base and no technology names them — **retypes them from `loader` to `loader-1x1`** so they take one tile, and hangs each off the logistics technology that unlocks its belt tier. Attaching them to a technology rather than setting `enabled = true` is what prices them: `tolls.lua` reads the denomination off the unlocking technology, so they cost a Penny, a Silver and a Bond without a line of pricing code. The retype is why there are no new prototypes here — `place_result` and `minable.result` name a prototype, not a type, so the items, recipes and icons carry over untouched
  - `services/starter_recipes.lua` — Re-costs the penny band's goods onto one bought raw material each: `burner-inserter` onto 10 wood, `assembling-machine-1` onto 5 stone. Both ship `enabled = true`, because a penny order cannot wait on research — every technology sits behind a lab, a lab behind copper, and copper behind the Silver Coin only the penny band mints. `automation` keeps its unlock effect for `assembling-machine-1`: that is where `tolls.lua` reads its Penny toll from
  - `services/remove_ore.lua` — Strips ore/resource generation, deletes the mining drills and pumpjack, stops rocks dropping coal, and prices `oil-processing` in money since its "mine crude oil" trigger can never fire
  - `services/remove_electricity.lua` — Removes electric infrastructure, converts every electric *and burner* energy source to void
  - `services/remove_enemies.lua` — Stops enemies generating and hides them
  - `services/remove_military.lua` — Deletes the combat recipes and technologies
  - `services/remove_uranium.lua` — Deletes the uranium chain and re-costs `fission-reactor-equipment` off uranium fuel
  - `graphics/icons/` — Custom sprites. **Generated from `art/icons/` — edit the SVG, not the PNG.**
  - `locale/en/` — Translations
- `art/icons/` — Editable SVG sources for the custom sprites. Kept out of `src/` so only shipped assets are symlinked into the mods folder
- `tools/` — Dev scripts: `creat-link.ps1` (symlink; also clears any built zip out of the mods folder), `run-dev.ps1` (launch), `run-headless.ps1` (headless validation), `find-missing-locale.py` (untranslated prototypes), `factorio-docs-to-md.py` (API docs → markdown), `svg-to-png.py` (icon SVG → PNG), `create_zip.py` (reproducible release zip; installs it in place of the dev junction), `publish_mod.py` (mod portal publish/update — `update` bumps the version in `src/info.json`, builds the zip and uploads it; reads the API key from the gitignored `tools/.secrets/mod-portal-api-key`)
- `.claude/skills/verify-in-engine/` — Skill: verify runtime behaviour by driving the real engine (`tools/rcon-server.ps1` + `factorio_rcon.py` for headless, `tools/run-scenario.ps1` for anything needing a player or a screenshot). Assert items moved, never an API readback
- `factorio-data/` — Base game prototype data. **Read-only reference. Do not modify.**
- `factorio-docs/markdown/` — Factorio 2.1.14 API reference in markdown. **Generated. Do not edit by hand.**
- `docs/` — Detailed documentation

## API Reference

`factorio-docs/markdown/` holds the full Factorio 2.1.14 API (1880 files, ~9 MB), generated from the
official API dump by `tools/factorio-docs-to-md.py`.

**It is far too large to read in full — navigate it, never load it:**

1. If you know the exact name, open the file directly: `factorio-docs/markdown/prototypes/SegmentedUnitPrototype.md`.
2. Otherwise grep the relevant `index.md`, then open the single file you need.

| Looking for | Go to |
| --- | --- |
| A prototype definition (data stage) | `prototypes/index.md` |
| A property type (`Sound`, `IconData`, ...) | `types/index.md` |
| A runtime `Lua*` class (control stage) | `classes/index.md` |
| Runtime concepts / events | `concepts/index.md`, `events/index.md` |
| `defines.*` enums | `defines/defines.md` |
| Prose guides (data lifecycle, mod structure, migrations) | `auxiliary/` |

To regenerate (e.g. after a Factorio update), re-download the docs bundle into `factorio-docs/html/`
(gitignored) and run `python tools/factorio-docs-to-md.py --clean`. It verifies its own output and
fails on any broken internal link.

## Key Conventions

### Comments

**A comment earns its place by saying something the code cannot.** Everything else is noise that
buries the comments that matter — and when every line is annotated at the same intensity, nothing
is emphasised and the file stops being skimmable.

Write one:

- **An engine constraint that fails silently or reports something misleading.** These are the
  reason the convention exists. Tolling a smelting recipe raises no error, it just makes the item
  uncraftable in every furnace; `belt_length = 0` crashes at `TransportLine.cpp:891`; a second
  `script.on_event` silently replaces the first. Say what breaks and how it presents. If a
  plausible "fix" is what causes the failure, say that too.
- **A deliberate absence.** A missing field, a guard that looks removable, a prototype that looks
  like dead code (`loader-1x2-stub`). Without a note these read as oversights and get "tidied".
- **A non-obvious "why" next to the code it explains**, in one to three lines.
- **A short header** — one line, three at the outside — saying what the file does.

Do not write one for:

- **Design rationale, alternatives considered, or comparisons.** That belongs in this file or in
  `docs/`. A source file that argues its design is a design doc with code attached.
- **History.** "This used to live in X", "this no longer does Y". Git knows.
- **Anything already in `CLAUDE.md` or `docs/`.** Three drifting copies is worse than one.
- **A restatement of the next line**, or a `STEP 1` / `====` banner used as decoration.

Two habits that keep it honest:

- **Put the note next to the code it guards, not in the file header.** The smelting warning belongs
  on the `if category == "smelting"` line in `services/tolls.lua`, where someone editing the
  exemption list will actually meet it.
- **Prefer a good assertion message to a comment.** An `assert` that names the offending prototype
  and says what was expected documents the constraint *and* enforces it. Much of this codebase
  already does this well; reach for it first.

`runtime/loader_assist.lua` is the reference for the target style: short notes sitting directly
above the function each explains. Current whole-repo ratio is ~15% comment lines; treat a file
drifting past ~20%, or any block over ~20 lines, as a prompt to re-read this section.

### Adding or Changing a Customer Order

Orders live in the `orders` table in `services/customers.lua`, currently three per band, and each
entry needs:

- `band` / `grade` — where it sits on the ladder. `band` indexes the `bands` table (1 = penny), `grade` counts up from 1 (easiest). A band may hold **any number of grades** as long as they run 1..N with no gaps; nothing in the code assumes three. **The band's top grade is its bridge upward** and is what pays a coin of the next denomination — that is derived as `order.is_top`, never written as `grade == 3`
- `item` — the vanilla item ordered. Finished goods only: never ore, plates, gears or circuits
- `amount` — how many to deliver
- `refund` — a map of denomination key to amount, e.g. `{ penny = 48, silver_coin = 2 }`. This must cover the **full embedded cost** of `amount × item`, tolls included
- `profit` — a plain number, paid in the band's own currency. A design knob like `spawn`, not a consequence of the refund: nothing enforces it. The current table pays a fifth of the refund's line in the band's **own denomination**, rounded up and floored at one coin, so a refund edit is a prompt to re-read this number — but it stays whatever you type
- `spawn` — who walks in when this order is served, as whole percent **indexed by grade**: `spawn[g]` is the chance of a grade-`g` customer of the same band, plus the named key `up` for the drip to the band above. One number per grade the band has, `0` included, summing to `weight_total` (100)

The spoil chain, the successor list and the band's licence are all **generated** from `band` and
`grade` — do not hand-write them. The spawn percentages are the exception: they are authored per
order, because they are a design choice rather than a consequence of position. Neither is the refund
solved at load: author it, and let `cost.lua` tell you if it is short. To get the number, read the
`[cost]` lines the previous load already logged and round up.

Holding the profit to a fifth of the refund is what makes bands 2, 4 and 5 pay a single coin: their
goods embed **no coin of their own denomination** at all — nothing on the robot path pays a Bond
toll — so a fifth of nothing floors at 1. Giving those bands a real margin means either typing a
bigger number here or tolling something in their recipe tree, which is the choice that ladder is
still waiting on.

Adding or removing a grade means **every `spawn` row in that band changes length**. A stale row
fails the load naming the order, the band and both lengths, so this cannot rot silently — but it is
a whole-band edit, not a one-row one.

Like `currency.lua`, this module owns its prototype names: `require("services.customers")` returns
`{ bands, orders, item = { ["wooden-chest"] = "customer_wooden-chest", ... }, is_customer, entry, weight_total }`.
Ask it for a name rather than concatenating the `customer_` prefix somewhere else, and ask an
order's `is_top` rather than assuming a band ends at grade 3.

Nothing generates locale, so add `item-name.customer_<item>`,
`item-description.customer_<item>` and `recipe-name.customer_<item>_deliver` to
`src/locale/en/hello-world.cfg`, then run `python tools/find-missing-locale.py` to confirm nothing
else is untranslated.

**The penny band is special.** Its orders must be craftable from recipes that are enabled at game
start and need no copper, because copper costs Silver and the only source of Silver is the penny
band's own hard order. Anything else deadlocks a new game.

### Adding or Editing an Icon

Edit the SVG in `art/icons/`, then run `python tools/svg-to-png.py --all` to regenerate
`src/graphics/icons/`. Needs `pip install -r tools/requirements.txt` once. Never hand-edit the PNGs —
they are build output and get overwritten.

### Adding a Purchasable Resource

Add an entry to the `resources` table in `services/shop.lua` with `item`, `amount`, `price`, and
`currency` (a field from the `currency` module, e.g. `currency.penny`). Price it in the denomination
of the era that needs it, and grow the lot size with the denomination so unit prices stay in the same
range across the ladder. Changing any price invalidates the authored refunds — `cost.lua` will say
so at the next load.

### Currency

Money is not a separate item set: `services/currency.lua` **re-skins six of the vanilla science packs
in place** into a denomination ladder, so every technology's existing `unit.ingredients` becomes its
price and the lab is where profit is spent.

| Prototype | Denomination |
| --- | --- |
| `automation-science-pack` | Penny (replaced the base game `coin`) |
| `logistic-science-pack` | Silver Coin |
| `chemical-science-pack` | Banknote |
| `production-science-pack` | Bond |
| `utility-science-pack` | Gold Bar |
| `space-science-pack` | Diamond |

Never spell those prototype names out elsewhere — `require("services.currency")` returns a
`{ penny = "automation-science-pack", ... }` map, and everything else asks it by denomination.

`military-science-pack` is the seventh pack and is **not** money. It used to be the War Chest, but
every technology priced in it was a combat technology, so removing combat left the denomination with
nothing to buy. It is hidden by `remove_military.lua` the way `coin` is. Don't re-add it to the
ladder — re-pricing the tree onto a seventh tier is a separate economy decision, not a revert.

### Removing enemies and combat

`remove_enemies.lua` and `remove_military.lua` run from `data.lua` like every other service — there
is no `data-final-fixes.lua`. They touch prototypes base declares in its own `data.lua`
(`main_menu_simulations` is filled in there, at `base/data.lua:78-105`), and base's `data-updates.lua`
only generates fluid barrels, so nothing they remove gets added back afterwards.

Enemies are **hidden and stripped of autoplace, not deleted**. That is an engine limit, not a
preference: `'entity' prototype type 'unit' requires at least 1 prototype be defined so save files
can be loaded`, and the same holds for `unit-spawner` and `turret` (whose only vanilla members are
the four worms — the player-built turrets are all subtypes). Nothing spawns and nothing is listed, so
the result is the same in play. Don't attempt the deletion again; it fails at load.

Military items follow the `remove_electricity.lua` trade-off — **recipe deleted, item hidden, item
and entity prototypes kept** — so `car.guns`, `lab.inputs` and the spidertron tips-and-tricks entries
still resolve. Radar is deliberately kept craftable: `satellite` needs five of them.

## Rules

- **Never modify `factorio-data/`** — it's base game reference data
- **Never re-add ore *patches* or electricity** — the entire mod design depends on their absence. Ore
  *items* are a different thing: they are shop goods, and smelting them is how plates are made. What
  stays banned is anything on the map to mine and anything that generates or distributes power. The
  mining drills and the pumpjack are deleted for the same reason — there is nothing to point them at
- **Never re-add enemies or combat content** — there is nothing to defend, so weapons, ammo, turrets, walls and combat vehicles have no function. Most of the tree was already unreachable anyway: `explosives` needs coal and sulfur needs crude oil, and `remove_ore.lua` deletes both. Radar, `modular-armor`/`power-armor` (equipment-grid carriers) and the car are kept on purpose and are not combat content
- **Customer spawn weights are integers, never decimals** — each order's `spawn` row must sum to `weight_total`, and there's a load assertion. Decimals are the trap: `0.1 + 0.2 + 0.7` is `1.0000000000000002` in IEEE doubles, which fails the assertion outright and, worse, leaves a one-ULP gap between two `shared_probability` bands where a delivery emits no successor and silently drains the population. A `0` is fine and means "never spawn this grade" — it is dropped rather than emitted as a zero-width slice
- **A loader's bound side is intrinsic — `loader_type` does not move it** — the side a loader loads/unloads is the tile it faces in `input` mode and the tile behind it in `output`, and both `rotate()` and assigning `loader_type` *preserve* that side by flipping the direction to compensate. So `loader.loader_type = "input"` is not a mode switch: the arrow swings 180° and the loader stays bound to the same neighbour. Writing `direction` is the only lever that moves the binding. Any code changing a loader's mode must set the mode and then write the intended direction back — `runtime/loader_assist.lua` documents the measured truth table. Verify such a change by asserting **items actually moved**, never by reading `loader_type` back
- **One `script.on_event` call per event, ever** — a second registration for the same event *replaces* the first and raises no error, so the concern registered earlier just stops working. `src/control.lua` is the only place that calls `script.on_event`: runtime modules export a handler and it composes them, which is why the Entrance limit and `runtime/loader_assist.lua` share one `on_built_entity` registration with the union of their filters. Filter entries are OR-ed. Add a runtime module the same way — never call `script.on_event` from inside one
- **Never delete `loader-1x2-stub`** — Profitorio's loaders are all `loader-1x1`, which leaves the `loader` type with nothing in it, and the engine refuses to load: `'entity' prototype type 'loader' requires at least 1 prototype be defined so save files can be loaded`. The same rule that keeps the enemies hidden rather than deleted. The stub in `services/loaders.lua` is that one prototype: hidden in both senses, with its minable result, upgrade target and fast-replace group stripped so nothing can reach it. It looks like dead code and is not
- **Never toll a smelting recipe** — every furnace has `source_inventory_size = 1`, so a smelting recipe cannot take a second ingredient. Adding one raises no error; it just makes the item uncraftable in every furnace in the game. `services/tolls.lua` guards this, and the guard must stay
- **Never gate the penny band behind a technology** — its delivery recipes ship `enabled = true` because every technology in the game is downstream of a lab, a lab needs copper, and copper costs Silver that only the penny band can pay. Gating it deadlocks a new game in the first minute
- **The penny band's hard order must keep its Silver bridge** — it is the only source of the first Silver Coin, and without it the `electronics` trigger can never fire and no research is ever possible
- **Only one Entrance may exist** — it's the sole source of customers, so its count is what bounds the whole economy. `src/control.lua` refuses extra placements. Retune throughput via `energy_required` on `customer-new` or the Entrance's `crafting_speed` — both in `services/entrance.lua` — never by allowing more buildings. A satellite launch is the one other place a customer leaves the population: it consumes its Diamond client and emits no successor
- **Money is earned, never crafted** — the science pack recipes are deleted, not hidden, because red and green are craftable from purchased plates and would let the factory print its own money. Never restore a recipe that produces a currency item, and never add an exchange recipe between denominations: what a customer pays is what gates the tier of research you can afford
- **Ghosts are a permanent dead end** — `customer_ghost` has no spoil timer and no recipe, on purpose. It piles up forever, and one spoiling inside a machine's ingredient slot jams that machine for good. That hazard is the challenge; never add a spoil timer, disposal recipe, or any other way to get rid of ghosts
- **Mod internal name is `profitorio`** — referenced in paths, icon prefixes (`__profitorio__`), the symlink, and the `[profitorio]` locale namespace. `creat-link.ps1` and `create_zip.py` read it from `src/info.json` rather than hardcoding it, so a rename follows that file
- **Target Factorio version: 2.1** — uses features not available in earlier versions
- **Never depend on Space Age** — base game only; don't reference Space Age prototypes or add it to `dependencies`
- **Never add mod-compatibility code** — no soft dependencies, no `if mods["..."]` branches, no shims for other mods
- **Comments say what the code cannot** — engine constraints that fail silently, deliberate absences, and short local "why" notes. Never design rationale (that lives here or in `docs/`), never history, never a restatement of the next line. Put the note beside the code it guards rather than in the file header, and prefer an assertion message that both documents and enforces. See [Comments](#comments)
- **Always validate after changes** — run `.\tools\run-headless.ps1` after any mod file change to catch prototype errors before committing, and `python tools\find-missing-locale.py` after adding or renaming any prototype
- **Leave the locale report empty** — `find-missing-locale.py` must print only its `OK:` line, advisories included. Clear every entry one of two ways: write the description in `src/locale/en/hello-world.cfg`, or, when the name already says everything, paste the reported line into `INTENTIONALLY_UNDESCRIBED` in `tools/find-missing-locale.py` under the comment group that explains why (`*` globs, for prototypes generated in a loop). Never suppress a missing *name* — those render as `Unknown key` in game. See [docs/dev-setup.md](docs/dev-setup.md#the-report-must-come-back-empty)
- **Leave the VSCode Problems panel empty** — zero entries, so the next one that appears is worth reading. Fix the code, or, when the bundled Factorio type definitions are wrong (they mark optional fields required — check `factorio-docs/markdown/types/` and vanilla's own usage before believing a warning), suppress that one line with `---@diagnostic disable-next-line: <code>` and a comment saying why. Never disable a rule file-wide or workspace-wide. See [docs/dev-setup.md](docs/dev-setup.md#the-problems-panel-must-stay-empty)

## Dev Setup

See [docs/dev-setup.md](docs/dev-setup.md). Quick start:
1. `.\tools\creat-link.ps1` — symlink `src/` into Factorio mods
2. `.\tools\run-dev.ps1` — launch Factorio with dev save

## Further Reading

- [docs/game-design.md](docs/game-design.md) — Vision, Ultracube inspiration, design principles
- [docs/customer-system.md](docs/customer-system.md) — Full customer/currency economy spec with probability trees
- [docs/dev-setup.md](docs/dev-setup.md) — Environment setup, project structure, testing workflow
