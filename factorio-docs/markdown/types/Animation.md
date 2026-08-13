# Animation

_type_

**Inherits from:** [AnimationParameters](../types/AnimationParameters.md)

Specifies an animation that can be used in the game.

Note that if any frame of the animation is specified from the same source as any other [Sprite](../types/Sprite.md) or frame of other animation, it will be shared.

**Examples:**

```
-- simple animation
horizontal_animation =
{
  filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
  width = 352,
  height = 257,
  frame_count = 32,
  line_length = 8,
  shift = {0.03125, -0.1484375}
}
```

```
-- animation with layers
horizontal_animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
      width = 352,
      height = 257,
      frame_count = 32,
      line_length = 8,
      shift = {0.03125, -0.15625}
    },
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
      width = 508,
      height = 160,
      frame_count = 32,
      line_length = 8,
      draw_as_shadow = true,
      shift = {1.5, 0.75}
    }
  }
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [filenames](#filenames) | array[[FileName](../types/FileName.md)] | yes |
| [layers](#layers) | array[[Animation](../types/Animation.md)] | yes |
| [lines_per_file](#lines-per-file) | [uint32](../types/uint32.md) | yes |
| [slice](#slice) | [uint32](../types/uint32.md) | yes |
| [stripes](#stripes) | array[[Stripe](../types/Stripe.md)] | yes |

### filename

**Type:** [FileName](../types/FileName.md) · _optional_ · _overrides parent_

Only loaded if `layers` is not defined. Mandatory if neither `stripes` nor `filenames` are defined.

The path to the sprite file to use.

### filenames

**Type:** array[[FileName](../types/FileName.md)] · _optional_

Only loaded if neither `layers` nor `stripes` are defined.

### layers

**Type:** array[[Animation](../types/Animation.md)] · _optional_

If this property is present, all Animation definitions have to be placed as entries in the array, and they will all be loaded from there. `layers` may not be an empty table. Each definition in the array may also have the `layers` property.

`animation_speed` and `max_advance` of the first layer are used for all layers. All layers will run at the same speed.

If this property is present, all other properties, including those inherited from AnimationParameters, are ignored.

### lines_per_file

**Type:** [uint32](../types/uint32.md) · _optional_

Only loaded if `layers` is not defined. Mandatory if `filenames` is defined.

### slice

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `frame_count``

Only loaded if `layers` is not defined and if `filenames` is defined.

### stripes

**Type:** array[[Stripe](../types/Stripe.md)] · _optional_

Only loaded if `layers` is not defined.
