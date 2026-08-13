# CharacterCorpsePrototype

_prototype_

**Prototype type string:** `type = "character-corpse"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The corpse of a [CharacterPrototype](../prototypes/CharacterPrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [armor_picture_mapping](#armor-picture-mapping) | dictionary[[ItemID](../types/ItemID.md) → [int32](../types/int32.md)] | yes |
| [picture](#picture) | [Animation](../types/Animation.md) | yes |
| [pictures](#pictures) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [time_to_live](#time-to-live) | [uint32](../types/uint32.md) |  |

### armor_picture_mapping

**Type:** dictionary[[ItemID](../types/ItemID.md) → [int32](../types/int32.md)] · _optional_

A mapping of [ArmorPrototype](../prototypes/ArmorPrototype.md) name to a number. The number is the Animation that is associated with the armor, e.g. using `1` will associate the armor with the first Animation in the `pictures` table.

This mapping can be empty to have no sprite changes based on armor.

### picture

**Type:** [Animation](../types/Animation.md) · _optional_

Only loaded, and mandatory if `pictures` is not defined.

### pictures

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Mandatory if `picture` is not defined.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### time_to_live

**Type:** [uint32](../types/uint32.md)

In ticks. 0 for infinite.
