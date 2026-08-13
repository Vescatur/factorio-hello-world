# on_permission_group_added

_event_

Called directly after a permission group is added.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [group](#group) | [LuaPermissionGroup](../classes/LuaPermissionGroup.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### group

**Type:** [LuaPermissionGroup](../classes/LuaPermissionGroup.md)

The group added.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that added the group or `nil` if by a mod.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
