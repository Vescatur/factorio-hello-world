# on_force_friends_changed

_event_

Called when the a forces friends change.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [added](#added) | [boolean](../concepts/boolean.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [other_force](#other-force) | [LuaForce](../classes/LuaForce.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### added

**Type:** [boolean](../concepts/boolean.md)

If the other force was added or removed.

### force

**Type:** [LuaForce](../classes/LuaForce.md)

The force who's friends changed.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### other_force

**Type:** [LuaForce](../classes/LuaForce.md)

Which force was added or removed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
