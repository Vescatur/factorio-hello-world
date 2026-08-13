# on_forces_merged

_event_

Called after two forces have been merged using `game.merge_forces()`.

The source force is invalidated before this event is called and the name can be re-used in this event if desired.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [destination](#destination) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [source_index](#source-index) | [uint32](../concepts/uint32.md) |  |
| [source_name](#source-name) | [string](../concepts/string.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### destination

**Type:** [LuaForce](../classes/LuaForce.md)

The force entities where reassigned to.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### source_index

**Type:** [uint32](../concepts/uint32.md)

The index of the destroyed force.

### source_name

**Type:** [string](../concepts/string.md)

The force destroyed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
