# LuaDecorativePrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an optimized decorative.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [autoplace_specification](#autoplace-specification) | [AutoplaceSpecification](../concepts/AutoplaceSpecification.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../concepts/BoundingBox.md) |  |
| [collision_mask](#collision-mask) | [CollisionMask](../concepts/CollisionMask.md) |  |
| [decal](#decal) | [boolean](../concepts/boolean.md) |  |
| [grows_through_rail_path](#grows-through-rail-path) | [boolean](../concepts/boolean.md) |  |
| [minimal_separation](#minimal-separation) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [placed_effect](#placed-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [render_layer](#render-layer) | [RenderLayer](../concepts/RenderLayer.md) |  |
| [target_count](#target-count) | [uint32](../concepts/uint32.md) |  |
| [trigger_effect](#trigger-effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### autoplace_specification

**Read:** [AutoplaceSpecification](../concepts/AutoplaceSpecification.md) · _read-only_ · _optional_

Autoplace specification for this decorative prototype, if any.

### collision_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_

The bounding box used for collision checking.

### collision_mask

**Read:** [CollisionMask](../concepts/CollisionMask.md) · _read-only_

The collision masks this decorative uses

### decal

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### grows_through_rail_path

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### minimal_separation

**Read:** [double](../concepts/double.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### placed_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### render_layer

**Read:** [RenderLayer](../concepts/RenderLayer.md) · _read-only_

### target_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### trigger_effect

**Read:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _read-only_ · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
