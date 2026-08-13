# SmokePrototype

_prototype_ · **abstract**

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Abstract entity that has an animation.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [affected_by_wind](#affected-by-wind) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [color](#color) | [Color](../types/Color.md) | yes |
| [cyclic](#cyclic) | [boolean](../types/boolean.md) | yes |
| [duration](#duration) | [uint32](../types/uint32.md) | yes |
| [end_scale](#end-scale) | [double](../types/double.md) | yes |
| [fade_away_duration](#fade-away-duration) | [uint32](../types/uint32.md) | yes |
| [fade_in_duration](#fade-in-duration) | [uint32](../types/uint32.md) | yes |
| [glow_animation](#glow-animation) | [Animation](../types/Animation.md) | yes |
| [glow_fade_away_duration](#glow-fade-away-duration) | [uint32](../types/uint32.md) | yes |
| [movement_slow_down_factor](#movement-slow-down-factor) | [double](../types/double.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [show_when_smoke_off](#show-when-smoke-off) | [boolean](../types/boolean.md) | yes |
| [spread_duration](#spread-duration) | [uint32](../types/uint32.md) | yes |
| [start_scale](#start-scale) | [double](../types/double.md) | yes |

### affected_by_wind

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Smoke always moves randomly unless `movement_slow_down_factor` is 0. If `affected_by_wind` is true, the smoke will also be moved by wind.

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Must have a collision box size of zero.

**Example:**

```
collision_box = {{0, 0}, {0, 0}}
```

### color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=0.375, g=0.375, b=0.375, a=0.375}``

### cyclic

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is false then the smoke expires when the animation has played once.

### duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

May not be 0 if `cyclic` is true. If `cyclic` is false then the smoke will be expire when the animation has played once, even if there would still be duration left.

### end_scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### fade_away_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

`fade_in_duration` + `fade_away_duration` must be <= `duration`.

### fade_in_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

`fade_in_duration` + `fade_away_duration` must be <= `duration`.

### glow_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### glow_fade_away_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `The value of `fade_away_duration``

### movement_slow_down_factor

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.995}`

Value between 0 and 1, with 0 being no movement.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'smoke'}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### show_when_smoke_off

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### spread_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### start_scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`
