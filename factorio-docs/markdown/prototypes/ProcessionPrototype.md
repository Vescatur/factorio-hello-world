# ProcessionPrototype

_prototype_

**Prototype type string:** `type = "procession"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Describes the duration and visuals of a departure, arrival or an intermezzo while traveling between surfaces. Usually provided inside of a [ProcessionSet](../types/ProcessionSet.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ground_timeline](#ground-timeline) | [ProcessionTimeline](../types/ProcessionTimeline.md) | yes |
| [procession_style](#procession-style) | [uint32](../types/uint32.md) ∣ array[[uint32](../types/uint32.md)] |  |
| [timeline](#timeline) | [ProcessionTimeline](../types/ProcessionTimeline.md) |  |
| [usage](#usage) | `"departure"` ∣ `"arrival"` ∣ `"intermezzo"` |  |

### ground_timeline

**Type:** [ProcessionTimeline](../types/ProcessionTimeline.md) · _optional_

Used alternatively when landing to ground.

### procession_style

**Type:** [uint32](../types/uint32.md) ∣ array[[uint32](../types/uint32.md)]

Indexes used to match transitions from different surfaces together. Only a single intermezzo of a given procession_style may exist.

**Example:**

```
Going from Surface A -> Surface B
Surface A has departures: [1, 3, 4]
Surface B has arrivals:   [2, 3, 5]
This trip will select:
Departure 3 -> (Intermezzo 3) -> Arrival 3
```

### timeline

**Type:** [ProcessionTimeline](../types/ProcessionTimeline.md)

Used when leaving or arriving to a station.

### usage

**Type:** `"departure"` ∣ `"arrival"` ∣ `"intermezzo"`

Arrival and Departure are to be referenced by name. All intermezzos are collected during loading and filled in by `procession_style`.
