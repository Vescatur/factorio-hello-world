# Game Design

## Vision

Create a Factorio total-overhaul mod that replaces the traditional mine-and-expand gameplay loop with a **constraint-based tycoon economy**. Instead of mining ores and building ever-larger production lines, players earn resources by serving customers — turning Factorio into a logistics-optimization puzzle.

## Scope and Non-Goals

Two constraints are deliberate and permanent:

### Base game only — no Space Age

The mod targets **vanilla Factorio 2.1** and will **not** use the Space Age expansion. No Space Age
prototypes, items, planets, surfaces, or quality mechanics are referenced, and `src/info.json`
declares a dependency on `base` only. Everything the mod needs — spoilage,
`shared_probability`, `independent_probability` — is available in the 2.1 base game. Players do not
need to own Space Age to play, and features that would require it are out of scope.

### No compatibility with other mods

The mod is **not intended to be compatible with any other mod** and no effort will be made to
support running alongside one. This is a direct consequence of the design: a total overhaul that
deletes ore generation and all electric infrastructure invalidates the assumptions nearly every
other mod is built on. Attempting to accommodate them would either water down the constraints that
make the mod interesting or bloat the codebase with conditional handling.

Concretely, this means:

- No soft/optional dependencies in `info.json`
- No `if mods["other-mod"]` branches or compatibility shims in the data stage
- Breakage when loaded with other mods is expected and will not be treated as a bug

## Inspiration: Ultracube

The mod [Ultracube: Age of Cube](https://mods.factorio.com/mod/Ultracube) demonstrates how a single constraint (one irreplaceable cube) fundamentally changes Factorio gameplay:

- **Optimization over expansion** — you can't just copy-paste more production; you must route the cube efficiently
- **Dynamic factories** — different sections activate at different times based on where the cube is
- **Theoretical ceilings** — at each tech level, there's a maximum output you approach through clever design, not brute force
- **Logistics as the core puzzle** — complexity comes from routing and timing, not long recipe chains

## Our Approach: Tycoon Mechanics

We borrow the **mechanical philosophy** of restaurant tycoon games, not their theme:

1. **Customers arrive** — they are items that spoil quickly, creating time pressure
2. **Customers request specific goods** — wood, iron plates, circuits, etc.
3. **Delivering earns money** — the only way to acquire raw materials
4. **Serving customers spawns new customers** — with weighted probabilities that gate progression
5. **Research is what you spend profit on** — the science packs are re-skinned into currency denominations, so a technology's research cost is literally its price

### Why This Creates a New Factory Design

- **No ores on the map** — all resource generation is removed. You cannot mine anything.
- **No electricity** — all electric infrastructure recipes are removed; machines run for free (void energy). Power management is not a concern.
- **Money is the bottleneck** — every raw material and every technology has a price, paid only out of customer deliveries. See [customer-system.md](customer-system.md#currency) for the denomination ladder.
- **Spoilage creates urgency** — customers expire in seconds, so your factory must be responsive, not just high-throughput
- **Customer chains create progression** — serving a wood customer might spawn an iron-plate customer, which might spawn a circuits customer. The probability weights control how fast you unlock higher tiers.

### Design Principles

1. **Constraint breeds creativity** — removing ores and electricity forces players to think about their factory differently
2. **Optimize, don't expand** — the money economy naturally limits how fast you can grow; efficiency matters more than scale
3. **Time pressure over throughput** — spoiling customers mean you need responsive logistics, not just massive belts
4. **Emergent complexity** — simple rules (serve customer → get money + new customers) create complex optimization problems
5. **Use vanilla mechanics** — leverage Factorio 2.1's spoilage system and probability-based recipe outputs rather than custom scripting where possible
