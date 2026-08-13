# CoverGraphicProcessionLayerBezierControlPoint

_type (inline)_

One frame in time for a Bezier interpolation.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alt_effect_scale_max](#alt-effect-scale-max) | [double](../types/double.md) | yes |
| [alt_effect_scale_max_t](#alt-effect-scale-max-t) | [double](../types/double.md) | yes |
| [alt_effect_scale_min](#alt-effect-scale-min) | [double](../types/double.md) | yes |
| [alt_effect_scale_min_t](#alt-effect-scale-min-t) | [double](../types/double.md) | yes |
| [alt_effect_shift](#alt-effect-shift) | [Vector](../types/Vector.md) | yes |
| [alt_effect_shift_rate](#alt-effect-shift-rate) | [double](../types/double.md) | yes |
| [alt_effect_shift_rate_t](#alt-effect-shift-rate-t) | [double](../types/double.md) | yes |
| [alt_effect_shift_t](#alt-effect-shift-t) | [Vector](../types/Vector.md) | yes |
| [effect_scale_max](#effect-scale-max) | [double](../types/double.md) | yes |
| [effect_scale_max_t](#effect-scale-max-t) | [double](../types/double.md) | yes |
| [effect_scale_min](#effect-scale-min) | [double](../types/double.md) | yes |
| [effect_scale_min_t](#effect-scale-min-t) | [double](../types/double.md) | yes |
| [effect_shift](#effect-shift) | [Vector](../types/Vector.md) | yes |
| [effect_shift_rate](#effect-shift-rate) | [double](../types/double.md) | yes |
| [effect_shift_rate_t](#effect-shift-rate-t) | [double](../types/double.md) | yes |
| [effect_shift_t](#effect-shift-t) | [Vector](../types/Vector.md) | yes |
| [offset](#offset) | [Vector](../types/Vector.md) | yes |
| [offset_rate](#offset-rate) | [double](../types/double.md) | yes |
| [offset_rate_t](#offset-rate-t) | [double](../types/double.md) | yes |
| [offset_t](#offset-t) | [Vector](../types/Vector.md) | yes |
| [opacity](#opacity) | [double](../types/double.md) | yes |
| [opacity_t](#opacity-t) | [double](../types/double.md) | yes |
| [rotation](#rotation) | [double](../types/double.md) | yes |
| [rotation_t](#rotation-t) | [double](../types/double.md) | yes |
| [timestamp](#timestamp) | [MapTick](../types/MapTick.md) | yes |

### alt_effect_scale_max

**Type:** [double](../types/double.md) · _optional_

`alt_effect_scale_max` and `alt_effect_scale_max_t` interpolate a double smoothly over time.

### alt_effect_scale_max_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### alt_effect_scale_min

**Type:** [double](../types/double.md) · _optional_

`alt_effect_scale_min` and `alt_effect_scale_min_t` interpolate a double smoothly over time.

### alt_effect_scale_min_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### alt_effect_shift

**Type:** [Vector](../types/Vector.md) · _optional_

`alt_effect_shift` and `alt_effect_shift_t` interpolate a vector smoothly over time using `alt_effect_shift_rate` and `alt_effect_shift_rate_t` for a 0-1 rate curve.

Vector value.

### alt_effect_shift_rate

**Type:** [double](../types/double.md) · _optional_

Rate 0-1 value.

### alt_effect_shift_rate_t

**Type:** [double](../types/double.md) · _optional_

Rate tangent.

### alt_effect_shift_t

**Type:** [Vector](../types/Vector.md) · _optional_

Vector tangent.

### effect_scale_max

**Type:** [double](../types/double.md) · _optional_

`effect_scale_max` and `effect_scale_max_t` interpolate a double smoothly over time.

### effect_scale_max_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### effect_scale_min

**Type:** [double](../types/double.md) · _optional_

`effect_scale_min` and `effect_scale_min_t` interpolate a double smoothly over time.

### effect_scale_min_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### effect_shift

**Type:** [Vector](../types/Vector.md) · _optional_

`effect_shift` and `effect_shift_t` interpolate a vector smoothly over time using `effect_shift_rate` and `effect_shift_rate_t` for a 0-1 rate curve.

Vector value.

### effect_shift_rate

**Type:** [double](../types/double.md) · _optional_

Rate 0-1 value.

### effect_shift_rate_t

**Type:** [double](../types/double.md) · _optional_

Rate tangent.

### effect_shift_t

**Type:** [Vector](../types/Vector.md) · _optional_

Vector tangent.

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

### opacity

**Type:** [double](../types/double.md) · _optional_

`opacity` and `opacity_t` interpolate a double smoothly over time.

### opacity_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### rotation

**Type:** [double](../types/double.md) · _optional_

`rotation` and `rotation_t` interpolate a double smoothly over time.

### rotation_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### timestamp

**Type:** [MapTick](../types/MapTick.md) · _optional_

Mandatory if `opacity` or `rotation` or `effect_scale_min` or `effect_scale_max` is defined.
