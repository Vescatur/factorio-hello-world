# LuaNotificationQueue

_class_

Object that keeps track of objects invalidation and queues notifications for when object becomes invalid.

This object is an alternative mechanism to [LuaBootstrap::register_on_object_destroyed](../classes/LuaBootstrap.md#register-on-object-destroyed) where instead of raising lua events, this object only queues notifications and makes them available to use later by calls to [LuaNotificationQueue::poll](../classes/LuaNotificationQueue.md#poll) or [LuaNotificationQueue::poll_all](../classes/LuaNotificationQueue.md#poll-all).

New instances of this object can be obtained from [LuaBootstrap::new_notification_queue](../classes/LuaBootstrap.md#new-notification-queue).

Each instance of this object is unique, always valid and cannot be copied. This object lives entirely in script state and if its no longer referenced by script, it will be destroyed by garbage collector.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [add](#add) | Registers an object so that after it's destroyed, a notification is queued. |
| [clear](#clear) | Removes all registrations. |
| [find](#find) | Checks if provided object is already registered and returns existing registration number for it. If object is not registered, it is not registered and nil is returned instead. |
| [poll](#poll) | Gets at most 1 registration id for which an object was destroyed. |
| [poll_all](#poll-all) | Gets all registration ids for which object were destroyed. |
| [remove](#remove) | Removes a registration based on registration number. |

### add

`add(object)`

Registers an object so that after it's destroyed, a notification is queued.

If this object is already registered within this notification queue, an existing registration number will be provided without creating new registration.

#### Parameters

##### object

**Type:** [RegistrationTarget](../concepts/RegistrationTarget.md)

The object to register.

#### Return values

- [uint64](../concepts/uint64.md) — The registration number.

### clear

`clear()`

Removes all registrations.

### find

`find(object)`

Checks if provided object is already registered and returns existing registration number for it. If object is not registered, it is not registered and nil is returned instead.

#### Parameters

##### object

**Type:** [RegistrationTarget](../concepts/RegistrationTarget.md)

The object to check.

#### Return values

- [uint64](../concepts/uint64.md) _(optional)_ — The registration number if object is registered.

### poll

`poll()`

Gets at most 1 registration id for which an object was destroyed.

#### Return values

- [uint64](../concepts/uint64.md) _(optional)_

### poll_all

`poll_all()`

Gets all registration ids for which object were destroyed.

#### Return values

- array[[uint64](../concepts/uint64.md)]

### remove

`remove(registration_id)`

Removes a registration based on registration number.

#### Parameters

##### registration_id

**Type:** [uint64](../concepts/uint64.md)

Registration to be removed.
