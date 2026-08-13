# ProcessionGraphic

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [catalogue_id](#catalogue-id) | [uint32](../types/uint32.md) | yes |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) | yes |
| [type](#type) | [ProcessionGraphicType](../types/ProcessionGraphicType.md) |  |

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

Mandatory if `type` is `"animation"`.

### catalogue_id

**Type:** [uint32](../types/uint32.md) · _optional_

Mandatory if `type` is `"pod-catalogue"` or `type` is `"location-catalogue"`.

### sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

Mandatory if `type` is `"sprite"`.

### type

**Type:** [ProcessionGraphicType](../types/ProcessionGraphicType.md)
