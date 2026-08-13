# on_player_changed_force

_event_

Called after a player changes forces.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### force

**Type:** [LuaForce](../classes/LuaForce.md)

The old force.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who changed forces.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
