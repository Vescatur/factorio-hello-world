# on_player_flipped_entity

_event_

Called when the player flips an entity. This event is only fired when the entity actually changes its orientation or mirroring, so it won't be triggered when pressing the flip keys on an entity that can't be flipped.

This event reflects a change in the [LuaEntity::mirroring](../classes/LuaEntity.md#mirroring) property.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [horizontal](#horizontal) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The flipped entity.

### horizontal

**Type:** [boolean](../concepts/boolean.md)

The enacted flip. `true` means a horizontal flip, `false` a vertical one.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
