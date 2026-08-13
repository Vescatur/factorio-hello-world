# on_cargo_pod_started_ascending

_event_

Called when a cargo pod departs from a space platform hub or by another method not attached to a rocket.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cargo_pod](#cargo-pod) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cargo_pod

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that is riding the cargo pod, if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
