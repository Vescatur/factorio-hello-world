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

`src/services/` is grouped **by domain, not by stage**: one folder per part of the mod, holding
everything about it — data stage and control stage side by side. `control.lua` is composition only.

- `src/` — The mod source (symlinked into Factorio mods folder)
  - `data.lua` — Entry point, requires all services
  - `data-updates.lua` — Requires `prices.lua`, then `tolls.lua`, then `verify_orders.lua`, **in that order** — the order is correctness, not readability, and the file says why. Exists because base generates the fluid barrel items in *its* data-updates, so neither the shop nor the toll injector can see a complete recipe list any earlier
  - `control.lua` — Runtime entry point, and **composition only**: it requires the runtime modules, dispatches `on_built_entity` between them by entity name, and owns every `script.on_event` call. It holds no domain logic of its own — the concerns live in `logistics/entrance_limit.lua`, `logistics/loader_binding.lua` and `economy/shop/starter_inventory.lua`
  - `lib/prototypes.lua` — The four moves every removal service makes: delete recipes (and strip the unlock effects naming them), hide items, delete technologies, re-link the prerequisites and dependents left dangling. Also `find_item`/`icons_of`, the type-agnostic item lookup — reach for those instead of `data.raw.item[name]`, which is nil for armor, modules, rail planners and item-with-entity-data. Not a service; required by the ones below
  - `services/economy/customers/` — Who walks in, what they order, and the machines that make and pay them
    - `orders.lua` — Core: the band and order tables, the customer items, the one five-minute life they all share, and the generated spawn weights. Returns the bands, the orders and each order's item name; the recipes that consume them live with the machine that crafts them
    - `entrance.lua`, `export.lua` — Two of the three machines the whole loop runs through (the third is `shop/import.lua`), plus the recipes they craft: `customer-new` and the `customer_*_deliver` payouts. `export.lua` also wires each band's licence onto its technology
    - `verify_orders.lua` — Emits no prototypes. Re-solves the recipe graph and asserts the authored refunds still cover what each order costs, so the numbers in `orders.lua` cannot rot silently. Runs in `data-updates.lua`, after `prices.lua` and `tolls.lua`
  - `services/economy/money/` — The denomination ladder, and what everything costs
    - `currency.lua` — Re-skins six science packs into currency denominations; also the module the rest of the mod asks for currency item names
    - `tolls.lua` — Charges a coin to craft. One row per **vanilla recipe** — every one of them — naming the denomination and how many coins it costs, or `toll = false` for free, grouped by the technology that unlocks it and ordered by the licence that technology invoices. The list must stay complete: a vanilla recipe with no row fails the load by name, so no Factorio update can slip one past the toll booth. It also re-solves the cheapest licence per recipe and logs any row that has drifted off it. Also puts the Diamond client into the `satellite` recipe
  - `services/economy/shop/` — Buying goods, and what a new game opens with
    - `prices.lua` — The `buy_*` price list the Import machine crafts, each good priced in the denomination of the era that needs it. Separate from `import.lua` because it runs a stage later. Returns its `resources` table, which `verify_orders.lua` uses as the solver's seeds
    - `import.lua` — The machine that crafts those `buy_*` recipes, turning currency into goods
    - `starter_recipes.lua` — Re-costs the penny band's goods onto one bought raw material each: `burner-inserter` onto 10 wood, `assembling-machine-1` onto 5 stone. Both ship `enabled = true`, because a penny order cannot wait on research — every technology sits behind a lab, a lab behind copper, and copper behind the Silver Coin only the penny band mints. `automation` keeps its unlock effect for `assembling-machine-1`: that is where `tolls.lua` reads its Penny toll from
    - `starter_inventory.lua` — Control stage. The six-item kit a new game opens with. Replaces freeplay's list through its remote interface rather than extending it, because the vanilla kit's burner mining drill has nothing to work with
  - `services/logistics/` — What may be placed where: the loaders in both stages, and the two rules that police a placement and hand the item back when it is refused
    - `loaders.lua` — The one service that adds rather than removes. Un-hides the three vanilla loaders — entity, item and recipe are all `hidden` in base and no technology names them — **retypes them from `loader` to `loader-1x1`** so they take one tile, and hangs each off the logistics technology that unlocks its belt tier. Attaching them to a technology rather than setting `enabled = true` is what prices them: `tolls.lua` reads the denomination off the unlocking technology, so they cost a Penny, a Silver and a Bond without a line of pricing code. The retype is why there are no new prototypes here — `place_result` and `minable.result` name a prototype, not a type, so the items, recipes and icons carry over untouched
    - `loader_binding.lua` — Control stage. Enforces that a loader is bound to an Import or an Export and nothing else, on every path that can create or move one: hand and robot builds, script revives, blueprint paste, the machine being mined, the machine going away, and a load-time sweep. `bind` is **preserve-first** — an already-valid binding returns before anything is written — which is what makes it safe to run on paths no hand triggers. Setting a mode takes **two writes**: assigning `loader_type` preserves the bound side by swinging the arrow 180°, so the aimed direction has to be written back afterwards. Owns `storage.loader_watch`, and exports `machines` — the `{ "import", "export" }` table `control.lua` generates its filters from
    - `entrance_limit.lua` — Control stage. Refuses a second Entrance and hands the item back, and reconciles a save that already holds several. Owns `storage.entrance`; exports `name`, `on_built` and `adopt` for `control.lua` to register — it never registers an event itself
    - `refuse.lua` — The refund ladder both rules share: flying text and `cannot_build` into the player's hands, else the robot's cargo, else the ground, plus the shapes for a mined-entity buffer and a bare spill. Names the item off the entity, and `assert`s that item exists — a refusal that refunds nothing reads in game as the building vanishing
  - `services/removals/` — The content the design takes away
    - `ore.lua` — Strips ore/resource generation, deletes the mining drills and pumpjack, stops rocks dropping coal, and prices `oil-processing` in money since its "mine crude oil" trigger can never fire
    - `electricity.lua` — Removes electric infrastructure, converts every electric *and burner* energy source to void
    - `enemies.lua` — Stops enemies generating and hides them
    - `military.lua` — Deletes the combat recipes and technologies
    - `uranium.lua` — Deletes the uranium chain and re-costs `fission-reactor-equipment` off uranium fuel
  - `services/interface/item_groups.lua` — The Profitorio tab and its subgroup ordering. Deliberately not distributed into the domains: the `order` letters only make sense read side by side
  - `graphics/icons/` — Custom sprites. **Generated from `art/icons/` — edit the SVG, not the PNG.**
  - `locale/en/` — Translations
- `art/icons/` — Editable SVG sources for the custom sprites. Kept out of `src/` so only shipped assets are symlinked into the mods folder
- `tools/` — Dev scripts, grouped by what you are trying to do rather than by what they use. Every folder carries a README
  - `setup/` — `dev-mode.ps1` (junctions `src/` into the mods folder, and clears any built zip out of it), `requirements.txt` (the one pip dependency, needed by `generate/icons.py`)
  - `run/` — `playtest.ps1`, the only script whose job is just to start the game
  - `check/` — Every way of verifying the mod, cheapest first: `prototypes.ps1` (does the data stage load), `translations.py` (untranslated prototypes), then `probe.ps1` + `probe_client.py` (headless server on a **copy** of a save) and `player.ps1` (the real client, for anything needing a cursor or a screenshot). A running `probe.ps1` holds Factorio's lock file, so `prototypes.ps1` then fails with something that reads exactly like a mod error
  - `generate/` — `icons.py` (icon SVG → PNG), `api_docs.py` (API docs → markdown)
  - `release/` — `zip.py` (reproducible release zip; installs it in place of the dev junction, so `setup/dev-mode.ps1` is how you get back), `publish.py` (mod portal publish/update — `update` bumps the version in `src/info.json`, builds the zip and uploads it; reads the API key from the gitignored `tools/.secrets/mod-portal-api-key`)
- `.claude/skills/verify-in-engine/` — Skill: verify runtime behaviour by driving the real engine (`tools/check/probe.ps1` + `probe_client.py` for headless, `tools/check/player.ps1` for anything needing a player or a screenshot). Assert items moved, never an API readback
- `factorio-data/` — Base game prototype data. **Read-only reference. Do not modify.**
- `factorio-docs/markdown/` — Factorio 2.1.14 API reference in markdown. **Generated. Do not edit by hand.**
- `docs/` — Detailed documentation

## API Reference

`factorio-docs/markdown/` holds the full Factorio 2.1.14 API (1880 files, ~9 MB), generated from the
official API dump by `tools/generate/api_docs.py`.

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
(gitignored) and run `python tools/generate/api_docs.py --clean`. It verifies its own output and
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
  on the `if category == "smelting"` line in `services/economy/money/tolls.lua`, where someone editing the
  exemption list will actually meet it.
- **Prefer a good assertion message to a comment.** An `assert` that names the offending prototype
  and says what was expected documents the constraint *and* enforces it. Much of this codebase
  already does this well; reach for it first.

`services/logistics/loader_binding.lua` is the reference for the target style: short notes sitting directly
above the function each explains. Current whole-repo ratio is ~15% comment lines; treat a file
drifting past ~20%, or any block over ~20 lines, as a prompt to re-read this section.

### Tuning Happens in Config, Not Code

**Default to an explicit table: one row per subject, every field written out, even when every
row currently holds the same value.** These numbers are balance knobs and they change often. A
row that states its amount can be retuned in a diff of digits; a value the code computes can
only be retuned by editing the computation, and the person retuning it is mid-balance-pass, not
mid-refactor.

So a rule must never *be* the config. Deriving which price, which timer or which amount applies
from position in a list, from a name pattern, from a prototype's category or from what some
neighbouring prototype happens to contain reads as clever and is a ceiling: the first subject
that needs a different number has nowhere to say so. The same goes for exemptions — a predicate
only ever excludes what its author anticipated, where a list of exempt names can be appended to
by anyone. And a one-off belongs in the table as a row, not as a special case bolted on after
the loop that processes the others.

A computed value is welcome as the **default a row overrides**, never as the decision itself.
Compute to seed the table, then let the authored value win.

Better still, compute it as a **check**. Where a number genuinely can be solved — the true
embedded cost of a thing, the sum of a distribution — solve it at load and `assert` the authored
number still holds, rather than solving it in place of authoring. That keeps the tuning in the
config and puts the arithmetic to work catching the config going stale, which is the failure mode
authored numbers actually have: a price moves three files away and the old number is quietly
wrong rather than loudly broken. Such a check should name the offending entry, log what it
computed alongside what was authored so the fix can be read straight off the load, and be free to
overestimate in the safe direction — a check that cannot mislead beats one that is exact.

Generate a field outright only when authoring it could **contradict** another authored field —
links that must agree with a position on a ladder, where a hand-written value can point at the
wrong rung or at a prototype that does not exist. Everything else is authored, and a required
field is `assert`ed present rather than defaulted, so a missing one fails the load by name
instead of silently taking a value nobody chose.

The litmus test: could the next balance change be a diff of numbers only? If it needs new Lua,
the config is too thin.

### Adding or Changing a Customer Order

Orders live in the `orders` table in `services/economy/customers/orders.lua`, currently three per band, and each
entry needs:

- `band` / `grade` — where it sits on the ladder. `band` indexes the `bands` table (1 = penny), `grade` counts up from 1 (easiest). A band may hold **any number of grades** as long as they run 1..N with no gaps; nothing in the code assumes three. **The band's top grade is its bridge upward** and is what pays a coin of the next denomination — that is derived as `order.is_top`, never written as `grade == 3`
- `item` — the vanilla item ordered. Finished goods only: never ore, plates, gears or circuits
- `amount` — how many to deliver
- `refund` — a map of denomination key to amount, e.g. `{ penny = 48, silver_coin = 2 }`. This must cover the **full embedded cost** of `amount × item`, tolls included
- `profit` — a plain number, paid in the band's own currency. A design knob like `spawn`, not a consequence of the refund: nothing enforces it. The current table pays a fifth of the refund's line in the band's **own denomination**, rounded up and floored at one coin, so a refund edit is a prompt to re-read this number — but it stays whatever you type
- `spawn` — who walks in when this order is served, as whole percent **indexed by grade**: `spawn[g]` is the chance of a grade-`g` customer of the same band, plus the named key `up` for the drip to the band above. One number per grade the band has, `0` included, summing to `weight_total` (100)

The successor list and the band's licence are **generated** from `band` and `grade` — do not
hand-write them. So is the spoil target: every customer alike leaves a `customer_review`, because
the five minutes are its whole life and there is no lower grade to step down into. So is the timer:
every customer item takes `total_life_seconds`, the one clock the ladder runs on, because a
successor inherits a *percentage* of the timer it replaces and a second timer could only contradict
the first. Retuning the life is a one-number edit at the top of the file. The spawn
percentages are the exception: they are authored per order, because they are a design choice rather
than a consequence of position. Neither is the refund solved at load: author it, and let
`verify_orders.lua` tell you if it is short. To get the number, read the `[cost]` lines the previous
load already logged and round up.

Holding the profit to a fifth of the refund is what makes bands 2, 4 and 5 pay a single coin: their
goods embed **no coin of their own denomination** at all — nothing on the robot path pays a Bond
toll — so a fifth of nothing floors at 1. Giving those bands a real margin means either typing a
bigger number here or tolling something in their recipe tree, which is the choice that ladder is
still waiting on.

Adding or removing a grade means **every `spawn` row in that band changes length**. A stale row
fails the load naming the order, the band and both lengths, so this cannot rot silently — but it is
a whole-band edit, not a one-row one.

Like `currency.lua`, this module owns its prototype names: `require("services.economy.customers.orders")` returns
`{ bands, orders, item = { ["wooden-chest"] = "customer_wooden-chest", ... }, is_customer, entry, weight_total }`.
Ask it for a name rather than concatenating the `customer_` prefix somewhere else, and ask an
order's `is_top` rather than assuming a band ends at grade 3.

Nothing generates locale, so add `item-name.customer_<item>`,
`item-description.customer_<item>` and `recipe-name.customer_<item>_deliver` to
`src/locale/en/hello-world.cfg`, then run `python tools/check/translations.py` to confirm nothing
else is untranslated.

**The penny band is special.** Its orders must be craftable from recipes that are enabled at game
start and need no copper, because copper costs Silver and the only source of Silver is the penny
band's own hard order. Anything else deadlocks a new game.

### Adding or Editing an Icon

Edit the SVG in `art/icons/`, then run `python tools/generate/icons.py --all` to regenerate
`src/graphics/icons/`. Needs `pip install -r tools/setup/requirements.txt` once. Never hand-edit the PNGs —
they are build output and get overwritten.

### Adding a Purchasable Resource

Add an entry to the `resources` table in `services/economy/shop/prices.lua` with `item`, `amount`, `price`, and
`currency` (a field from the `currency` module, e.g. `currency.penny`). Price it in the denomination
of the era that needs it, and grow the lot size with the denomination so unit prices stay in the same
range across the ladder. Changing any price invalidates the authored refunds — `verify_orders.lua` will say
so at the next load.

### Changing What a Recipe Costs to Craft

Every vanilla recipe has a row in the `tolls` table in `services/economy/money/tolls.lua`, and each row
states:

- `recipe` — the vanilla recipe name
- `toll` — the denomination a craft costs (a field from the `currency` module), or `false` for
  free. Omitting it fails the load; there is no default
- `amount` — how many of that coin one craft costs, a whole number of at least one. Written out on
  every tolled row even though every one of them is currently `1`, because it is the knob that
  makes a recipe expensive without moving it up the ladder. A free row carries no `amount`, and one
  that does fails the load — that is what a half-finished edit looks like

Rows are grouped by the technology that unlocks the recipe and ordered by the licence that
technology invoices, so the toll column reads down the file in ladder order. Put a new row in its
technology's group. A recipe unlocked by several technologies is charged the cheapest of them,
because that is the one the player actually paid for.

Two load-time checks keep the table honest, and neither replaces the authored value: any vanilla
recipe with no row fails the load naming it, and every row whose toll no longer matches the licence
it sits behind is logged as a `[tolls] DRIFT:` line. Nothing solves the `amount` — it is a design
knob like `profit` in `orders.lua`. Charging a coin, or charging more of one, invalidates the
authored refunds: `verify_orders.lua` prices the toll at its real amount and fails the load naming
every order that no longer covers it.

Free is a real answer, not an oversight, so say why beside the row. The four reasons already in the
table: smelting (a furnace has one ingredient slot, so tolling one makes the item uncraftable
everywhere — there is an assertion), fluid-only recipes (nowhere to hand a coin to), barrel filling
and emptying (that taxes logistics, not production), and anything no technology unlocks (the player
bought no licence, which is what keeps a new game craftable with no money).

### Currency

Money is not a separate item set: `services/economy/money/currency.lua` **re-skins six of the vanilla science packs
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

Never spell those prototype names out elsewhere — `require("services.economy.money.currency")` returns a
`{ penny = "automation-science-pack", ... }` map, and everything else asks it by denomination.

`military-science-pack` is the seventh pack and is **not** money. It used to be the War Chest, but
every technology priced in it was a combat technology, so removing combat left the denomination with
nothing to buy. It is hidden by `removals/military.lua` the way `coin` is. Don't re-add it to the
ladder — re-pricing the tree onto a seventh tier is a separate economy decision, not a revert.

### Removing enemies and combat

`removals/enemies.lua` and `removals/military.lua` run from `data.lua` like every other service — there
is no `data-final-fixes.lua`. They touch prototypes base declares in its own `data.lua`
(`main_menu_simulations` is filled in there, at `base/data.lua:78-105`), and base's `data-updates.lua`
only generates fluid barrels, so nothing they remove gets added back afterwards.

Enemies are **hidden and stripped of autoplace, not deleted**. That is an engine limit, not a
preference: `'entity' prototype type 'unit' requires at least 1 prototype be defined so save files
can be loaded`, and the same holds for `unit-spawner` and `turret` (whose only vanilla members are
the four worms — the player-built turrets are all subtypes). Nothing spawns and nothing is listed, so
the result is the same in play. Don't attempt the deletion again; it fails at load.

Military items follow the `removals/electricity.lua` trade-off — **recipe deleted, item hidden, item
and entity prototypes kept** — so `car.guns`, `lab.inputs` and the spidertron tips-and-tricks entries
still resolve. Radar is deliberately kept craftable: `satellite` needs five of them.

## Rules

- **Never modify `factorio-data/`** — it's base game reference data
- **Never re-add ore *patches* or electricity** — the entire mod design depends on their absence. Ore
  *items* are a different thing: they are shop goods, and smelting them is how plates are made. What
  stays banned is anything on the map to mine and anything that generates or distributes power. The
  mining drills and the pumpjack are deleted for the same reason — there is nothing to point them at
- **Never re-add enemies or combat content** — there is nothing to defend, so weapons, ammo, turrets, walls and combat vehicles have no function. Most of the tree was already unreachable anyway: `explosives` needs coal and sulfur needs crude oil, and `removals/ore.lua` deletes both. Radar, `modular-armor`/`power-armor` (equipment-grid carriers) and the car are kept on purpose and are not combat content
- **Customer spawn weights are integers, never decimals** — each order's `spawn` row must sum to `weight_total`, and there's a load assertion. Decimals are the trap: `0.1 + 0.2 + 0.7` is `1.0000000000000002` in IEEE doubles, which fails the assertion outright and, worse, leaves a one-ULP gap between two `shared_probability` bands where a delivery emits no successor and silently drains the population. A `0` is fine and means "never spawn this grade" — it is dropped rather than emitted as a zero-width slice
- **A loader's bound side is intrinsic — `loader_type` does not move it** — the side a loader loads/unloads is the tile it faces in `input` mode and the tile behind it in `output`, and both `rotate()` and assigning `loader_type` *preserve* that side by flipping the direction to compensate. So `loader.loader_type = "input"` is not a mode switch: the arrow swings 180° and the loader stays bound to the same neighbour. Writing `direction` is the only lever that moves the binding. Any code changing a loader's mode must set the mode and then write the intended direction back — `services/logistics/loader_binding.lua` documents the measured truth table. Verify such a change by asserting **items actually moved**, never by reading `loader_type` back
- **A loader may only ever be bound to an Import or an Export** — those are the item-heavy machines: a shop lot and a customer order are both bulk deliveries. The Entrance is excluded on purpose, because it crafts one customer at a time and an inserter handles that. Anything else — a chest, a furnace, an assembler — is refused and the item handed back. Do not re-add container support to be helpful: the whitelist is `binding.machines` in `services/logistics/loader_binding.lua`, and every event filter is generated from it. `import` and `export` carry no `fast_replaceable_group` and no `next_upgrade`, so a bound machine cannot be swapped out without a mining event — that absence is load-bearing, not an oversight
- **R on a loader is not a 90° rotation, and needs no handler** — measured: it swings `direction` 180° and flips `loader_type` together, so the bound side never moves and there is no way for a player to rotate a loader sideways. Every state R can produce is one `bind` already accepts, which is why `src/control.lua` deliberately does not register `on_player_rotated_entity`. What R does change is the *function* — a loader becomes an unloader — and that is legitimate
- **One `script.on_event` call per event, ever** — a second registration for the same event *replaces* the first and raises no error, so the concern registered earlier just stops working. `src/control.lua` is the only place that calls `script.on_event`: runtime modules export a handler and it composes them, which is why `logistics/entrance_limit.lua` and `logistics/loader_binding.lua` share one registration per build event with the union of their filters. Filter entries are OR-ed. Add a runtime module the same way — never call `script.on_event` from inside one
- **Never delete `loader-1x2-stub`** — Profitorio's loaders are all `loader-1x1`, which leaves the `loader` type with nothing in it, and the engine refuses to load: `'entity' prototype type 'loader' requires at least 1 prototype be defined so save files can be loaded`. The same rule that keeps the enemies hidden rather than deleted. The stub in `services/logistics/loaders.lua` is that one prototype: hidden in both senses, with its minable result, upgrade target and fast-replace group stripped so nothing can reach it. It looks like dead code and is not
- **Never toll a smelting recipe** — every furnace has `source_inventory_size = 1`, so a smelting recipe cannot take a second ingredient. Adding one raises no error; it just makes the item uncraftable in every furnace in the game. `services/economy/money/tolls.lua` guards this, and the guard must stay
- **Never gate the penny band behind a technology** — its delivery recipes ship `enabled = true` because every technology in the game is downstream of a lab, a lab needs copper, and copper costs Silver that only the penny band can pay. Gating it deadlocks a new game in the first minute
- **The penny band's hard order must keep its Silver bridge** — it is the only source of the first Silver Coin, and without it the `electronics` trigger can never fire and no research is ever possible
- **Only one Entrance may exist** — it's the sole source of customers, so its count is what bounds the whole economy. `services/logistics/entrance_limit.lua` refuses extra placements, registered from `src/control.lua`. Retune throughput via `energy_required` on `customer-new` or the Entrance's `crafting_speed` — both in `services/economy/customers/entrance.lua` — never by allowing more buildings. Those two knobs also set how many customers are alive at once: nothing refreshes a customer's five minutes, so the population settles at the arrival rate times that life, and the review pile grows at the arrival rate too. A satellite launch is the one other place a customer leaves the population: it consumes its Diamond client and emits no successor
- **Money is earned, never crafted** — the science pack recipes are deleted, not hidden, because red and green are craftable from purchased plates and would let the factory print its own money. Never restore a recipe that produces a currency item, and never add an exchange recipe between denominations: what a customer pays is what gates the tier of research you can afford
- **A customer's five minutes never reset** — `orders.lua` gives every customer item one `total_life_seconds` timer, and a delivery's successor carries **no `always_fresh`** so it inherits the spoil percentage of the customer it replaced. That absence is the whole rule: re-adding the flag in `services/economy/customers/export.lua` raises no error and quietly makes customers immortal. Crafting time is inside the five minutes for free — `spoil_tick` is an absolute tick, so the clock runs in an ingredient slot and during a craft. Nothing may hand a customer more time
- **Reviews are a permanent dead end** — `customer_review` has no spoil timer and no recipe, on purpose. Every customer leaves one when its five minutes are up, so the pile grows at the Entrance's rate for the whole save, and one spoiling inside a machine's ingredient slot jams that machine for good. That hazard is the challenge; never add a spoil timer, disposal recipe, or any other way to get rid of reviews
- **Mod internal name is `profitorio`** — referenced in paths, icon prefixes (`__profitorio__`), the symlink, and the `[profitorio]` locale namespace. `dev-mode.ps1` and `zip.py` read it from `src/info.json` rather than hardcoding it, so a rename follows that file
- **Target Factorio version: 2.1** — uses features not available in earlier versions
- **Never depend on Space Age** — base game only; don't reference Space Age prototypes or add it to `dependencies`
- **Never add mod-compatibility code** — no soft dependencies, no `if mods["..."]` branches, no shims for other mods
- **Tuning happens in config, not code** — balance numbers live in an explicit table, one row per subject with every field stated, even when all rows agree today. Never infer an amount or an exemption from a name pattern, a category or a position; a computed value may seed a row or `assert` that one is still correct, but never replace it. Derive outright only where an authored value could contradict another, and `assert` a required field rather than defaulting it. See [Tuning Happens in Config, Not Code](#tuning-happens-in-config-not-code)
- **Comments say what the code cannot** — engine constraints that fail silently, deliberate absences, and short local "why" notes. Never design rationale (that lives here or in `docs/`), never history, never a restatement of the next line. Put the note beside the code it guards rather than in the file header, and prefer an assertion message that both documents and enforces. See [Comments](#comments)
- **Always validate after changes** — run `.\tools\check\prototypes.ps1` after any mod file change to catch prototype errors before committing, and `python tools\check\translations.py` after adding or renaming any prototype
- **Leave the locale report empty** — `translations.py` must print only its `OK:` line, advisories included. Clear every entry one of two ways: write the description in `src/locale/en/hello-world.cfg`, or, when the name already says everything, paste the reported line into `INTENTIONALLY_UNDESCRIBED` in `tools/check/translations.py` under the comment group that explains why (`*` globs, for prototypes generated in a loop). Never suppress a missing *name* — those render as `Unknown key` in game. See [docs/dev-setup.md](docs/dev-setup.md#the-report-must-come-back-empty)
- **Leave the VSCode Problems panel empty** — zero entries, so the next one that appears is worth reading. Fix the code, or, when the bundled Factorio type definitions are wrong (they mark optional fields required — check `factorio-docs/markdown/types/` and vanilla's own usage before believing a warning), suppress that one line with `---@diagnostic disable-next-line: <code>` and a comment saying why. Never disable a rule file-wide or workspace-wide. See [docs/dev-setup.md](docs/dev-setup.md#the-problems-panel-must-stay-empty)

## Dev Setup

See [docs/dev-setup.md](docs/dev-setup.md). Quick start:
1. `.\tools\setup\dev-mode.ps1` — symlink `src/` into Factorio mods
2. `.\tools\run\playtest.ps1` — launch Factorio with dev save

## Further Reading

- [docs/game-design.md](docs/game-design.md) — Vision, Ultracube inspiration, design principles
- [docs/customer-system.md](docs/customer-system.md) — Full customer/currency economy spec with probability trees
- [docs/dev-setup.md](docs/dev-setup.md) — Environment setup, project structure, testing workflow
