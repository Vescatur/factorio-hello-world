# Customer System

## Overview

The entire economy revolves around customers. Customers are **items that spoil** — if not served in time, they disappear. Serving a customer yields **coins** (the sole currency) and **spawns new customers** based on weighted probabilities.

## How It Works

### 1. Customer Creation

A "New Customer" recipe produces a `customer_wood` item (the entry-point customer). This takes 60 seconds to craft and requires no ingredients — it's the seed of the economy.

### 2. Customer Items

Each customer type is an item named `customer_{item_to_deliver}`. They:
- Have a **stack size of 1** (cannot be bulk-stored)
- **Spoil in 10 seconds** (`spoil_fast = 10 * 60` ticks at 60 ticks/sec)
- Display a composite icon: customer sprite + the requested item overlay

### 3. Delivery Recipes

Each customer type has a delivery recipe `customer_{item}_deliver` that:
- **Inputs**: 1 customer item + N of the requested item
- **Outputs**: coins (guaranteed + bonus chance) + new customer(s) via weighted probability

### 4. Buying Resources

Coins can be spent on raw materials via `coin_to_{item}` recipes:
- 1 coin → 1 wood
- 1 coin → 1 iron-plate
- 1 coin → 1 copper-plate

## Customer Table

| Customer Type | Items Required | Coin Reward | Bonus Reward | Bonus Chance |
|---|---|---|---|---|
| wood | 10 wood | 10 | — | — |
| iron-plate | 10 iron-plate | 10 | 1 | 20% |
| copper-plate | 20 copper-plate | 10 | 1 | 20% |
| iron-gear-wheel | 20 iron-gear-wheel | 10 | 3 | 100% |
| copper-cable | 60 copper-cable | 10 | 3 | 100% |
| electronic-circuit | 100 electronic-circuit | 500 | 100 | 100% |

## Spawn Probabilities

When a customer is served, new customers spawn based on `shared_probability` ranges. Each customer type defines which new customers it can spawn and with what probability. **Probabilities must sum to exactly 1.0** (enforced by an assertion).

### Progression Flow

```
wood customer (entry point)
├── 50% → wood customer
└── 50% → iron-plate customer

iron-plate customer
├── 25% → wood
├── 25% → iron-plate
├── 25% → copper-plate
└── 25% → iron-gear-wheel

copper-plate customer
├── 25% → wood
├── 25% → iron-plate
├── 25% → copper-plate
└── 25% → copper-cable

iron-gear-wheel customer
├── 20% → wood
├── 20% → iron-plate
├── 25% → iron-gear-wheel
├── 25% → copper-cable
└── 10% → electronic-circuit

copper-cable customer
├── 20% → wood
├── 20% → copper-plate
├── 25% → iron-gear-wheel
├── 25% → copper-cable
└── 10% → electronic-circuit

electronic-circuit customer
├── 10% → wood
├── 10% → iron-plate
├── 10% → copper-plate
├── 20% → iron-gear-wheel
├── 20% → copper-cable
└── 30% → electronic-circuit
```

## Key Factorio 2.1 Features Used

All of these are **base game 2.1 features** — none require the Space Age expansion, and the mod
does not use Space Age content. It is also not compatible with other mods; see
[game-design.md](game-design.md#scope-and-non-goals).

- **`spoil_ticks`** — makes customer items expire, creating time pressure
- **`shared_probability`** — mutually exclusive random outputs for spawning exactly one new customer type per delivery
- **`independent_probability`** — bonus coin rewards with a percentage chance
- **`always_fresh = true`** — newly spawned customers start with full spoil timer
- **`spoiling_required = true`** in info.json — tells Factorio this mod requires the spoilage system
