# EntityPrototypeFilter

_concept_

**Definition:** table{filter, invert, mode}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [filter](#filter) | `"flying-robot"` ∣ `"robot-with-logistics-interface"` ∣ `"rail"` ∣ `"ghost"` ∣ `"explosion"` ∣ `"vehicle"` ∣ `"crafting-machine"` ∣ `"rolling-stock"` ∣ `"turret"` ∣ `"transport-belt-connectable"` ∣ `"wall-connectable"` ∣ `"buildable"` ∣ `"placable-in-editor"` ∣ `"clonable"` ∣ `"selectable"` ∣ `"hidden"` ∣ `"entity-with-health"` ∣ `"building"` ∣ `"fast-replaceable"` ∣ `"uses-direction"` ∣ `"minable"` ∣ `"circuit-connectable"` ∣ `"autoplace"` ∣ `"blueprintable"` ∣ `"item-to-place"` ∣ `"name"` ∣ `"type"` ∣ `"collision-mask"` ∣ `"flag"` ∣ `"selection-priority"` ∣ `"emissions-per-second"` ∣ `"crafting-category"` |  |
| [invert](#invert) | [boolean](../concepts/boolean.md) | yes |
| [mode](#mode) | `"or"` ∣ `"and"` | yes |

### filter

**Type:** `"flying-robot"` ∣ `"robot-with-logistics-interface"` ∣ `"rail"` ∣ `"ghost"` ∣ `"explosion"` ∣ `"vehicle"` ∣ `"crafting-machine"` ∣ `"rolling-stock"` ∣ `"turret"` ∣ `"transport-belt-connectable"` ∣ `"wall-connectable"` ∣ `"buildable"` ∣ `"placable-in-editor"` ∣ `"clonable"` ∣ `"selectable"` ∣ `"hidden"` ∣ `"entity-with-health"` ∣ `"building"` ∣ `"fast-replaceable"` ∣ `"uses-direction"` ∣ `"minable"` ∣ `"circuit-connectable"` ∣ `"autoplace"` ∣ `"blueprintable"` ∣ `"item-to-place"` ∣ `"name"` ∣ `"type"` ∣ `"collision-mask"` ∣ `"flag"` ∣ `"selection-priority"` ∣ `"emissions-per-second"` ∣ `"crafting-category"`

The condition to filter on.

### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

Inverts the condition. Default is `false`.

### mode

**Type:** `"or"` ∣ `"and"` · _optional_

How to combine this with the previous filter. Defaults to `"or"`. When evaluating the filters, `"and"` has higher precedence than `"or"`.
