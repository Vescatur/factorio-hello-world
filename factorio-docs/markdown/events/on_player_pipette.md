# on_player_pipette

_event_

Called when a player invokes the "smart pipette" over an entity.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [used_cheat_mode](#used-cheat-mode) | [boolean](../concepts/boolean.md) |  |

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md)

The item put in the cursor

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The item quality put in the cursor

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### used_cheat_mode

**Type:** [boolean](../concepts/boolean.md)

If cheat mode was used to give a free stack of the item.
