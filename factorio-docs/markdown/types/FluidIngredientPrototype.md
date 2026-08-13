# FluidIngredientPrototype

_type_

A fluid ingredient definition.

**Example:**

```
{type="fluid", name="water", amount=50}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [FluidAmount](../types/FluidAmount.md) |  |
| [fluidbox_index](#fluidbox-index) | [uint32](../types/uint32.md) | yes |
| [fluidbox_multiplier](#fluidbox-multiplier) | [uint8](../types/uint8.md) | yes |
| [ignored_by_stats](#ignored-by-stats) | [FluidAmount](../types/FluidAmount.md) | yes |
| [maximum_temperature](#maximum-temperature) | [float](../types/float.md) | yes |
| [minimum_temperature](#minimum-temperature) | [float](../types/float.md) | yes |
| [name](#name) | [FluidID](../types/FluidID.md) |  |
| [optional_fluidbox_indexes](#optional-fluidbox-indexes) | array[[uint32](../types/uint32.md)] | yes |
| [temperature](#temperature) | [float](../types/float.md) | yes |
| [type](#type) | `"fluid"` |  |

### amount

**Type:** [FluidAmount](../types/FluidAmount.md)

Can not be `<= 0`.

### fluidbox_index

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to specify which [CraftingMachinePrototype::fluid_boxes](../prototypes/CraftingMachinePrototype.md#fluid-boxes) this ingredient should use. It will use this one fluidbox. The index is 1-based and separate for input and output fluidboxes.

### fluidbox_multiplier

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

Used to set crafting machine fluidbox volumes. Must be at least 1.

### ignored_by_stats

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount that should not be included in the consumption statistics, typically with a matching product having the same amount set as [ignored_by_stats](../types/FluidProductPrototype.md#ignored-by-stats).

### maximum_temperature

**Type:** [float](../types/float.md) · _optional_

If `temperature` is not set, this sets the expected maximum temperature of the fluid ingredient.

### minimum_temperature

**Type:** [float](../types/float.md) · _optional_

If `temperature` is not set, this sets the expected minimum temperature of the fluid ingredient.

### name

**Type:** [FluidID](../types/FluidID.md)

The name of a [FluidPrototype](../prototypes/FluidPrototype.md).

### optional_fluidbox_indexes

**Type:** array[[uint32](../types/uint32.md)] · _optional_

Additional fluid boxes that will be also used by this fluid ingredient. If a machine does not have a fluid box with that index, then this index will be silently skipped without making recipe uncraftable.

Only loaded if `fluidbox_index` is defined.

### temperature

**Type:** [float](../types/float.md) · _optional_

Sets the expected temperature of the fluid ingredient.

### type

**Type:** `"fluid"`
