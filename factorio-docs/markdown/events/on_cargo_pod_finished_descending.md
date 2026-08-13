# on_cargo_pod_finished_descending

_event_

Called when a cargo pods lands on a surface, either at a station or on the ground.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cargo_pod](#cargo-pod) | [LuaEntity](../classes/LuaEntity.md) |  |
| [launched_by_rocket](#launched-by-rocket) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cargo_pod

**Type:** [LuaEntity](../classes/LuaEntity.md)

### launched_by_rocket

**Type:** [boolean](../concepts/boolean.md)

True for pods spawned on a rocket.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player that is riding the cargo pod, if any.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
