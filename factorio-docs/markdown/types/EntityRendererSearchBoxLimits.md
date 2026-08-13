# EntityRendererSearchBoxLimits

_type (inline)_

How far (in tiles) entities should be rendered outside the visible area of the screen.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [bottom](#bottom) | [uint8](../types/uint8.md) |  |
| [left](#left) | [uint8](../types/uint8.md) |  |
| [right](#right) | [uint8](../types/uint8.md) |  |
| [top](#top) | [uint8](../types/uint8.md) |  |

### bottom

**Type:** [uint8](../types/uint8.md)

Min value 4, max value 15. Min value 4 to compensate for tall entities like electric poles.

### left

**Type:** [uint8](../types/uint8.md)

Min value 6, max value 15. Min value 6 to compensate for shadows.

### right

**Type:** [uint8](../types/uint8.md)

Min value 3, max value 15.

### top

**Type:** [uint8](../types/uint8.md)

Min value 3, max value 15.
