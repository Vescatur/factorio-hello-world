# ItemIngredientPrototype

_type_

An item ingredient definition.

**Examples:**

```
{type="item", name="steel-plate", amount=8}
```

```
{type="item", name="iron-plate", amount=12}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [uint16](../types/uint16.md) |  |
| [ignored_by_stats](#ignored-by-stats) | [uint16](../types/uint16.md) | yes |
| [name](#name) | [ItemID](../types/ItemID.md) |  |
| [quality_change](#quality-change) | [int8](../types/int8.md) | yes |
| [quality_max](#quality-max) | [QualityID](../types/QualityID.md) | yes |
| [quality_min](#quality-min) | [QualityID](../types/QualityID.md) | yes |
| [spoil_weight](#spoil-weight) | [float](../types/float.md) | yes |
| [type](#type) | `"item"` |  |

### amount

**Type:** [uint16](../types/uint16.md)

Cannot be `0`.

### ignored_by_stats

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount that should not be included in the consumption statistics, typically with a matching product having the same amount set as [ignored_by_stats](../types/ItemProductPrototype.md#ignored-by-stats).

### name

**Type:** [ItemID](../types/ItemID.md)

### quality_change

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount of quality levels up or down this ingredient will be adjusted.

This is the difference between the quality of the recipe and the quality of the ingredient. For a vanilla example, when legendary is selected for recipe quality, an ingredient with quality change `-1` would need to be epic quality, not legendary.

If `quality_min` is equal to `quality_max`, this is silently set to `0` as it does not make sense to define a quality jump when ingredient quality is fixed to one value for all qualities of recipe.

### quality_max

**Type:** [QualityID](../types/QualityID.md) · _optional_

Highest possible quality of ingredient that will be accepted. If not provided but `quality_min` is given, it will be set to the highest quality from a quality chain to which `quality_min` belongs. Must belong to the same quality chain as `quality_min` and be equal or better, meaning later in the chain when following [QualityPrototype::next](../prototypes/QualityPrototype.md#next).

### quality_min

**Type:** [QualityID](../types/QualityID.md) · _optional_

Lowest possible quality of ingredient that will be accepted. If not provided but `quality_max` is given, it will be set to the lowest quality from a quality chain to which `quality_max` belongs. When set, if the recipe would require ingredient from a different quality chain (due to quality of the recipe or quality roll), `quality_min` will be used for the quality instead.

### spoil_weight

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Controls how much spoil percent of this ingredient should influence spoil percent of spoilable products.

Must be in range `[0, 1]`.

### type

**Type:** `"item"`
