# Customer System

> This document describes **mechanics only**. Every concrete number — order amounts, refunds,
> profits, spoil durations, spawn weights, decay targets, resource prices — lives in the `bands` and
> `orders` tables in [`src/services/economy/customers/orders.lua`](../src/services/economy/customers/orders.lua) and the
> `resources` table in [`src/services/economy/shop/prices.lua`](../src/services/economy/shop/prices.lua), which are the single
> source of truth. Read the tables there for current values.

## Overview

The entire economy revolves around customers. Customers are **items that spoil** — an unserved
customer downgrades to a simpler order, and the simplest order leaves a **ghost** behind. Serving a
customer refunds what the goods cost you, pays **profit** on top, and **spawns a new customer**.

Money is the re-skinned science pack ladder — see [Currency](#currency) below. Every denomination
has a source: five bands of customers, one per denomination, and the rocket for the sixth.

## The ladder

Orders are grouped into five **bands**, one per denomination, of three **grades** each — easy,
medium and hard. A band's orders are the finished goods that era of the factory can build, and
serving one pays profit in that band's own currency.

| Band | Licence | Pays |
| --- | --- | --- |
| Penny | none — always enabled | Pennies |
| Silver | The Silver Coin | Silver Coins |
| Banknote | The Banknote | Banknotes |
| Bond | The Bond | Bonds |
| Gold | The Gold Bar | Gold Bars |
| Diamond | the rocket itself | Diamonds |

Orders are for **finished goods only** — never ore, never plates or gears or circuits. What a
customer wants is something you would build anyway, so serving them teaches the factory rather than
taxing it.

### Climbing

Only the **hard** order of a band bridges upward, paying a little of the next denomination on top of
its own profit. That drip is the only route up the ladder, and it is load-bearing rather than
flavour: copper is priced in Silver, the `electronics` trigger wants ten copper plates, a lab needs
circuits, and every technology needs a lab. Remove the drip and a new game cannot research anything,
ever.

### Licences

The four upper bands have their delivery recipes `enabled = false` until the matching technology is
researched. A customer from a band you have no licence for still walks in — you simply cannot serve
them, and they decay back down. The penny band ships enabled, because everything else in the game is
downstream of the first delivery.

This is what the four technologies named after a denomination do now. They lost their science pack
recipe when money stopped being craftable; dealing in that denomination is what they unlock instead.
"The Penny" is the exception and remains genuinely effect-less.

## How it works

### 1. Customer creation

The `customer-new` recipe produces the entry order — a burner inserter customer — from no ingredients.
It is the seed of the economy, and it only runs in an **Entrance** building.

### 1a. The Entrance cap

The customer population is **conserved**: every delivery recipe consumes exactly one customer and
emits exactly one replacement. Spoilage does not remove a customer either — it swaps them for a
lower grade. So the population has a single source, the Entrance, and two sinks:

- the bottom order spoiling into a **ghost**, which no recipe accepts;
- a **satellite launch**, which consumes its Diamond client and emits no successor. Every launch
  permanently costs you one customer.

**Only one Entrance may exist**, enforced at runtime by `src/control.lua`. Placing a second one is
refused: the item is returned to the builder and the running Entrance is left untouched. Blueprint
ghosts are still allowed; the refusal happens when a bot tries to revive one.

To retune customer throughput, change `energy_required` on the `customer-new` recipe or
`crafting_speed` on the Entrance — not the number of buildings.

### 2. Customer items

Each order is an item named `customer_{item}`. They:

- have a **stack size of 1** (cannot be bulk-stored);
- **spoil**, creating the time pressure. The timer lengthens with the band, because the goods take
  longer to build;
- display a composite icon: customer sprite plus the requested item.

### 2a. Order decay

A customer who waits out the timer does not vanish — `spoil_result` steps them down one grade, with
a fresh timer. This keeps an unfinished factory playable: an order you cannot fill yet drifts down
until it reaches something you can serve. You lose the payout, not the customer.

The chain is generated from one uniform rule, so it cannot hold a typo: an order steps down one
grade, and the easiest order of a band steps down to the hardest order of the band below. A gold
band customer therefore walks fifteen steps before it ever litters.

```
gold hard → gold medium → gold easy → bond hard → … → penny medium → penny easy → ghost
```

### 2b. Ghosts

`ghost` is a **terminal token**: a valid decay target that is not an order. It has no order to fill,
so the generator skips it and `customer_ghost` is written by hand in `orders.lua`. It is
deliberately a dead end:

- **no spoil timer** — a ghost never decays into anything;
- **no recipe of any kind** — it cannot be served, sold, or voided.

So ghosts only ever accumulate, one stack slot each, for the rest of the save. Failing to serve a
burner inserter order is not a wash; it leaves permanent litter you have to store or route around.

A ghost that appears inside a machine's ingredient slot **jams that machine for good**, since no
recipe will consume it. That is intended, not a bug. Do not "fix" it by giving ghosts a spoil timer
or a disposal recipe.

### 2c. The rocket client

`customer_diamond` is the second terminal token, and the opposite kind of thing: not litter, but the
most valuable customer in the game. They have no delivery recipe. Instead, `customer_diamond` is an
**ingredient of the vanilla `satellite` recipe** — you build a satellite around the client and launch
it, and the launch pays vanilla's `rocket_launch_products`, 1000 Diamonds.

They spoil like anyone else, back down into the gold band, so the satellite chain has to be buffered
and ready before one arrives. They enter the population only as a successor of the gold band's hard
order.

### 3. Delivery recipes

Each order has a delivery recipe `customer_{item}_deliver`:

- **inputs**: 1 customer item + N of the requested item;
- **outputs**: the refund, the profit, the bridge if this is a hard order, and exactly one new
  customer via weighted probability.

The refund and the profit are frequently the same denomination, and a recipe may not name the same
item twice, so the payout builder accumulates by item before emitting.

### 3a. The refund

A delivery hands back the **full embedded cost** of what was delivered: the raw materials at the
shop's prices, in whichever denomination the shop charges for them, plus every crafting toll buried
anywhere in the item's recipe tree. Then it pays profit on top, as a separate item. Serving is
break-even plus margin, never a loss — what an order really costs you is time and floor space.

The margin is authored too, and unlike the refund nothing solves or checks it — it is a tuning
number, in the same class as the spawn weights. The current table pays a fifth of the refund's line
**in the band's own denomination**, floored at one coin, which is why a band whose goods embed none
of its own coin pays that floor: the Bond band pays one Bond, because nothing on the robot path
carries a Bond toll.

Those numbers are **authored**, not solved at load: literal, diffable, tunable. The risk with
authored numbers is that they rot, so [`src/services/economy/money/cost.lua`](../src/services/economy/money/cost.lua) re-solves
the whole recipe graph on every load and asserts that no refund has fallen behind. Change a shop
price or a toll and that assertion is what tells you.

### 4. Buying resources

Money is spent on raw materials via `buy_{item}` recipes — the only way to acquire base resources,
since ore generation is removed. **Each good is priced in the denomination of the era that needs
it**: wood, iron and stone in Pennies, copper in Silver, coal and crude oil in Banknotes. A resource
is not merely expensive before its era, it is unbuyable. The lot size grows with the denomination so
unit prices stay in the same range across the ladder.

### 5. Money as a crafting ingredient

Making a thing costs a coin. Which coin is **derived**, not listed: a recipe's toll is the highest
denomination charged by the technology that unlocks it, because owning that licence is what let you
build the thing at all. Flat one coin per craft, injected by
[`src/services/economy/money/tolls.lua`](../src/services/economy/money/tolls.lua).

The effect is that every assembler needs a money input line — the bus stops being a material bus and
becomes a material bus plus a money bus. The coin comes back in the refund of whatever you
eventually deliver, so what the toll really costs is **working capital**: a float big enough to keep
the machines running between deliveries.

Four things are exempt, on the principle that you pay to make a *thing*, not to move a fluid:

- **recipes with no item result** — oil processing, cracking, sulfuric acid, lubricant, solid fuel.
  Continuous fluid conversions running thousands of crafts, and an inserter feeding coins into a
  building that otherwise takes only pipes is neither playable nor sensible.
- **the `smelting` category** — not taste, the engine. Every furnace has `source_inventory_size = 1`,
  so a smelting recipe physically cannot take a second ingredient. Tolling `steel-plate` would raise
  no error; it would quietly make steel uncraftable in every furnace in the game.
- **barrel fill and empty recipes** — a coin per unbarrelling taxes logistics rather than production
  and can strand the oil chain.
- **recipes with no unlocking technology, or unlocked only by a trigger technology** — which have no
  invoice to read a denomination off. This is what keeps the bootstrap alive: a new game has no money
  at all, so the burner inserter, the transport belt, the stone furnace and the smelting recipes stay
  free. It falls out of the rule rather than being special-cased.

## The bootstrap

This sequence is what every constraint above exists to protect. Verify it after any change to the
penny band, the shop, or the toll exemptions:

```
hand-mined trees (free, finite, not automatable), plus 10 burner inserters in the starter kit
  → burner inserters (10 wood each) → serve the entry order → Pennies
  → buy wood, and stone for assembling machines → serve the penny middle order → Pennies
  → buy iron ore → smelt → transport belts
  → serve the penny hard order → Pennies + the first SILVER COIN
  → buy copper ore with Silver → craft 10 copper plate
  → the `electronics` trigger fires → circuits, lab, inserter
  → craft a lab → The Penny fires → research opens
  → The Silver Coin → the silver band unlocks → … → The Gold Bar → the rocket
```

## Currency

There is no separate money item. [`src/services/economy/money/currency.lua`](../src/services/economy/money/currency.lua)
**re-skins six of the vanilla science packs in place** into a ladder of denominations:

| Prototype | Denomination |
| --- | --- |
| `automation-science-pack` | Penny |
| `logistic-science-pack` | Silver Coin |
| `chemical-science-pack` | Banknote |
| `production-science-pack` | Bond |
| `utility-science-pack` | Gold Bar |
| `space-science-pack` | Diamond |

Re-skinning rather than adding new items is what makes research cost money for free: `lab.inputs`
and every technology's `unit.ingredients` already name these prototypes, so **a technology's research
cost is now its price**, at vanilla numbers — a technology that wanted 100 red packs wants 100
Pennies. The lab is renamed the **Investment Office**; it already runs without power, since
`removals/electricity.lua` voids its energy source.

The Penny replaced the base game `coin`, which is hidden again.

### The seventh pack: why there is no War Chest

`military-science-pack` was the War Chest, between the Silver Coin and the Banknote. It is not money
any more. Every one of the 62 technologies that priced research in it was a combat technology — damage
and shooting-speed ladders, turrets, armor, artillery, the military tiers — so when combat left the
mod (see [game-design.md](game-design.md#why-this-creates-a-new-factory-design)) the denomination had
nothing left to buy. A currency the player can earn and never spend is worse than one tier fewer, so
the ladder is six tiers and `removals/military.lua` hides the pack the way `coin` is hidden.

Restoring it would mean re-pricing existing non-combat technologies onto a seventh tier. That is an
economy design decision, not a revert.

### Money is earned, never crafted

The five remaining vanilla pack recipes are **deleted**, not hidden. Red is 1 copper plate + 1 iron gear wheel
and green is an inserter + a belt, all craftable from purchased plates — leaving those recipes in
would let the factory print its own money and the customer economy would stop mattering. There is
also **no exchange between denominations**, in either direction. Both rules exist to keep one
property true: the denomination a customer pays in is what gates the tier of research you can afford.

### Bond and Gold are partly parallel

Research prices are left exactly at vanilla, and vanilla charges Gold for six technologies while
skipping Bond entirely — `logistic-system`, `power-armor-mk2`, `fission-reactor-equipment`,
`personal-roboport-mk2-equipment` and two worker-robot-speed levels. So the ladder is not strictly
sequential at the top, and the band design tolerates that rather than working around it. Diamond has
one sink in the whole tree, the infinite `worker-robots-speed-6`, which one satellite launch funds
roughly one level of.

## Spawn weights

When a customer is served, a new customer spawns based on `shared_probability` ranges. Each order
declares its successors as **integer weights** over a fixed total, and the assertion at load compares
integers.

That is not a nicety. A decimal three-way split does not sum to 1.0 in IEEE doubles — `0.1 + 0.2 +
0.7` is `1.0000000000000002` — which trips the assertion outright, and worse, leaves a one-ULP gap
between two `shared_probability` bands where a delivery produces no successor at all and silently
drains the population. Integers cannot do that: band *k+1*'s `min` is built from the same numerator
as band *k*'s `max`.

The graph itself is generated, not authored. Serving pushes up, spoiling pulls down: an order mostly
brings more work at its own level, and only the hard order of a band can bring in a customer from the
band above. Weights are clamped by folding rather than dropping, so every row sums exactly.

## Key Factorio 2.1 features used

All of these are **base game 2.1 features** — none require the Space Age expansion, and the mod
does not use Space Age content. It is also not compatible with other mods; see
[game-design.md](game-design.md#scope-and-non-goals).

- **`spoil_ticks`** — makes customer items expire, creating time pressure
- **`spoil_result`** — expiring customers step down a grade instead of disappearing, and the bottom
  order becomes a permanent ghost
- **`shared_probability`** — mutually exclusive random outputs for spawning exactly one new customer per delivery
- **`always_fresh = true`** — newly spawned customers start with full spoil timer
- **`rocket_launch_products`** — vanilla's satellite payout, which is the only source of Diamonds
- **`spoiling_required = true`** in info.json — tells Factorio this mod requires the spoilage system
