# CutsceneWaypoint

_concept_

**Definition:** table{position, target, time_to_wait, transition_time, zoom}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [target](#target) | [LuaEntity](../classes/LuaEntity.md) ∣ [LuaCommandable](../classes/LuaCommandable.md) | yes |
| [time_to_wait](#time-to-wait) | [uint32](../concepts/uint32.md) |  |
| [transition_time](#transition-time) | [uint32](../concepts/uint32.md) |  |
| [zoom](#zoom) | [double](../concepts/double.md) | yes |

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

Position to pan the camera to.

### target

**Type:** [LuaEntity](../classes/LuaEntity.md) ∣ [LuaCommandable](../classes/LuaCommandable.md) · _optional_

Entity or unit group to pan the camera to.

### time_to_wait

**Type:** [uint32](../concepts/uint32.md)

Time in ticks to wait before moving to the next waypoint.

### transition_time

**Type:** [uint32](../concepts/uint32.md)

How many ticks it will take to reach this waypoint from the previous one.

### zoom

**Type:** [double](../concepts/double.md) · _optional_

Zoom level to be set when the waypoint is reached. When not specified, the previous waypoint's zoom is used.
