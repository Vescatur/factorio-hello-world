# SurfacePropertyPrototype

_prototype_

**Prototype type string:** `type = "surface-property"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [default_value](#default-value) | [double](../types/double.md) |  |
| [is_time](#is-time) | [boolean](../types/boolean.md) | yes |
| [localised_unit_key](#localised-unit-key) | [string](../types/string.md) | yes |

### default_value

**Type:** [double](../types/double.md)

### is_time

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### localised_unit_key

**Type:** [string](../types/string.md) · _optional_ · **Default:** `surface-property-unit.[prototype name]`

The locale key of the unit of the property. In-game, the locale is provided the `__1__` parameter, which is the value of the property.
