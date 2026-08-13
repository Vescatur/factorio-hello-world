# on_player_rotated_entity

_event_

Called when the player rotates an entity. This event is only fired when the entity actually changes its orientation -- pressing the rotate key on an entity that can't be rotated won't fire this event.

Entities being flipped will not fire this event, even if the flip involves rotating. See [on_player_flipped_entity](../events/on_player_flipped_entity.md).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [previous_direction](#previous-direction) | [defines.direction](../defines/defines.md) |  |
| [previous_mirroring](#previous-mirroring) | [boolean](../concepts/boolean.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The rotated entity.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### previous_direction

**Type:** [defines.direction](../defines/defines.md)

The previous direction

### previous_mirroring

**Type:** [boolean](../concepts/boolean.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
