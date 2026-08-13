# AirbornePollutantPrototype

_prototype_

**Prototype type string:** `type = "airborne-pollutant"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A type of pollution that can spread throughout the chunks of a map.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [affects_evolution](#affects-evolution) | [boolean](../types/boolean.md) |  |
| [affects_water_tint](#affects-water-tint) | [boolean](../types/boolean.md) |  |
| [chart_color](#chart-color) | [Color](../types/Color.md) |  |
| [damages_trees](#damages-trees) | [boolean](../types/boolean.md) | yes |
| [icon](#icon) | [Sprite](../types/Sprite.md) |  |
| [localised_name_with_amount](#localised-name-with-amount) | [string](../types/string.md) | yes |

### affects_evolution

**Type:** [boolean](../types/boolean.md)

### affects_water_tint

**Type:** [boolean](../types/boolean.md)

If true, large amounts of this pollution will cause water tiles to turn a sickly green.

### chart_color

**Type:** [Color](../types/Color.md)

### damages_trees

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If true, trees will occasionally take damage from this pollutant type. When they do, some amount of pollution is removed from the chunk equal to the map's `pollution_restored_per_tree_damage` setting.

### icon

**Type:** [Sprite](../types/Sprite.md)

### localised_name_with_amount

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'airborne-pollutant-name-with-amount.<name>'}`

The translated plural string key to use when displaying this pollution's name with an amount. See [Tutorial:Localisation](https://wiki.factorio.com/Tutorial:Localisation).
