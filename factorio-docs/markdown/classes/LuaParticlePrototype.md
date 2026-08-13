# LuaParticlePrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an optimized particle.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [ended_in_water_trigger_effect](#ended-in-water-trigger-effect) | [TriggerEffectItem](../concepts/TriggerEffectItem.md) |  |
| [ended_on_ground_trigger_effect](#ended-on-ground-trigger-effect) | [TriggerEffectItem](../concepts/TriggerEffectItem.md) |  |
| [fade_out_time](#fade-out-time) | [uint32](../concepts/uint32.md) |  |
| [life_time](#life-time) | [uint32](../concepts/uint32.md) |  |
| [mining_particle_frame_speed](#mining-particle-frame-speed) | [float](../concepts/float.md) |  |
| [movement_modifier](#movement-modifier) | [float](../concepts/float.md) |  |
| [movement_modifier_when_on_ground](#movement-modifier-when-on-ground) | [float](../concepts/float.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [regular_trigger_effect](#regular-trigger-effect) | [TriggerEffectItem](../concepts/TriggerEffectItem.md) |  |
| [regular_trigger_effect_frequency](#regular-trigger-effect-frequency) | [uint32](../concepts/uint32.md) |  |
| [render_layer](#render-layer) | [RenderLayer](../concepts/RenderLayer.md) |  |
| [render_layer_when_on_ground](#render-layer-when-on-ground) | [RenderLayer](../concepts/RenderLayer.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [vertical_acceleration](#vertical-acceleration) | [float](../concepts/float.md) |  |

### ended_in_water_trigger_effect

**Read:** [TriggerEffectItem](../concepts/TriggerEffectItem.md) · _read-only_

### ended_on_ground_trigger_effect

**Read:** [TriggerEffectItem](../concepts/TriggerEffectItem.md) · _read-only_

### fade_out_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### life_time

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### mining_particle_frame_speed

**Read:** [float](../concepts/float.md) · _read-only_

### movement_modifier

**Read:** [float](../concepts/float.md) · _read-only_

### movement_modifier_when_on_ground

**Read:** [float](../concepts/float.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### regular_trigger_effect

**Read:** [TriggerEffectItem](../concepts/TriggerEffectItem.md) · _read-only_

### regular_trigger_effect_frequency

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### render_layer

**Read:** [RenderLayer](../concepts/RenderLayer.md) · _read-only_

### render_layer_when_on_ground

**Read:** [RenderLayer](../concepts/RenderLayer.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### vertical_acceleration

**Read:** [float](../concepts/float.md) · _read-only_
