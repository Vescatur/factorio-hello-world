# TintProcessionBezierControlPoint

_type (inline)_

One frame in time for a Bezier interpolation.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [opacity](#opacity) | [double](../types/double.md) | yes |
| [opacity_t](#opacity-t) | [double](../types/double.md) | yes |
| [timestamp](#timestamp) | [MapTick](../types/MapTick.md) | yes |
| [tint_lower](#tint-lower) | [Color](../types/Color.md) | yes |
| [tint_lower_t](#tint-lower-t) | [Color](../types/Color.md) | yes |
| [tint_upper](#tint-upper) | [Color](../types/Color.md) | yes |
| [tint_upper_t](#tint-upper-t) | [Color](../types/Color.md) | yes |

### opacity

**Type:** [double](../types/double.md) · _optional_

`opacity` and `opacity_t` interpolate a double smoothly over time.

### opacity_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### timestamp

**Type:** [MapTick](../types/MapTick.md) · _optional_

Mandatory if `opacity` or `tint_upper` or `tint_lower` is defined.

### tint_lower

**Type:** [Color](../types/Color.md) · _optional_

`tint_lower` and `tint_lower_t` interpolate a color smoothly over time.

### tint_lower_t

**Type:** [Color](../types/Color.md) · _optional_

Bidirectional tangent at the given timestamp.

### tint_upper

**Type:** [Color](../types/Color.md) · _optional_

`tint_upper` and `tint_upper_t` interpolate a color smoothly over time.

### tint_upper_t

**Type:** [Color](../types/Color.md) · _optional_

Bidirectional tangent at the given timestamp.
