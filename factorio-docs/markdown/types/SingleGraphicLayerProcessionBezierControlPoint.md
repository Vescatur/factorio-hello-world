# SingleGraphicLayerProcessionBezierControlPoint

_type (inline)_

One frame in time for a Bezier interpolation.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [frame](#frame) | [float](../types/float.md) | yes |
| [opacity](#opacity) | [double](../types/double.md) | yes |
| [opacity_t](#opacity-t) | [double](../types/double.md) | yes |
| [rotation](#rotation) | [double](../types/double.md) | yes |
| [rotation_t](#rotation-t) | [double](../types/double.md) | yes |
| [scale](#scale) | [double](../types/double.md) | yes |
| [scale_t](#scale-t) | [double](../types/double.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |
| [shift_rate](#shift-rate) | [double](../types/double.md) | yes |
| [shift_rate_t](#shift-rate-t) | [double](../types/double.md) | yes |
| [shift_t](#shift-t) | [Vector](../types/Vector.md) | yes |
| [timestamp](#timestamp) | [MapTick](../types/MapTick.md) | yes |
| [tint](#tint) | [Color](../types/Color.md) | yes |
| [tint_t](#tint-t) | [Color](../types/Color.md) | yes |

### frame

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

the frame of the pod animation played. Used only when 'animation_driven_by_curve' is enabled.

### opacity

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

`opacity` and `opacity_t` interpolate a double smoothly over time.

### opacity_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### rotation

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

`rotation` and `rotation_t` interpolate a double smoothly over time.

### rotation_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

`scale` and `scale_t` interpolate a double smoothly over time.

### scale_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** `{0.0, 0.0}`

`shift` and `shift_t` interpolate a vector smoothly over time using `shift_rate` and `shift_rate_t` for a 0-1 rate curve.

Vector value.

### shift_rate

**Type:** [double](../types/double.md) · _optional_

Rate 0-1 value.

### shift_rate_t

**Type:** [double](../types/double.md) · _optional_

Rate tangent.

### shift_t

**Type:** [Vector](../types/Vector.md) · _optional_

Vector tangent.

### timestamp

**Type:** [MapTick](../types/MapTick.md) · _optional_

Mandatory if `opacity` or `tint` is defined.

### tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `{1.0, 1.0, 1.0, 1.0}`

`tint` and `tint_t` interpolate a color smoothly over time.

### tint_t

**Type:** [Color](../types/Color.md) · _optional_

Bidirectional tangent at the given timestamp.
