# on_player_fast_transferred

_event_

Called when a player fast-transfers something to or from an entity.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [from_player](#from-player) | [boolean](../concepts/boolean.md) |  |
| [is_split](#is-split) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity transferred from or to.

### from_player

**Type:** [boolean](../concepts/boolean.md)

Whether the transfer was from player to entity. If `false`, the transfer was from entity to player.

### is_split

**Type:** [boolean](../concepts/boolean.md)

Whether the transfer was a split action (half stack).

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player transferred from or to.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
