# FluidProductPrototype

_type_

**Inherits from:** [ProductPrototypeBase](../types/ProductPrototypeBase.md)

A fluid product definition.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [FluidAmount](../types/FluidAmount.md) | yes |
| [amount_max](#amount-max) | [FluidAmount](../types/FluidAmount.md) | yes |
| [amount_min](#amount-min) | [FluidAmount](../types/FluidAmount.md) | yes |
| [fluidbox_index](#fluidbox-index) | [uint32](../types/uint32.md) | yes |
| [fluidbox_multiplier](#fluidbox-multiplier) | [uint8](../types/uint8.md) | yes |
| [ignored_by_productivity](#ignored-by-productivity) | [FluidAmount](../types/FluidAmount.md) | yes |
| [ignored_by_stats](#ignored-by-stats) | [FluidAmount](../types/FluidAmount.md) | yes |
| [name](#name) | [FluidID](../types/FluidID.md) |  |
| [optional_fluidbox_indexes](#optional-fluidbox-indexes) | array[[uint32](../types/uint32.md)] | yes |
| [temperature](#temperature) | [float](../types/float.md) | yes |
| [type](#type) | `"fluid"` |  |

### amount

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_

Can not be `< 0`.

### amount_max

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_

Only loaded, and mandatory if `amount` is not defined.

If set to a number that is less than `amount_min`, the game will use `amount_min` instead.

### amount_min

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_

Only loaded, and mandatory if `amount` is not defined.

Can not be `< 0`.

### fluidbox_index

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Used to specify which [CraftingMachinePrototype::fluid_boxes](../prototypes/CraftingMachinePrototype.md#fluid-boxes) this product should use. It will use this one fluidbox. The index is 1-based and separate for input and output fluidboxes.

### fluidbox_multiplier

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

Used to set crafting machine fluidbox volumes. Must be at least 1.

### ignored_by_productivity

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_ · **Default:** `Value of `ignored_by_stats``

Amount that should be deducted from any productivity induced bonus crafts.

This value can safely be set larger than the maximum expected craft amount, any excess is ignored.

This value is ignored when [allow_productivity](../prototypes/RecipePrototype.md#allow-productivity) is `false`.

### ignored_by_stats

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount that should not be included in the fluid production statistics, typically with a matching ingredient having the same amount set as [ignored_by_stats](../types/FluidIngredientPrototype.md#ignored-by-stats).

If `ignored_by_stats` is larger than the amount crafted (for instance due to probability) it will instead show as consumed.

Products with `ignored_by_stats` defined will not be set as recipe through the circuit network when using the product's fluid-signal.

### name

**Type:** [FluidID](../types/FluidID.md)

The name of a [FluidPrototype](../prototypes/FluidPrototype.md).

### optional_fluidbox_indexes

**Type:** array[[uint32](../types/uint32.md)] · _optional_

Additional fluid boxes that will be also used by this fluid product. If a machine does not have a fluid box with that index, then this index will be silently skipped without making recipe uncraftable.

Only loaded if `fluidbox_index` is defined.

### temperature

**Type:** [float](../types/float.md) · _optional_

The temperature of the fluid product.

### type

**Type:** `"fluid"`
