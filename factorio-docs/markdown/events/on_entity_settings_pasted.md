# on_entity_settings_pasted

_event_

Called after entity copy-paste is done.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [destination](#destination) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [source](#source) | [LuaEntity](../classes/LuaEntity.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### destination

**Type:** [LuaEntity](../classes/LuaEntity.md)

The destination entity settings were copied to.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### source

**Type:** [LuaEntity](../classes/LuaEntity.md)

The source entity settings were copied from.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
