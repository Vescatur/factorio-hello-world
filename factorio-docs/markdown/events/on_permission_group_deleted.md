# on_permission_group_deleted

_event_

Called directly after a permission group is deleted.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [group_name](#group-name) | [string](../concepts/string.md) |  |
| [id](#id) | [uint32](../concepts/uint32.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### group_name

**Type:** [string](../concepts/string.md)

The group that was deleted.

### id

**Type:** [uint32](../concepts/uint32.md)

The group id that was deleted.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player doing the deletion or `nil` if by a mod.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
