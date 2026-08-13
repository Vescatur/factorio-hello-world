# Alert

_concept_

**Definition:** table{icon, message, position, prototype, target, tick}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [icon](#icon) | [SignalID](../concepts/SignalID.md) | yes |
| [message](#message) | [LocalisedString](../concepts/LocalisedString.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [prototype](#prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [target](#target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### icon

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

The SignalID used for a custom alert. Only present for custom alerts.

### message

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

The message for a custom alert. Only present for custom alerts.

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

### prototype

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _optional_

### target

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### tick

**Type:** [MapTick](../concepts/MapTick.md)

The tick this alert was created.
