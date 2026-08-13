# LuaSegmentedUnit

_class_

A surface-level object composed of one [SegmentedUnitPrototype](../prototypes/SegmentedUnitPrototype.md) followed by up to 63 [SegmentPrototype](../prototypes/SegmentPrototype.md)s.

This object is not an entity, and can exist on chunks that do not exist. Instead, the individual segments that compose its body will be destroyed as the unit's body crosses into un-generated or void terrain, and will be re-created when the body crosses into generated, non-void terrain.

Use [LuaSurface::get_segmented_units](../classes/LuaSurface.md#get-segmented-units) to iterate over all units on a surface, [LuaTerritory::get_segmented_units](../classes/LuaTerritory.md#get-segmented-units) to iterate over all units that guard a territory, or [LuaEntity::segmented_unit](../classes/LuaEntity.md#segmented-unit) to get the unit that controls any given segment entity.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [acceleration](#acceleration) | [double](../concepts/double.md) |  |
| [activity_mode](#activity-mode) | [defines.segmented_unit_activity_mode](../defines/defines.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [health](#health) | [float](../concepts/float.md) |  |
| [health_ratio](#health-ratio) | [float](../concepts/float.md) |  |
| [max_body_nodes](#max-body-nodes) | [uint32](../concepts/uint32.md) |  |
| [max_health](#max-health) | [float](../concepts/float.md) |  |
| [minimum_activity_mode](#minimum-activity-mode) | [defines.segmented_unit_activity_mode](../defines/defines.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [prototype](#prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [segments](#segments) | array[[LuaSegment](../classes/LuaSegment.md)] |  |
| [speed](#speed) | [double](../concepts/double.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [target_speed](#target-speed) | [double](../concepts/double.md) |  |
| [territory](#territory) | [LuaTerritory](../classes/LuaTerritory.md) | yes |
| [unit_number](#unit-number) | [uint64](../concepts/uint64.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### acceleration

**Read:** [double](../concepts/double.md) · _read-only_

The rate at which [LuaSegmentedUnit::speed](../classes/LuaSegmentedUnit.md#speed) is changing over time, in tiles per tick per tick.

This value represents unit's most recent change in speed. If its speed is not changing, the acceleration value will be 0. If it is gaining speed, the value will be positive. If it is losing speed, the value will be negative.

### activity_mode

**Read:** [defines.segmented_unit_activity_mode](../defines/defines.md) · **Write:** [defines.segmented_unit_activity_mode](../defines/defines.md)

The current activity mode of the unit. Setting this field can cause the segmented unit to "wake up" or force it into a lower activity mode, but not permanently. Segmented units will generally try to update their activity mode so that they are fully active whenever they are potentially being observed by players, minimally active when relevant to gameplay but not likely observed, and asleep when not relevant to gameplay.

Will never be lower than [LuaSegmentedUnit::minimum_activity_mode](../classes/LuaSegmentedUnit.md#minimum-activity-mode).

### force

**Read:** [LuaForce](../classes/LuaForce.md) · **Write:** [ForceID](../concepts/ForceID.md)

The force that the unit belongs to. Changing this also changes the force of all segment entities.

Always returns a [LuaForce](../classes/LuaForce.md), but may be assigned to any [ForceID](../concepts/ForceID.md) type.

### health

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

The current health of the unit. Health is automatically clamped to be between `0` and [LuaSegmentedUnit::max_health](../classes/LuaSegmentedUnit.md#max-health).

### health_ratio

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

The ratio of [LuaSegmentedUnit::health](../classes/LuaSegmentedUnit.md#health) to [LuaSegmentedUnit::max_health](../classes/LuaSegmentedUnit.md#max-health). Values are clamped between `0` (no health) and `1` (full health) inclusive.

### max_body_nodes

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The maximum length of [LuaSegmentedUnit::get_body_nodes](../classes/LuaSegmentedUnit.md#get-body-nodes).

### max_health

**Read:** [float](../concepts/float.md) · _read-only_

The maximum health of the unit.

### minimum_activity_mode

**Read:** [defines.segmented_unit_activity_mode](../defines/defines.md) · **Write:** [defines.segmented_unit_activity_mode](../defines/defines.md)

The lowest-level activity mode that the unit is allowed to be in. Set this field to prevent the segmented unit from falling asleep or entering minimal mode. Set this field to `nil` or [asleep](../defines/defines.md) to reset this to the default and allow the engine to use whatever activity mode is appropriate.

Performance note: it is NOT recommended to force many segmented units to be fully active or minimally active simultaneously, as they can significantly impact performance depending on how they are configured. When using this feature, remember to reset this field to allow irrelevant units to go back to sleep.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### prototype

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_

The prototype of the `segmented-unit` entity that defines the traits and behaviors of the unit.

### segments

**Read:** array[[LuaSegment](../classes/LuaSegment.md)] · _read-only_

The segments that compose the unit.

### speed

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The current instantaneous speed in tiles per map tick. Must always be greater than or equal to 0; segmented units are currently incapable of naturally moving in reverse.

When setting this value, note that unless the unit's AI is similarly overridden by a script, the unit's speed will continuously accelerate or decelerate to match [LuaSegmentedUnit::target_speed](../classes/LuaSegmentedUnit.md#target-speed).

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

The surface on which the unit is located.

### target_speed

**Read:** [double](../concepts/double.md) · _read-only_

The speed in tiles per tick that the unit is currently attempting to reach, as determined by its AI. Must always be greater than or equal to 0.

### territory

**Read:** [LuaTerritory](../classes/LuaTerritory.md) · **Write:** [LuaTerritory](../classes/LuaTerritory.md) · _optional_

The territory that the unit is protecting.

### unit_number

**Read:** [uint64](../concepts/uint64.md) · _read-only_

A unique number identifying this unit for the lifetime of the save. These are allocated sequentially and not re-used (until overflow). These numbers are allocated from the same pool as [LuaEntity::unit_number](../classes/LuaEntity.md#unit-number), so segmented unit numbers are unique among all segmented units and all entities with owners.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [clone](#clone) | Clones this unit. |
| [damage](#damage) | Damages the unit. |
| [destroy](#destroy) | Destroys the segmented unit. |
| [die](#die) | Immediately kills the unit. |
| [get_ai_state](#get-ai-state) | Gets the state of the unit's AI. |
| [get_body_nodes](#get-body-nodes) | Gets the nodes that define the shape of the unit's body from front to back. Segments are moved along the path these nodes create. |
| [move_forward](#move-forward) | Moves the unit forward by a fixed distance according to its natural movement patterns and AI configuration. This movement occurs in addition to the unit's current speed, but affects neither LuaSegmentedUnit::speed nor LuaSegmentedUnit::acceleration. |
| [set_ai_state](#set-ai-state) | Sets the segmented unit's AI. |
| [set_body_nodes](#set-body-nodes) | Overwrites the segmented unit's body nodes, which are a series of points that make up the general shape of the unit. Segments are moved along the path these nodes create. For best results, adjacent nodes should be approximately 1.0 tile apart from each other. |

### clone

`clone({force, position, surface, territory})`

Clones this unit.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The new unit's force.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The destination position of the head segment. The rest of the body nodes will be copied relative to this.

##### surface

**Type:** [LuaSurface](../classes/LuaSurface.md) · _optional_

The destination surface. If different from this unit's surface, then the clone will not copy the original unit's territory.

##### territory

**Type:** [LuaTerritory](../classes/LuaTerritory.md) · _optional_

The territory that the clone should guard. Must be on the same surface as the destination surface.

#### Return values

- [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) _(optional)_ — The cloned unit or `nil` if the unit cannot be cloned.

#### Raises

- `on_segmented_unit_created` — Raised if a clone of the segmented unit was successfully created. [cause](../events/on_segmented_unit_created.md) will be set to [script_cloned](../defines/defines.md).

### damage

`damage(cause, damage, force, source, type)`

Damages the unit.

#### Parameters

##### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that originally triggered the events that led to this damage being dealt. This can be the player character, turret, unit, etc. that pulled the trigger. Does not need to be on the same surface as the segmented unit being damaged.

##### damage

**Type:** [float](../concepts/float.md)

The amount of damage to be done.

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force that is doing the damage.

##### source

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that is directly dealing the damage. This is the projectile, flame, sticker, grenade, laster beam, etc. Must be on the same surface as the entity being damaged.

##### type

**Type:** [DamageTypeID](../concepts/DamageTypeID.md) · _optional_

The type of damage being done. Defaults to `"impact"`.

#### Return values

- [float](../concepts/float.md) — The total damage actually applied after resistances.

#### Raises

- `on_segmented_unit_damaged` — 

### destroy

`destroy({raise_destroy})`

Destroys the segmented unit.

#### Parameters

##### raise_destroy

**Type:** [boolean](../concepts/boolean.md) · _optional_

If `true`, [script_raised_destroy_segmented_unit](../events/script_raised_destroy_segmented_unit.md) will be called. Defaults to `false`.

#### Raises

- `script_raised_destroy_segmented_unit` — Raised if the `raise_destroy` flag was set and the unit was successfully destroyed.

### die

`die(cause, damage_type, force)`

Immediately kills the unit.

Unlike [LuaSegmentedUnit::destroy](../classes/LuaSegmentedUnit.md#destroy), `die` will trigger the [on_segmented_unit_died](../events/on_segmented_unit_died.md) event and the unit's individual segments will produce a corpse and drop loot if they have any, and if the segment entities exist at the moment of death (are not in non-generated chunks or out-of-map tiles).

#### Parameters

##### cause

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The cause to attribute the kill to.

##### damage_type

**Type:** [DamageTypeID](../concepts/DamageTypeID.md) · _optional_

The final damage type that caused the unit to die.

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force to attribute the kill to. Defaults to the `"neutral"` force.

#### Raises

- `on_post_segmented_unit_died` — 
- `on_segmented_unit_died` — 

### get_ai_state

`get_ai_state()`

Gets the state of the unit's AI.

This method returns a copy of the internal AI state. Modifying the returned table will not affect the unit's AI.

#### Return values

- [SegmentedUnitAIState](../concepts/SegmentedUnitAIState.md)

### get_body_nodes

`get_body_nodes()`

Gets the nodes that define the shape of the unit's body from front to back. Segments are moved along the path these nodes create.

The returned array will always contain at least 1 position, but will not contain more than [LuaSegmentedUnit::max_body_nodes](../classes/LuaSegmentedUnit.md#max-body-nodes).

The returned table is a copy of the unit's actual body nodes.

#### Return values

- array[[MapPosition](../concepts/MapPosition.md)]

### move_forward

`move_forward(distance)`

Moves the unit forward by a fixed distance according to its natural movement patterns and AI configuration. This movement occurs in addition to the unit's current speed, but affects neither [LuaSegmentedUnit::speed](../classes/LuaSegmentedUnit.md#speed) nor [LuaSegmentedUnit::acceleration](../classes/LuaSegmentedUnit.md#acceleration).

#### Parameters

##### distance

**Type:** [double](../concepts/double.md)

The distance in tiles to move the segmented unit forward.

### set_ai_state

`set_ai_state(state)`

Sets the segmented unit's AI.

#### Parameters

##### state

**Type:** [SegmentedUnitAIState](../concepts/SegmentedUnitAIState.md)

The new AI state. A copy of this table used, so you can read or write to this table after calling this function without being affected by or affecting the unit's AI.

### set_body_nodes

`set_body_nodes(nodes)`

Overwrites the segmented unit's body nodes, which are a series of points that make up the general shape of the unit. Segments are moved along the path these nodes create. For best results, adjacent nodes should be approximately 1.0 tile apart from each other.

This array must contain at least 1 position. Positions at indexes greater than [LuaSegmentedUnit::max_body_nodes](../classes/LuaSegmentedUnit.md#max-body-nodes) will be ignored.

Segment entities may be created, destroyed, or moved as a result of setting this field's value. Any segment entities that have a [TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)s will reduce that effect's distance cooldown. However, any effects that go off cooldown as a result will not trigger until the next game update.

#### Parameters

##### nodes

**Type:** array[[MapPosition](../concepts/MapPosition.md)]

The new positions that make up the segmented unit's body nodes. Must not be empty.
