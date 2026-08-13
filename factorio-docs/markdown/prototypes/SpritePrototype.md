# SpritePrototype

_prototype_

**Prototype type string:** `type = "sprite"`

Specifies an image that can be used with [SpritePath](../concepts/SpritePath.md) at runtime.

**Example:**

```
{
  type = "sprite"
  name = "accumulator-sprite",
  filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator.png",
  priority = "extra-high",
  width = 124,
  height = 103,
  shift = {0.7, -0.2}
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_forced_downscale](#allow-forced-downscale) | [boolean](../types/boolean.md) | yes |
| [apply_runtime_tint](#apply-runtime-tint) | [boolean](../types/boolean.md) | yes |
| [apply_special_effect](#apply-special-effect) | [boolean](../types/boolean.md) | yes |
| [blend_mode](#blend-mode) | [BlendMode](../types/BlendMode.md) | yes |
| [dice](#dice) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [dice_x](#dice-x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [dice_y](#dice-y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [draw_as_glow](#draw-as-glow) | [boolean](../types/boolean.md) | yes |
| [draw_as_light](#draw-as-light) | [boolean](../types/boolean.md) | yes |
| [draw_as_shadow](#draw-as-shadow) | [boolean](../types/boolean.md) | yes |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [flags](#flags) | [SpriteFlags](../types/SpriteFlags.md) | yes |
| [generate_sdf](#generate-sdf) | [boolean](../types/boolean.md) | yes |
| [height](#height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [invert_colors](#invert-colors) | [boolean](../types/boolean.md) | yes |
| [layers](#layers) | array[[Sprite](../types/Sprite.md)] | yes |
| [load_in_minimal_mode](#load-in-minimal-mode) | [boolean](../types/boolean.md) | yes |
| [mipmap_count](#mipmap-count) | [uint8](../types/uint8.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [position](#position) | tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] | yes |
| [premul_alpha](#premul-alpha) | [boolean](../types/boolean.md) | yes |
| [priority](#priority) | [SpritePriority](../types/SpritePriority.md) | yes |
| [rotate_shift](#rotate-shift) | [boolean](../types/boolean.md) | yes |
| [scale](#scale) | [double](../types/double.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |
| [size](#size) | [SpriteSizeType](../types/SpriteSizeType.md) ∣ tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] | yes |
| [surface](#surface) | [SpriteUsageSurfaceHint](../types/SpriteUsageSurfaceHint.md) | yes |
| [tint](#tint) | [Color](../types/Color.md) | yes |
| [tint_as_overlay](#tint-as-overlay) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"sprite"` |  |
| [usage](#usage) | [SpriteUsageHint](../types/SpriteUsageHint.md) | yes |
| [width](#width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [x](#x) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [y](#y) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### allow_forced_downscale

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

If `true`, the sprite may be downsampled to half its size on load even when 'Sprite quality' graphics setting is set to 'High'. Whether downsampling happens depends on detected hardware and other graphics settings.

### apply_runtime_tint

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

### apply_special_effect

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

### blend_mode

**Type:** [BlendMode](../types/BlendMode.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'normal'}`

Only loaded if `layers` is not defined.

### dice

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Only loaded if `layers` is not defined.

Number of slices this is sliced into when using the "optimized atlas packing" option. If you are a modder, you can just ignore this property. Example: If this is 4, the sprite will be sliced into a 4x4 grid.

### dice_x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Only loaded if `layers` is not defined.

Same as `dice` above, but this specifies only how many slices there are on the x axis.

### dice_y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Only loaded if `layers` is not defined.

Same as `dice` above, but this specifies only how many slices there are on the y axis.

### draw_as_glow

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true. This takes precedence over `draw_as_light`.

Draws first as a normal sprite, then again as a light layer. See [https://forums.factorio.com/91682](https://forums.factorio.com/91682).

### draw_as_light

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true.

### draw_as_shadow

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true. This takes precedence over `draw_as_glow` and `draw_as_light`.

### filename

**Type:** [FileName](../types/FileName.md) · _optional_

Only loaded, and mandatory if `layers` is not defined.

The path to the sprite file to use.

### flags

**Type:** [SpriteFlags](../types/SpriteFlags.md) · _optional_

Only loaded if `layers` is not defined.

### generate_sdf

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

Unused.

### height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Only loaded if `layers` is not defined. Mandatory if `size` is not defined.

Height of the picture in pixels, from 0-4096.

### invert_colors

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

### layers

**Type:** array[[Sprite](../types/Sprite.md)] · _optional_

If this property is present, all Sprite definitions have to be placed as entries in the array, and they will all be loaded from there. `layers` may not be an empty table. Each definition in the array may also have the `layers` property.

If this property is present, all other properties besides `name` and `type` are ignored.

### load_in_minimal_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

Minimal mode is entered when mod loading fails. You are in it when you see the gray box after (part of) the loading screen that tells you a mod error. Modders can ignore this property.

### mipmap_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `layers` is not defined.

Only loaded if this is an icon, that is it has the flag `"group=icon"` or `"group=gui"`.

### name

**Type:** [string](../types/string.md)

Name of the sprite. Can be used as a [SpritePath](../concepts/SpritePath.md) at runtime.

### position

**Type:** tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] · _optional_

Only loaded if `layers` is not defined.

Loaded only when `x` and `y` are both `0`. The first member of the tuple is `x` and the second is `y`.

### premul_alpha

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Only loaded if `layers` is not defined.

Whether alpha should be pre-multiplied.

### priority

**Type:** [SpritePriority](../types/SpritePriority.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'medium'}`

Only loaded if `layers` is not defined.

### rotate_shift

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

### scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `layers` is not defined.

Values other than `1` specify the scale of the sprite on default zoom. A scale of `2` means that the picture will be two times bigger on screen (and thus more pixelated).

### shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

Only loaded if `layers` is not defined.

The shift in tiles. `util.by_pixel()` can be used to divide the shift by 32 which is the usual pixel height/width of 1 tile in normal resolution. Note that 32 pixel tile height/width is not enforced anywhere - any other tile height or width is also possible.

### size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) ∣ tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] · _optional_

Only loaded if `layers` is not defined.

The width and height of the sprite. If this is a tuple, the first member of the tuple is the width and the second is the height. Otherwise the size is both width and height. Width and height may only be in the range of 0-4096.

### surface

**Type:** [SpriteUsageSurfaceHint](../types/SpriteUsageSurfaceHint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'any'}`

Only loaded if `layers` is not defined.

Provides hint to sprite atlas system, so it can try to put sprites that are intended to be used at the same locations to the same sprite atlas.

### tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=1, g=1, b=1, a=1}``

Only loaded if `layers` is not defined.

### tint_as_overlay

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `layers` is not defined.

### type

**Type:** `"sprite"`

### usage

**Type:** [SpriteUsageHint](../types/SpriteUsageHint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'any'}`

Only loaded if `layers` is not defined.

Provides hint to sprite atlas system, so it can pack sprites that are related to each other to the same sprite atlas.

### width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_

Only loaded if `layers` is not defined. Mandatory if `size` is not defined.

Width of the picture in pixels, from 0-4096.

### x

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `layers` is not defined.

Horizontal position of the sprite in the source file in pixels.

### y

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `layers` is not defined.

Vertical position of the sprite in the source file in pixels.
