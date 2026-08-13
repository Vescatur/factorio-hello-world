# on_object_destroyed

_event_

Called after an object is destroyed which was registered with [LuaBootstrap::register_on_object_destroyed](../classes/LuaBootstrap.md#register-on-object-destroyed) previously.

Depending on when a given object is destroyed, this event will be fired at the end of the current tick or at the end of the next tick. The event's timing is independent of the in-world object being destroyed.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [registration_number](#registration-number) | [uint64](../concepts/uint64.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [type](#type) | [defines.target_type](../defines/defines.md) |  |
| [useful_id](#useful-id) | [uint64](../concepts/uint64.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### registration_number

**Type:** [uint64](../concepts/uint64.md)

The number returned by [register_on_object_destroyed](../classes/LuaBootstrap.md#register-on-object-destroyed) to uniquely identify this object during this event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### type

**Type:** [defines.target_type](../defines/defines.md)

Type of the object that was destroyed. Same as third value returned by [LuaBootstrap::register_on_object_destroyed](../classes/LuaBootstrap.md#register-on-object-destroyed).

### useful_id

**Type:** [uint64](../concepts/uint64.md)

The [useful identifier](../concepts/RegistrationTarget.md) of the object or `0` if the object does not have a useful id. Same as second value returned by [LuaBootstrap::register_on_object_destroyed](../classes/LuaBootstrap.md#register-on-object-destroyed).
