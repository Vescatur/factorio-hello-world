# CreateStickerTriggerEffectItem

_type_

**Inherits from:** [TriggerEffectItem](../types/TriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [show_in_tooltip](#show-in-tooltip) | [boolean](../types/boolean.md) | yes |
| [sticker](#sticker) | [EntityID](../types/EntityID.md) |  |
| [trigger_created_entity](#trigger-created-entity) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"create-sticker"` |  |

### show_in_tooltip

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### sticker

**Type:** [EntityID](../types/EntityID.md)

Name of a [StickerPrototype](../prototypes/StickerPrototype.md) that should be created.

### trigger_created_entity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, [on_trigger_created_entity](../events/on_trigger_created_entity.md) will be triggered when the sticker is created.

### type

**Type:** `"create-sticker"`
