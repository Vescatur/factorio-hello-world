# on_train_created

_event_

Called when a new train is created either through disconnecting/connecting an existing one or building a new one.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_train_id_1](#old-train-id-1) | [uint32](../concepts/uint32.md) | yes |
| [old_train_id_2](#old-train-id-2) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [train](#train) | [LuaTrain](../classes/LuaTrain.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_train_id_1

**Type:** [uint32](../concepts/uint32.md) · _optional_

The first old train id when splitting/merging trains.

### old_train_id_2

**Type:** [uint32](../concepts/uint32.md) · _optional_

The second old train id when splitting/merging trains.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### train

**Type:** [LuaTrain](../classes/LuaTrain.md)
