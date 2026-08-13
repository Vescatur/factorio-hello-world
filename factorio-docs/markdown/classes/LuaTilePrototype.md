# LuaTilePrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a tile.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [absorptions_per_second](#absorptions-per-second) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] |  |
| [allowed_neighbors](#allowed-neighbors) | dictionary[[string](../concepts/string.md) → [LuaTilePrototype](../classes/LuaTilePrototype.md)] |  |
| [allows_being_covered](#allows-being-covered) | [boolean](../concepts/boolean.md) |  |
| [ambient_sounds_group](#ambient-sounds-group) | [LuaTilePrototype](../classes/LuaTilePrototype.md) | yes |
| [automatic_neighbors](#automatic-neighbors) | [boolean](../concepts/boolean.md) |  |
| [autoplace_specification](#autoplace-specification) | [AutoplaceSpecification](../concepts/AutoplaceSpecification.md) | yes |
| [bound_decoratives](#bound-decoratives) | array[[LuaDecorativePrototype](../classes/LuaDecorativePrototype.md)] | yes |
| [can_be_part_of_blueprint](#can-be-part-of-blueprint) | [boolean](../concepts/boolean.md) |  |
| [check_collision_with_entities](#check-collision-with-entities) | [boolean](../concepts/boolean.md) |  |
| [collision_mask](#collision-mask) | [TileCollisionMask](../concepts/TileCollisionMask.md) |  |
| [decorative_removal_probability](#decorative-removal-probability) | [float](../concepts/float.md) |  |
| [default_cover_tile](#default-cover-tile) | [LuaTilePrototype](../classes/LuaTilePrototype.md) | yes |
| [default_destroyed_dropped_item_trigger](#default-destroyed-dropped-item-trigger) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [destroys_dropped_items](#destroys-dropped-items) | [boolean](../concepts/boolean.md) |  |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaTilePrototype](../classes/LuaTilePrototype.md) | yes |
| [fluid](#fluid) | [LuaFluidPrototype](../classes/LuaFluidPrototype.md) | yes |
| [frozen_variant](#frozen-variant) | [LuaTilePrototype](../classes/LuaTilePrototype.md) | yes |
| [is_foundation](#is-foundation) | [boolean](../concepts/boolean.md) |  |
| [items_to_place_this](#items-to-place-this) | array[[ItemToPlace](../concepts/ItemToPlace.md)] | yes |
| [layer](#layer) | [uint32](../concepts/uint32.md) |  |
| [map_color](#map-color) | [Color](../concepts/Color.md) |  |
| [max_health](#max-health) | [float](../concepts/float.md) |  |
| [mineable_properties](#mineable-properties) | table{minable, mining_particle, mining_time, products} |  |
| [needs_correction](#needs-correction) | [boolean](../concepts/boolean.md) |  |
| [next_direction](#next-direction) | [LuaTilePrototype](../classes/LuaTilePrototype.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [scorch_mark_color](#scorch-mark-color) | [Color](../concepts/Color.md) | yes |
| [thawed_variant](#thawed-variant) | [LuaTilePrototype](../classes/LuaTilePrototype.md) | yes |
| [trigger_effect](#trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [vehicle_friction_modifier](#vehicle-friction-modifier) | [float](../concepts/float.md) |  |
| [walking_speed_modifier](#walking-speed-modifier) | [float](../concepts/float.md) |  |
| [weight](#weight) | [Weight](../concepts/Weight.md) |  |

### absorptions_per_second

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_

A table of pollution emissions per second this tile will absorb, indexed by the name of each absorbed pollution type.

### allowed_neighbors

**Read:** dictionary[[string](../concepts/string.md) → [LuaTilePrototype](../classes/LuaTilePrototype.md)] · _read-only_

### allows_being_covered

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True if this tile can be [hidden](../classes/LuaTile.md#hidden-tile) or replaced by another tile through player actions.

### ambient_sounds_group

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_ · _optional_

### automatic_neighbors

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### autoplace_specification

**Read:** [AutoplaceSpecification](../concepts/AutoplaceSpecification.md) · _read-only_ · _optional_

Autoplace specification for this prototype, if any.

### bound_decoratives

**Read:** array[[LuaDecorativePrototype](../classes/LuaDecorativePrototype.md)] · _read-only_ · _optional_

### can_be_part_of_blueprint

**Read:** [boolean](../concepts/boolean.md) · _read-only_

False if this tile is not allowed in blueprints regardless of the ability to build it.

### check_collision_with_entities

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True if building this tile should check for colliding entities above and prevent building if such are found. Also during mining tiles above this tile checks for entities colliding with this tile and prevents mining if such are found.

### collision_mask

**Read:** [TileCollisionMask](../concepts/TileCollisionMask.md) · _read-only_

The collision mask this tile uses

### decorative_removal_probability

**Read:** [float](../concepts/float.md) · _read-only_

The probability that decorative entities will be removed from on top of this tile when this tile is generated.

### default_cover_tile

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_ · _optional_

### default_destroyed_dropped_item_trigger

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### destroys_dropped_items

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### factoriopedia_alternative

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### fluid

**Read:** [LuaFluidPrototype](../classes/LuaFluidPrototype.md) · _read-only_ · _optional_

The fluid offshore pump produces on this tile, if any.

### frozen_variant

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_ · _optional_

### is_foundation

**Read:** [boolean](../concepts/boolean.md) · _read-only_

True if this tile can be used as a foundation for other tiles, false otherwise. Foundation tiles can be [hidden](../classes/LuaTile.md#hidden-tile).

### items_to_place_this

**Read:** array[[ItemToPlace](../concepts/ItemToPlace.md)] · _read-only_ · _optional_

Items that when placed will produce this tile, if any. Construction bots will choose the first item in the list to build this tile.

### layer

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### map_color

**Read:** [Color](../concepts/Color.md) · _read-only_

### max_health

**Read:** [float](../concepts/float.md) · _read-only_

### mineable_properties

**Read:** table{minable, mining_particle, mining_time, products} · _read-only_

### needs_correction

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this tile needs correction logic applied when it's generated in the world.

### next_direction

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_ · _optional_

The next direction of this tile, if any. Used when a tile has multiple directions (such as hazard concrete)

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### scorch_mark_color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

### thawed_variant

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_ · _optional_

### trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### vehicle_friction_modifier

**Read:** [float](../concepts/float.md) · _read-only_

### walking_speed_modifier

**Read:** [float](../concepts/float.md) · _read-only_

### weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_
