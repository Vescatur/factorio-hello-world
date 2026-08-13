# ArtilleryProjectilePrototype

_prototype_

**Prototype type string:** `type = "artillery-projectile"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The projectile shot by [artillery](https://wiki.factorio.com/Artillery).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [chart_picture](#chart-picture) | [Sprite](../types/Sprite.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [final_action](#final-action) | [Trigger](../types/Trigger.md) | yes |
| [height_from_ground](#height-from-ground) | [float](../types/float.md) | yes |
| [map_color](#map-color) | [Color](../types/Color.md) |  |
| [picture](#picture) | [Sprite](../types/Sprite.md) | yes |
| [reveal_map](#reveal-map) | [boolean](../types/boolean.md) |  |
| [rotatable](#rotatable) | [boolean](../types/boolean.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shadow](#shadow) | [Sprite](../types/Sprite.md) | yes |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### chart_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Must have a collision box size of zero.

**Example:**

```
collision_box = {{0, 0}, {0, 0}}
```

### final_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### height_from_ground

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### map_color

**Type:** [Color](../types/Color.md) · _overrides parent_

### picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### reveal_map

**Type:** [boolean](../types/boolean.md)

### rotatable

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the picture of the projectile is rotated to match the direction of travel.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shadow

**Type:** [Sprite](../types/Sprite.md) · _optional_
