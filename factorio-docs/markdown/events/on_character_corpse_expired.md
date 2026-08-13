# on_character_corpse_expired

_event_

Called when a character corpse expires due to timeout or all of the items being removed from it.

this is not called if the corpse is mined. See [defines.events.on_pre_player_mined_item](../defines/defines.md) to detect that.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [corpse](#corpse) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### corpse

**Type:** [LuaEntity](../classes/LuaEntity.md)

The corpse.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
