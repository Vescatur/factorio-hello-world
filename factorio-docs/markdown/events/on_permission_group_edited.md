# on_permission_group_edited

_event_

Called directly after a permission group is edited in some way.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [defines.input_action](../defines/defines.md) |  |
| [group](#group) | [LuaPermissionGroup](../classes/LuaPermissionGroup.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [new_name](#new-name) | [string](../concepts/string.md) |  |
| [old_name](#old-name) | [string](../concepts/string.md) |  |
| [other_player_index](#other-player-index) | [uint32](../concepts/uint32.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [type](#type) | `"add-permission"` ∣ `"remove-permission"` ∣ `"enable-all"` ∣ `"disable-all"` ∣ `"add-player"` ∣ `"remove-player"` ∣ `"rename"` |  |

### action

**Type:** [defines.input_action](../defines/defines.md)

The action when the `type` is `"add-permission"` or `"remove-permission"`.

### group

**Type:** [LuaPermissionGroup](../classes/LuaPermissionGroup.md)

The group being edited.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### new_name

**Type:** [string](../concepts/string.md)

The new group name when the `type` is `"rename"`.

### old_name

**Type:** [string](../concepts/string.md)

The old group name when the `type` is `"rename"`.

### other_player_index

**Type:** [uint32](../concepts/uint32.md)

The other player when the `type` is `"add-player"` or `"remove-player"`.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that did the editing or `nil` if by a mod.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### type

**Type:** `"add-permission"` ∣ `"remove-permission"` ∣ `"enable-all"` ∣ `"disable-all"` ∣ `"add-player"` ∣ `"remove-player"` ∣ `"rename"`

The edit type.
