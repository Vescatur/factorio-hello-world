# EffectReceiver

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [base_effect](#base-effect) | [Effect](../types/Effect.md) | yes |
| [consumption_limits](#consumption-limits) | [EffectValueRange](../types/EffectValueRange.md) | yes |
| [pollution_limits](#pollution-limits) | [EffectValueRange](../types/EffectValueRange.md) | yes |
| [productivity_limits](#productivity-limits) | [EffectValueRange](../types/EffectValueRange.md) | yes |
| [quality_limits](#quality-limits) | [EffectValueRange](../types/EffectValueRange.md) | yes |
| [speed_limits](#speed-limits) | [EffectValueRange](../types/EffectValueRange.md) | yes |
| [uses_beacon_effects](#uses-beacon-effects) | [boolean](../types/boolean.md) | yes |
| [uses_local_effects](#uses-local-effects) | [boolean](../types/boolean.md) | yes |
| [uses_module_effects](#uses-module-effects) | [boolean](../types/boolean.md) | yes |
| [uses_surface_effects](#uses-surface-effects) | [boolean](../types/boolean.md) | yes |

### base_effect

**Type:** [Effect](../types/Effect.md) · _optional_

### consumption_limits

**Type:** [EffectValueRange](../types/EffectValueRange.md) · _optional_ · **Default:** ``{ low = -0.8, high = 1000 }``

Limits total consumption effect value.

Low limit cannot be less than `-0.9999`. High limit cannot be greater than `1000`.

### pollution_limits

**Type:** [EffectValueRange](../types/EffectValueRange.md) · _optional_ · **Default:** ``{ low = -0.8, high = 1000 }``

Limits total pollution effect value.

Low limit cannot be less than `-0.9999`. High limit cannot be greater than `1000`.

### productivity_limits

**Type:** [EffectValueRange](../types/EffectValueRange.md) · _optional_ · **Default:** ``{ low = -0.8, high = 1000 }``

Limits total productivity effect value. This limit is applied before any productivity gained from research is added. Afterwards, productivity is clamped again to be non-negative. For crafting machines, it is also clamped to [RecipePrototype::maximum_productivity](../prototypes/RecipePrototype.md#maximum-productivity).

Low limit cannot be less than `-0.9999`. High limit cannot be greater than `1000`.

### quality_limits

**Type:** [EffectValueRange](../types/EffectValueRange.md) · _optional_ · **Default:** ``{ low = 0, high = 1000 }``

Limits total quality effect value.

Low limit cannot be less than `-1000`. High limit cannot be greater than `1000`.

### speed_limits

**Type:** [EffectValueRange](../types/EffectValueRange.md) · _optional_ · **Default:** ``{ low = -0.8, high = 1000 }``

Limits total speed effect value.

Low limit cannot be less than `-0.9999`. High limit cannot be greater than `1000`.

### uses_beacon_effects

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### uses_local_effects

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Controls whether [LuaEntity::local_effect](../classes/LuaEntity.md#local-effect) affects this receiver.

### uses_module_effects

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### uses_surface_effects

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Controls whether [LuaSurface::global_effect](../classes/LuaSurface.md#global-effect) affects this receiver.
