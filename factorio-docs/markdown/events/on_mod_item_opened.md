# on_mod_item_opened

_event_

Called when the player uses the 'Open item GUI' control on an item defined with the 'mod-openable' flag

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [item](#item) | [LuaItemPrototype](../classes/LuaItemPrototype.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### item

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md)

The item clicked on.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player.

### quality

**Type:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md)

The item quality clicked on.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
