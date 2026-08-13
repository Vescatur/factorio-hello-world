# LuaTrivialSmokePrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a trivial smoke.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [affected_by_wind](#affected-by-wind) | [boolean](../concepts/boolean.md) |  |
| [color](#color) | [Color](../concepts/Color.md) |  |
| [cyclic](#cyclic) | [boolean](../concepts/boolean.md) |  |
| [duration](#duration) | [uint32](../concepts/uint32.md) |  |
| [end_scale](#end-scale) | [double](../concepts/double.md) |  |
| [fade_away_duration](#fade-away-duration) | [uint32](../concepts/uint32.md) |  |
| [fade_in_duration](#fade-in-duration) | [uint32](../concepts/uint32.md) |  |
| [glow_animation](#glow-animation) | [boolean](../concepts/boolean.md) |  |
| [glow_fade_away_duration](#glow-fade-away-duration) | [uint32](../concepts/uint32.md) |  |
| [movement_slow_down_factor](#movement-slow-down-factor) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [render_layer](#render-layer) | [RenderLayer](../concepts/RenderLayer.md) |  |
| [show_when_smoke_off](#show-when-smoke-off) | [boolean](../concepts/boolean.md) |  |
| [spread_duration](#spread-duration) | [uint32](../concepts/uint32.md) |  |
| [start_scale](#start-scale) | [double](../concepts/double.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### affected_by_wind

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### color

**Read:** [Color](../concepts/Color.md) · _read-only_

### cyclic

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### duration

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### end_scale

**Read:** [double](../concepts/double.md) · _read-only_

### fade_away_duration

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### fade_in_duration

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### glow_animation

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### glow_fade_away_duration

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### movement_slow_down_factor

**Read:** [double](../concepts/double.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### render_layer

**Read:** [RenderLayer](../concepts/RenderLayer.md) · _read-only_

### show_when_smoke_off

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### spread_duration

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### start_scale

**Read:** [double](../concepts/double.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
