# ScriptTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [custom_event](#custom-event) | [CustomEventID](../types/CustomEventID.md) | yes |
| [effect_id](#effect-id) | [string](../types/string.md) |  |
| [type](#type) | `"script"` |  |

### custom_event

**Type:** [CustomEventID](../types/CustomEventID.md) · _optional_

Event to be raised. When set, that event will be raised instead of [on_script_trigger_effect](../events/on_script_trigger_effect.md).

### effect_id

**Type:** [string](../types/string.md)

The effect ID that will be provided in [on_script_trigger_effect](../events/on_script_trigger_effect.md).

### type

**Type:** `"script"`
