# ItemProductPrototype

_type_

**Inherits from:** [ProductPrototypeBase](../types/ProductPrototypeBase.md)

An item product definition.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [affected_by_quality](#affected-by-quality) | [boolean](../types/boolean.md) | yes |
| [always_fresh](#always-fresh) | [boolean](../types/boolean.md) | yes |
| [amount](#amount) | [uint16](../types/uint16.md) | yes |
| [amount_max](#amount-max) | [uint16](../types/uint16.md) | yes |
| [amount_min](#amount-min) | [uint16](../types/uint16.md) | yes |
| [extra_count_fraction](#extra-count-fraction) | [float](../types/float.md) | yes |
| [ignored_by_productivity](#ignored-by-productivity) | [uint16](../types/uint16.md) | yes |
| [ignored_by_stats](#ignored-by-stats) | [uint16](../types/uint16.md) | yes |
| [name](#name) | [ItemID](../types/ItemID.md) |  |
| [percent_spoiled](#percent-spoiled) | [float](../types/float.md) | yes |
| [quality_change](#quality-change) | [int8](../types/int8.md) | yes |
| [quality_max](#quality-max) | [QualityID](../types/QualityID.md) | yes |
| [quality_min](#quality-min) | [QualityID](../types/QualityID.md) | yes |
| [reset_freshness_on_craft](#reset-freshness-on-craft) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"item"` |  |

### affected_by_quality

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether quality roll affects quality of products given. If set to `false`, result of a quality roll will be ignored and an item of quality based on quality of selected recipe will be given.

Note: This may not work as expected outside of recipes (e.g. in mining drills).

### always_fresh

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set to true, the item produced will be produced fresh (using percent_spoiled) even when ingredients were spoiled.

Note: This may not work as expected outside of recipes (e.g. in mining drills).

### amount

**Type:** [uint16](../types/uint16.md) · _optional_

### amount_max

**Type:** [uint16](../types/uint16.md) · _optional_

Only loaded, and mandatory if `amount` is not defined.

If set to a number that is less than `amount_min`, the game will use `amount_min` instead.

### amount_min

**Type:** [uint16](../types/uint16.md) · _optional_

Only loaded, and mandatory if `amount` is not defined.

### extra_count_fraction

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Probability that a craft will yield one additional product. Also applies to bonus crafts caused by productivity.

### ignored_by_productivity

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `Value of `ignored_by_stats``

Amount that should be deducted from any productivity induced bonus crafts.

This value can safely be set larger than the maximum expected craft amount, any excess is ignored.

This value is ignored when [allow_productivity](../prototypes/RecipePrototype.md#allow-productivity) is `false`.

### ignored_by_stats

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount that should not be included in the item production statistics, typically with a matching ingredient having the same amount set as [ignored_by_stats](../types/ItemIngredientPrototype.md#ignored-by-stats).

If `ignored_by_stats` is larger than the amount crafted (for instance due to probability) it will instead show as consumed.

Products with `ignored_by_stats` defined will not be set as recipe through the circuit network when using the product's item-signal.

### name

**Type:** [ItemID](../types/ItemID.md)

The name of an [ItemPrototype](../prototypes/ItemPrototype.md).

### percent_spoiled

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be >= `0` and < `1`.

### quality_change

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount of quality levels up or down this product will be adjusted.

This is the difference between the quality of the recipe and the quality of the product. For a vanilla example, when epic is selected for recipe quality, a product with quality change `1` would be legendary quality, not epic.

Note: This may not work as expected outside of recipes (e.g. in mining drills).

### quality_max

**Type:** [QualityID](../types/QualityID.md) · _optional_

Highest possible quality of item that will be given. If not provided but `quality_min` is given, it will be set to the highest quality from a quality chain to which `quality_min` belongs. Must belong to the same quality chain as `quality_min` and be equal or better, meaning later in the chain when following [QualityPrototype::next](../prototypes/QualityPrototype.md#next).

Note: If this is used outside of recipes (e.g. by mining drills), setting this to a custom quality chain will discard the quality roll.

### quality_min

**Type:** [QualityID](../types/QualityID.md) · _optional_

Lowest possible quality of item that will be given. If not provided but `quality_max` is given, it will be set to the lowest quality from a quality chain to which `quality_max` belongs. When set, if the recipe would produce items from a different quality chain (due to quality of the recipe or quality roll), `quality_min` will be used for the quality instead.

Note: If this is used outside of recipes (e.g. by mining drills), setting this to a custom quality chain will discard the quality roll.

### reset_freshness_on_craft

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set to true, if the recipe successfully finishes crafting without spoiling, the result is produced fresh (non-spoiled).

Note: This may not work as expected outside of recipes (e.g. in mining drills).

### type

**Type:** `"item"`
