# on_forces_merging

_event_

Called when two forces are about to be merged using `game.merge_forces()`.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [destination](#destination) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [source](#source) | [LuaForce](../classes/LuaForce.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### destination

**Type:** [LuaForce](../classes/LuaForce.md)

The force to reassign entities to.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### source

**Type:** [LuaForce](../classes/LuaForce.md)

The force to be destroyed

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
