# TriggerEffectItem

_type_ · **abstract**

The abstract base of all [TriggerEffects](../types/TriggerEffect.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [affects_target](#affects-target) | [boolean](../types/boolean.md) | yes |
| [damage_type_filters](#damage-type-filters) | [DamageTypeFilters](../types/DamageTypeFilters.md) | yes |
| [probability](#probability) | [float](../types/float.md) | yes |
| [repeat_count](#repeat-count) | [uint16](../types/uint16.md) | yes |
| [repeat_count_deviation](#repeat-count-deviation) | [uint16](../types/uint16.md) | yes |
| [show_in_tooltip](#show-in-tooltip) | [boolean](../types/boolean.md) | yes |

### affects_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### damage_type_filters

**Type:** [DamageTypeFilters](../types/DamageTypeFilters.md) · _optional_

Guaranteed to work with [EntityWithHealthPrototype::damaged_trigger_effect](../prototypes/EntityWithHealthPrototype.md#damaged-trigger-effect) and [EntityWithHealthPrototype::dying_trigger_effect](../prototypes/EntityWithHealthPrototype.md#dying-trigger-effect). Unknown if it works with other properties that use [TriggerEffect](../types/TriggerEffect.md).

### probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be greater than `0` and less than or equal to `1`.

### repeat_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### repeat_count_deviation

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### show_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`
