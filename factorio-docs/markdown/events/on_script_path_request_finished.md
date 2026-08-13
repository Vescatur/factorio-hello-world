# on_script_path_request_finished

_event_

Called when a [LuaSurface::request_path](../classes/LuaSurface.md#request-path) call completes.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [id](#id) | [uint32](../concepts/uint32.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [path](#path) | array[[PathfinderWaypoint](../concepts/PathfinderWaypoint.md)] | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [try_again_later](#try-again-later) | [boolean](../concepts/boolean.md) |  |

### id

**Type:** [uint32](../concepts/uint32.md)

Handle to associate the callback with a particular call to [LuaSurface::request_path](../classes/LuaSurface.md#request-path).

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### path

**Type:** array[[PathfinderWaypoint](../concepts/PathfinderWaypoint.md)] · _optional_

The actual path that the pathfinder has determined. `nil` if pathfinding failed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### try_again_later

**Type:** [boolean](../concepts/boolean.md)

Indicates that the pathfinder failed because it is too busy, and that you can retry later.
