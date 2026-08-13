# on_player_flushed_fluid

_event_

Called after player flushed fluid

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [double](../concepts/double.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [fluid](#fluid) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [only_this_entity](#only-this-entity) | [boolean](../concepts/boolean.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### amount

**Type:** [double](../concepts/double.md)

Amount of fluid that was removed

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

Entity from which flush was performed

### fluid

**Type:** [string](../concepts/string.md)

Name of a fluid that was flushed

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### only_this_entity

**Type:** [boolean](../concepts/boolean.md)

True if flush was requested only on this entity

### player_index

**Type:** [uint32](../concepts/uint32.md)

Index of the player

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
