# FootstepTriggerEffectItem

_type_

**Inherits from:** [CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [actions](#actions) | array[[CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md)] | yes |
| [tiles](#tiles) | array[[TileID](../types/TileID.md)] |  |
| [use_as_default](#use-as-default) | [boolean](../types/boolean.md) | yes |

### actions

**Type:** array[[CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md)] · _optional_

Can be used to specify multiple CreateParticleTriggerEffectItems. If this property is defined, all properties inherited from CreateParticleTriggerEffectItem are ignored.

### tiles

**Type:** array[[TileID](../types/TileID.md)]

### use_as_default

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When `true`, the trigger(s) defined in `actions` are the default triggers for tiles that don't have an associated footstep particle trigger. (ie. don't show up in one of the "tiles" lists).
