# SmokeSource

_type_

Definition of the smoke of an entity.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [deviation](#deviation) | [Vector](../types/Vector.md) | yes |
| [east_position](#east-position) | [Vector](../types/Vector.md) | yes |
| [frequency](#frequency) | [float](../types/float.md) |  |
| [has_8_directions](#has-8-directions) | [boolean](../types/boolean.md) | yes |
| [height](#height) | [float](../types/float.md) | yes |
| [height_deviation](#height-deviation) | [float](../types/float.md) | yes |
| [name](#name) | [TrivialSmokeID](../types/TrivialSmokeID.md) |  |
| [north_east_position](#north-east-position) | [Vector](../types/Vector.md) | yes |
| [north_position](#north-position) | [Vector](../types/Vector.md) | yes |
| [north_west_position](#north-west-position) | [Vector](../types/Vector.md) | yes |
| [offset](#offset) | [float](../types/float.md) | yes |
| [position](#position) | [Vector](../types/Vector.md) | yes |
| [south_east_position](#south-east-position) | [Vector](../types/Vector.md) | yes |
| [south_position](#south-position) | [Vector](../types/Vector.md) | yes |
| [south_west_position](#south-west-position) | [Vector](../types/Vector.md) | yes |
| [starting_frame](#starting-frame) | [uint16](../types/uint16.md) | yes |
| [starting_frame_deviation](#starting-frame-deviation) | [uint16](../types/uint16.md) | yes |
| [starting_vertical_speed](#starting-vertical-speed) | [float](../types/float.md) | yes |
| [starting_vertical_speed_deviation](#starting-vertical-speed-deviation) | [float](../types/float.md) | yes |
| [vertical_speed_slowdown](#vertical-speed-slowdown) | [float](../types/float.md) | yes |
| [west_position](#west-position) | [Vector](../types/Vector.md) | yes |

### deviation

**Type:** [Vector](../types/Vector.md) · _optional_

### east_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated east`

### frequency

**Type:** [float](../types/float.md)

Number of smokes generated per entity animation cycle (or per tick for some entities). Can't be negative or infinite.

### has_8_directions

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### height_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### name

**Type:** [TrivialSmokeID](../types/TrivialSmokeID.md)

### north_east_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated north-east`

Only loaded if `has_8_directions` is `true`.

### north_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position``

### north_west_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated north-west`

Only loaded if `has_8_directions` is `true`.

### offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Offsets animation cycle, to move at which points of the cycle the smoke gets emitted.

### position

**Type:** [Vector](../types/Vector.md) · _optional_

Positional offset of smoke source relative to owner entity position. The vector is rotated by orientation of the entity.

If any of `north_position`, `north_east_position`, `east_position`, `south_east_position`, `south_position`, `south_west_position`, `west_position`, `north_west_position` is defined, `position` is used only as default value for directional positions. Orientation of the owner entity will be rounded to 4 or 8 directions and one of the directional positions will be used as the offset instead of `position`.

### south_east_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated south-east`

Only loaded if `has_8_directions` is `true`.

### south_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated south`

### south_west_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated south-west`

Only loaded if `has_8_directions` is `true`.

### starting_frame

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### starting_frame_deviation

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### starting_vertical_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### starting_vertical_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### vertical_speed_slowdown

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.965}`

A value between `0` and `1`.

### west_position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `Value of `position` rotated west`
