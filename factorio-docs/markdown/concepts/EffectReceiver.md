# EffectReceiver

_concept_

**Definition:** table{base_effect, consumption_limits, pollution_limits, productivity_limits, quality_limits, speed_limits, uses_beacon_effects, uses_local_effects, uses_module_effects, uses_surface_effects}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [base_effect](#base-effect) | [Effect](../concepts/Effect.md) |  |
| [consumption_limits](#consumption-limits) | [EffectValueRange](../concepts/EffectValueRange.md) |  |
| [pollution_limits](#pollution-limits) | [EffectValueRange](../concepts/EffectValueRange.md) |  |
| [productivity_limits](#productivity-limits) | [EffectValueRange](../concepts/EffectValueRange.md) |  |
| [quality_limits](#quality-limits) | [EffectValueRange](../concepts/EffectValueRange.md) |  |
| [speed_limits](#speed-limits) | [EffectValueRange](../concepts/EffectValueRange.md) |  |
| [uses_beacon_effects](#uses-beacon-effects) | [boolean](../concepts/boolean.md) |  |
| [uses_local_effects](#uses-local-effects) | [boolean](../concepts/boolean.md) |  |
| [uses_module_effects](#uses-module-effects) | [boolean](../concepts/boolean.md) |  |
| [uses_surface_effects](#uses-surface-effects) | [boolean](../concepts/boolean.md) |  |

### base_effect

**Type:** [Effect](../concepts/Effect.md)

### consumption_limits

**Type:** [EffectValueRange](../concepts/EffectValueRange.md)

### pollution_limits

**Type:** [EffectValueRange](../concepts/EffectValueRange.md)

### productivity_limits

**Type:** [EffectValueRange](../concepts/EffectValueRange.md)

### quality_limits

**Type:** [EffectValueRange](../concepts/EffectValueRange.md)

### speed_limits

**Type:** [EffectValueRange](../concepts/EffectValueRange.md)

### uses_beacon_effects

**Type:** [boolean](../concepts/boolean.md)

### uses_local_effects

**Type:** [boolean](../concepts/boolean.md)

Controls whether [LuaEntity::local_effect](../classes/LuaEntity.md#local-effect) affects this receiver.

### uses_module_effects

**Type:** [boolean](../concepts/boolean.md)

### uses_surface_effects

**Type:** [boolean](../concepts/boolean.md)

Controls whether [LuaSurface::global_effect](../classes/LuaSurface.md#global-effect) affects this receiver.
