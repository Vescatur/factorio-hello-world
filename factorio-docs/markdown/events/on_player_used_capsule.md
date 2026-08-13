# on_player_used_capsule

_event_

Called when a player uses a capsule that results in some game action.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md)

The capsule item used.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position the capsule was used.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The quality of the capsule item used.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
