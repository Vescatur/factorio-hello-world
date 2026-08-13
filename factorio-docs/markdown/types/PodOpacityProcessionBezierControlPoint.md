# PodOpacityProcessionBezierControlPoint

_type (inline)_

One frame in time for a Bezier interpolation.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cutscene_opacity](#cutscene-opacity) | [double](../types/double.md) | yes |
| [cutscene_opacity_t](#cutscene-opacity-t) | [double](../types/double.md) | yes |
| [lut_blend](#lut-blend) | [double](../types/double.md) | yes |
| [lut_blend_t](#lut-blend-t) | [double](../types/double.md) | yes |
| [outside_opacity](#outside-opacity) | [double](../types/double.md) | yes |
| [outside_opacity_t](#outside-opacity-t) | [double](../types/double.md) | yes |
| [timestamp](#timestamp) | [MapTick](../types/MapTick.md) | yes |

### cutscene_opacity

**Type:** [double](../types/double.md) · _optional_

`cutscene_opacity` and `cutscene_opacity_t` interpolate a double smoothly over time.

### cutscene_opacity_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### lut_blend

**Type:** [double](../types/double.md) · _optional_

`lut_blend` and `lut_blend_t` interpolate a double smoothly over time.

LUT won't be overridden however, until the pod is drawn above the game via `draw_switch_tick`.

### lut_blend_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### outside_opacity

**Type:** [double](../types/double.md) · _optional_

`outside_opacity` and `outside_opacity_t` interpolate a double smoothly over time.

### outside_opacity_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### timestamp

**Type:** [MapTick](../types/MapTick.md) · _optional_

Mandatory if `cutscene_opacity` or `outside_opacity` is defined.
