# on_cargo_pod_delivered_cargo

_event_

Called after a cargo pod has delivered its cargo.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cargo_pod](#cargo-pod) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [spawned_container](#spawned-container) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cargo_pod

**Type:** [LuaEntity](../classes/LuaEntity.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### spawned_container

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The spawned container if any. Created when destination type is [surface](../defines/defines.md).

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
