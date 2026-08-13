# on_entity_renamed

_event_

Called after an entity has been renamed either by the player or through script.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [by_script](#by-script) | [boolean](../concepts/boolean.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_name](#old-name) | [string](../concepts/string.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### by_script

**Type:** [boolean](../concepts/boolean.md)

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_name

**Type:** [string](../concepts/string.md)

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If by_script is true this will not be included.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
