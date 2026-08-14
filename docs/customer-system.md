# Customer System

> This document describes **mechanics only**. Every concrete number — item amounts, payouts and
> rewards, spoil duration, spawn probabilities, decay targets, resource prices — lives in the
> `customers` and `resources` tables in [`src/services/recipes.lua`](../src/services/recipes.lua),
> which is the single source of truth. Read the tables there for current values.

## Overview

The entire economy revolves around customers. Customers are **items that spoil** — an unserved
customer downgrades to a simpler order, and the simplest order leaves a **ghost** behind. Serving a
customer yields **money** and **spawns new customers** based on weighted probabilities.

Money is the re-skinned science pack ladder — see [Currency](#currency) below. Customers currently
all pay in **Pennies**, the bottom denomination.

## How It Works

### 1. Customer Creation

The `customer-new` recipe produces the entry-tier customer item from no ingredients — it's the seed
of the economy. It only runs in an **Entrance** building.

### 1a. The Entrance Cap

The customer population is **conserved**: every delivery recipe consumes exactly one customer and
emits exactly one replacement (spawn probabilities sum to 1.0). Spoilage does not remove a customer
either — it swaps them for a lower tier. So the population has a single source — the Entrance — and
a single sink: the bottom tier spoiling into a ghost, which no recipe accepts. That makes the
Entrance count the one dial controlling how many customers exist.

**Only one Entrance may exist**, enforced at runtime by `src/control.lua`. Placing a second one is
refused: the item is returned to the builder and the running Entrance is left untouched. Blueprint
ghosts are still allowed; the refusal happens when a bot tries to revive one.

To retune customer throughput, change `energy_required` on the `customer-new` recipe or
`crafting_speed` on the Entrance — not the number of buildings.

### 2. Customer Items

Each customer type is an item named `customer_{item_to_deliver}`. They:
- Have a **stack size of 1** (cannot be bulk-stored)
- **Spoil** after `spoil_fast` ticks, creating the time pressure
- Display a composite icon: customer sprite + the requested item overlay

### 2a. Order Decay

A customer who waits out the timer doesn't vanish — `spoil_result` turns them into a customer for a
simpler item one tier down, with a fresh timer. This keeps an unfinished factory playable: an order
you can't fill yet drifts down the tiers until it reaches something you can serve. You lose the
higher payout, not the customer.

Set per customer with the `spoils_into` field (the bare item name, not the `customer_` prefix). The
value is asserted at load time to name either a real customer type or a terminal token (see below).
Omitting it would make that tier spoil away to nothing; no tier does that today.

The chain runs down to the bottom tier and stops at a ghost:

```
electronic-circuit → copper-cable → copper-plate → wood → ghost   (permanent)
iron-gear-wheel    → iron-plate   → wood         → ghost
```

### 2b. Ghosts

`ghost` is a **terminal token**: a valid `spoils_into` target that is not a customer. It has no order
to fill, so the generation loop skips it and `customer_ghost` is written by hand in
`recipes.lua`. It is deliberately a dead end:

- **No spoil timer** — a ghost never decays into anything.
- **No recipe of any kind** — it cannot be served, sold, or voided.

So ghosts only ever accumulate, one stack slot each, for the rest of the save. Failing to serve
wood is not a wash; it leaves permanent litter you have to store or route around.

A ghost that appears inside a machine's ingredient slot **jams that machine for good**, since no
recipe will consume it. That is intended, not a bug: designing the factory so wood customers never
time out mid-slot is part of the challenge. Do not "fix" it by giving ghosts a spoil timer or a
disposal recipe.

To add another terminal token, put it in the `terminal_tokens` set in `recipes.lua` and hand-write
its item prototype.

### 3. Delivery Recipes

Each customer type has a delivery recipe `customer_{item}_deliver` that:
- **Inputs**: 1 customer item + N of the requested item
- **Outputs**: money (guaranteed + bonus chance) + exactly one new customer via weighted probability

### 4. Buying Resources

Money can be spent on raw materials via `buy_{item}` recipes — the only way to acquire base
resources, since ore generation is removed. Which items are purchasable, at what price and in which
denomination is the `resources` table.

## Currency

There is no separate money item. [`src/services/currency.lua`](../src/services/currency.lua)
**re-skins the seven vanilla science packs in place** into a ladder of denominations:

| Prototype | Denomination |
| --- | --- |
| `automation-science-pack` | Penny |
| `logistic-science-pack` | Silver Coin |
| `military-science-pack` | War Chest |
| `chemical-science-pack` | Banknote |
| `production-science-pack` | Bond |
| `utility-science-pack` | Gold Bar |
| `space-science-pack` | Diamond |

Re-skinning rather than adding new items is what makes research cost money for free: `lab.inputs`
and every technology's `unit.ingredients` already name these prototypes, so **a technology's research
cost is now its price**, at vanilla numbers — a technology that wanted 100 red packs wants 100
Pennies. The lab is renamed the **Investment Office**; it already runs without power, since
`remove_electricity.lua` voids its energy source.

The Penny replaced the base game `coin`, which is hidden again.

### Money is earned, never crafted

The six vanilla pack recipes are **deleted**, not hidden. Red is 1 copper plate + 1 iron gear wheel
and green is an inserter + a belt, all craftable from purchased plates — leaving those recipes in
would let the factory print its own money and the customer economy would stop mattering. There is
also **no exchange between denominations**, in either direction. Both rules exist to keep one
property true: the denomination a customer pays in is what gates the tier of research you can afford.

The six technologies named after a pack now have no effects at all. They stay in the tree as
prerequisites and are renamed after their denomination ("The Banknote"), reading as the licence to
deal at that tier.

### Reachability

Only Pennies have a source today, so only Penny-priced research is fundable. The upper denominations
are earned by serving the higher customer tiers, which are not built yet. `space-science-pack`
(Diamond) has no recipe in vanilla — it comes from launching a satellite, which this mod cannot
reach — so it is currency with no source at all until one is designed.

## Spawn Probabilities

When a customer is served, a new customer spawns based on `shared_probability` ranges. Each customer
type declares which new customers it can spawn and with what probability, in its `new_customers`
list. **Probabilities must sum to exactly 1.0** — enforced by an assertion at load, so getting this
wrong crashes on startup rather than silently leaking or duplicating customers.

## Key Factorio 2.1 Features Used

All of these are **base game 2.1 features** — none require the Space Age expansion, and the mod
does not use Space Age content. It is also not compatible with other mods; see
[game-design.md](game-design.md#scope-and-non-goals).

- **`spoil_ticks`** — makes customer items expire, creating time pressure
- **`spoil_result`** — expiring customers become a lower-tier customer instead of disappearing, and
  the bottom tier becomes a permanent ghost
- **`shared_probability`** — mutually exclusive random outputs for spawning exactly one new customer type per delivery
- **`independent_probability`** — bonus coin rewards with a percentage chance
- **`always_fresh = true`** — newly spawned customers start with full spoil timer
- **`spoiling_required = true`** in info.json — tells Factorio this mod requires the spoilage system
