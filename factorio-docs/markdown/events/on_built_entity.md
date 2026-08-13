# on_built_entity

_event_

Called when player builds something.

**Filter:** [LuaPlayerBuiltEntityEventFilter](../concepts/LuaPlayerBuiltEntityEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [consumed_items](#consumed-items) | [LuaInventory](../classes/LuaInventory.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### consumed_items

**Type:** [LuaInventory](../classes/LuaInventory.md)

A temporary inventory containing all items that the game used to build the entity. This inventory is temporary and thus invalidated after the event.

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was built.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the building.

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The tags associated with this entity if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
