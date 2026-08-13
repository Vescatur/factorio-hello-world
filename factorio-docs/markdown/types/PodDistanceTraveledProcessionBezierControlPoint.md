# PodDistanceTraveledProcessionBezierControlPoint

_type (inline)_

One frame in time for a Bezier interpolation.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [distance](#distance) | [double](../types/double.md) | yes |
| [distance_t](#distance-t) | [double](../types/double.md) | yes |
| [timestamp](#timestamp) | [MapTick](../types/MapTick.md) | yes |

### distance

**Type:** [double](../types/double.md) · _optional_

`distance` and `distance_t` interpolate a double smoothly over time.

### distance_t

**Type:** [double](../types/double.md) · _optional_

Bidirectional tangent at the given timestamp.

### timestamp

**Type:** [MapTick](../types/MapTick.md) · _optional_

Mandatory if `distance` is defined.
