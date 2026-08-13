# BoxSpecification

_type_

A cursor box, for use in [UtilitySprites](../prototypes/UtilitySprites.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [is_whole_box](#is-whole-box) | [boolean](../types/boolean.md) | yes |
| [max_side_length](#max-side-length) | [double](../types/double.md) | yes |
| [side_height](#side-height) | [double](../types/double.md) | yes |
| [side_length](#side-length) | [double](../types/double.md) | yes |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) |  |

### is_whole_box

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this is a complete box or just the top left corner. If this is true, `side_length` and `side_height` must be present. Otherwise `max_side_length` must be present.

### max_side_length

**Type:** [double](../types/double.md) · _optional_

Only loaded, and mandatory if `is_whole_box` is `false`.

### side_height

**Type:** [double](../types/double.md) · _optional_

Only loaded, and mandatory if `is_whole_box` is `true`.

### side_length

**Type:** [double](../types/double.md) · _optional_

Only loaded, and mandatory if `is_whole_box` is `true`.

### sprite

**Type:** [Sprite](../types/Sprite.md)
