# PodMovementProcessionBezierControlPoint

_type (inline)_

One frame in time for a Bezier interpolation.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [offset](#offset) | [Vector](../types/Vector.md) | yes |
| [offset_rate](#offset-rate) | [double](../types/double.md) | yes |
| [offset_rate_t](#offset-rate-t) | [double](../types/double.md) | yes |
| [offset_t](#offset-t) | [Vector](../types/Vector.md) | yes |
| [tilt](#tilt) | [double](../types/double.md) | yes |
| [tilt_t](#tilt-t) | [double](../types/double.md) | yes |
| [timestamp](#timestamp) | [MapTick](../types/MapTick.md) | yes |

### offset

**Type:** [Vector](../types/Vector.md) · _optional_

`offset` and `offset_t` interpolate a vector smoothly over time using `offset_rate` and `offset_rate_t` for a 0-1 rate curve.

Vector value.

### offset_rate

**Type:** [double](../types/double.md) · _optional_

Rate 0-1 value.

### offset_rate_t

**Type:** [double](../types/double.md) · _optional_

Rate tangent.

### offset_t

**Type:** [Vector](../types/Vector.md) · _optional_

Vector tangent.

### tilt

**Type:** [double](../types/double.md) · _optional_

`tilt` and `tilt_t` interpolate a double smoothly over time.

### tilt_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### timestamp

**Type:** [MapTick](../types/MapTick.md) · _optional_

Mandatory if `tilt` is defined.
