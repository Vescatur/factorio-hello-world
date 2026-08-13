# LuaSegment

_class_

An individual segment of a [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md). If the segment exists in a generated chunk, you can access the entity representation using [LuaSegment::entity](../classes/LuaSegment.md#entity).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [orientation](#orientation) | [RealOrientation](../concepts/RealOrientation.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [prototype](#prototype) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |
| [unit](#unit) | [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### entity

**Read:** [LuaEntity](../classes/LuaEntity.md) · _read-only_ · _optional_

The actual entity representation of the segment if it exists. A segment's entity will be automatically destroyed if the segment moves into chunks that have not yet been fully generated or onto "out-of-map" tiles. Conversely, if a segment moves into a chunk that is fully generated and onto a non-"out-of-map" tile, then its entity will be created if it doesn't exist yet.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · _read-only_ · _optional_

The relative orientation of the segment if one has been assigned. An orientation may not be assigned if the unit's number of body nodes is fewer than [LuaSegmentedUnit::max_body_nodes](../classes/LuaSegmentedUnit.md#max-body-nodes).

If [LuaSegment::entity](../classes/LuaSegment.md#entity) is non-nil, this returns that entity's [LuaEntity::orientation](../classes/LuaEntity.md#orientation). If the entity is `nil`, then reading this field calculates the entity's would-be position if it existed. This can be expensive to compute, so avoid reading this field too often unless it is really necessary.

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_ · _optional_

The position of the segment if one has been assigned. A position may not be assigned if the unit's number of body nodes is fewer than [LuaSegmentedUnit::max_body_nodes](../classes/LuaSegmentedUnit.md#max-body-nodes).

This position may be in an un-generated chunk. Use [LuaSurface::is_chunk_generated](../classes/LuaSurface.md#is-chunk-generated) to check before attempting to access the chunk.

If [LuaSegment::entity](../classes/LuaSegment.md#entity) is non-nil, this returns that entity's [LuaEntity::position](../classes/LuaEntity.md#position). If the entity is `nil`, then reading this field calculates the entity's would-be position if it existed. This can be expensive to compute, so avoid reading this field too often unless it is really necessary.

### prototype

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_

The prototype for the entity representation of the segment.

### unit

**Read:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) · _read-only_

The segmented unit that owns the segment.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
