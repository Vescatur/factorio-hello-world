# LuaSpacePlatform

_class_

A space platform.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [damaged_tiles](#damaged-tiles) | array[table{damage, position}] |  |
| [distance](#distance) | [double](../concepts/double.md) | yes |
| [ejected_items](#ejected-items) | array[[EjectedItem](../concepts/EjectedItem.md)] |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [hidden](#hidden) | [boolean](../concepts/boolean.md) |  |
| [hub](#hub) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [last_visited_space_location](#last-visited-space-location) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [paused](#paused) | [boolean](../concepts/boolean.md) |  |
| [schedule](#schedule) | [PlatformSchedule](../concepts/PlatformSchedule.md) | yes |
| [scheduled_for_deletion](#scheduled-for-deletion) | [uint32](../concepts/uint32.md) |  |
| [space_connection](#space-connection) | [LuaSpaceConnectionPrototype](../classes/LuaSpaceConnectionPrototype.md) | yes |
| [space_location](#space-location) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) | yes |
| [speed](#speed) | [double](../concepts/double.md) |  |
| [starter_pack](#starter-pack) | [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) | yes |
| [state](#state) | [defines.space_platform_state](../defines/defines.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [weight](#weight) | [Weight](../concepts/Weight.md) |  |

### damaged_tiles

**Read:** array[table{damage, position}] · _read-only_

The damaged tiles on this platform.

### distance

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md) · _optional_

The point on space connection this platform is at or `nil`.

It is represented as a number in range `[0, 1]`, with 0 being [LuaSpaceConnectionPrototype::from](../classes/LuaSpaceConnectionPrototype.md#from) and 1 being [LuaSpaceConnectionPrototype::to](../classes/LuaSpaceConnectionPrototype.md#to).

### ejected_items

**Read:** array[[EjectedItem](../concepts/EjectedItem.md)] · _read-only_

All items that have been thrown overboard.

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force of this space platform.

### hidden

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this platform is hidden from the remote view surface list.

### hub

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The hub on this platform, if it exists. It does not exist if the platform has not had the starter pack applied.

If the hub [dies](../classes/LuaEntity.md#die) the platform will be deleted at the end of the tick but is otherwise valid to use until that point.

If the hub is [destroyed](../classes/LuaEntity.md#destroy) the platform is not affected.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The unique index of this space platform.

### last_visited_space_location

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · _read-only_ · _optional_

The space location this space platform previously went through or stopped at.

### name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The name of this space platform.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### paused

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When `true`, the platform has paused thrust and does not advance its schedule.

### schedule

**Read:** [PlatformSchedule](../concepts/PlatformSchedule.md) · **Write:** [PlatformSchedule](../concepts/PlatformSchedule.md) · _optional_

This platform's current schedule, if any. Set to `nil` to clear.

The schedule can't be changed by modifying the returned table. Instead, changes must be made by assigning a new table to this attribute.

This is a simplified schedule that does **not** include groups and interrupts. See [LuaSpacePlatform::get_schedule](../classes/LuaSpacePlatform.md#get-schedule) for full access to the schedule, including interrupts and groups.

### scheduled_for_deletion

**Read:** [uint32](../concepts/uint32.md) · _read-only_

If this platform is scheduled for deletion.

Returns how many ticks are left before the platform will be deleted. 0 if not scheduled for deletion.

### space_connection

**Read:** [LuaSpaceConnectionPrototype](../classes/LuaSpaceConnectionPrototype.md) · **Write:** [SpaceConnectionID](../concepts/SpaceConnectionID.md) · _optional_

The space connection this space platform is traveling through or `nil`.

Write operation requires a valid space connection and it sets the distance to 0.5.

### space_location

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · **Write:** [SpaceLocationID](../concepts/SpaceLocationID.md) · _optional_

The space location this space platform is stopped at or `nil`.

Write operation requires a valid space location and will cancel pending item requests.

### speed

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### starter_pack

**Read:** [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) · _read-only_ · _optional_

The starter pack used to create this space platform.

### state

**Read:** [defines.space_platform_state](../defines/defines.md) · _read-only_

The current state of this space platform.

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

The surface that belongs to this platform (if it has been created yet).

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_

The total weight of the platform.

## Methods

| Method | Summary |
| --- | --- |
| [apply_starter_pack](#apply-starter-pack) | Applies the starter pack for this platform if it hasn't already been applied. |
| [can_leave_current_location](#can-leave-current-location) | Returns `true` when the space platform isn't waiting on any delivery from the planet. |
| [cancel_deletion](#cancel-deletion) | Cancels deletion of this space platform if it was scheduled for deletion. |
| [clear_ejected_items](#clear-ejected-items) | Removes all ejected items from this space platform. |
| [create_asteroid_chunks](#create-asteroid-chunks) | Creates the given asteroid chunks on this platform. |
| [damage_tile](#damage-tile) | Damages the given tile if it exists, the chunk is generated, and it is a platform foundation tile. |
| [destroy](#destroy) | Schedules this space platform for deletion. |
| [destroy_asteroid_chunks](#destroy-asteroid-chunks) | Destroys all asteroid chunks from the given area. If no area and no position are given, then the entire surface is searched. |
| [eject_item](#eject-item) | Ejects an item into space on this space platform. |
| [find_asteroid_chunks_filtered](#find-asteroid-chunks-filtered) | Find asteroid chunks of a given name in a given area. |
| [get_schedule](#get-schedule) | This allows full access to the space platform schedule, including modifying the schedule records, the group and the interrupts. |
| [repair_tile](#repair-tile) | Repairs the given tile if it's damaged. |

### apply_starter_pack

`apply_starter_pack(silent)`

Applies the starter pack for this platform if it hasn't already been applied.

#### Parameters

##### silent

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the platform creation is announced to players on the force. Defaults to `false`.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The platform hub.

### can_leave_current_location

`can_leave_current_location()`

Returns `true` when the space platform isn't waiting on any delivery from the planet.

#### Return values

- [boolean](../concepts/boolean.md)

### cancel_deletion

`cancel_deletion()`

Cancels deletion of this space platform if it was scheduled for deletion.

### clear_ejected_items

`clear_ejected_items()`

Removes all ejected items from this space platform.

### create_asteroid_chunks

`create_asteroid_chunks(asteroid_chunks)`

Creates the given asteroid chunks on this platform.

#### Parameters

##### asteroid_chunks

**Type:** array[[AsteroidChunk](../concepts/AsteroidChunk.md)]

### damage_tile

`damage_tile({cause, damage, position})`

Damages the given tile if it exists, the chunk is generated, and it is a platform foundation tile.

#### Parameters

##### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

##### damage

**Type:** [float](../concepts/float.md)

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)

### destroy

`destroy(ticks)`

Schedules this space platform for deletion.

#### Parameters

##### ticks

**Type:** [MapTick](../concepts/MapTick.md) · _optional_

The number of ticks from now when this platform will be deleted.

### destroy_asteroid_chunks

`destroy_asteroid_chunks({area, invert, limit, name, position})`

Destroys all asteroid chunks from the given area. If no area and no position are given, then the entire surface is searched.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

##### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the filters should be inverted.

##### limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### name

**Type:** [AsteroidChunkID](../concepts/AsteroidChunkID.md) ∣ array[[AsteroidChunkID](../concepts/AsteroidChunkID.md)] · _optional_

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md) — The number of destroyed chunks.

### eject_item

`eject_item(item, movement, position)`

Ejects an item into space on this space platform.

If a LuaItemStack is provided, the actual item is ejected and removed from the source.

#### Parameters

##### item

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

##### movement

**Type:** [Vector](../concepts/Vector.md)

When inserters drop items into space, the [InserterPrototype::insert_position](../prototypes/InserterPrototype.md#insert-position) rotated to the inserter direction is used.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

### find_asteroid_chunks_filtered

`find_asteroid_chunks_filtered({area, invert, limit, name, position})`

Find asteroid chunks of a given name in a given area.

If no filters are given, returns all asteroid chunks in the search area. If multiple filters are specified, returns only asteroid chunks matching every given filter. If no area and no position are given, the entire surface is searched.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

##### invert

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the filters should be inverted.

##### limit

**Type:** [uint32](../concepts/uint32.md) · _optional_

##### name

**Type:** [AsteroidChunkID](../concepts/AsteroidChunkID.md) ∣ array[[AsteroidChunkID](../concepts/AsteroidChunkID.md)] · _optional_

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

#### Return values

- array[[AsteroidChunk](../concepts/AsteroidChunk.md)]

**Example:**

```
game.forces.player.platforms[1].find_asteroid_chunks_filtered{area = {{-10, -10}, {10, 10}}, name = "carbonic-asteroid"} -- gets all asteroids with the given name in the rectangle
game.forces.player.platforms[1].find_asteroid_chunks_filtered{area = {{-10, -10}, {10, 10}}, limit = 5}  -- gets the first 5 asteroid chunks in the rectangle
```

### get_schedule

`get_schedule()`

This allows full access to the space platform schedule, including modifying the schedule records, the group and the interrupts.

#### Return values

- [LuaSchedule](../classes/LuaSchedule.md)

### repair_tile

`repair_tile(amount, position)`

Repairs the given tile if it's damaged.

#### Parameters

##### amount

**Type:** [float](../concepts/float.md) · _optional_

##### position

**Type:** [TilePosition](../concepts/TilePosition.md)
