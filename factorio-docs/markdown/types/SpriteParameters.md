# SpriteParameters

_type_ · **abstract**

**Inherits from:** [SpriteSource](../types/SpriteSource.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [apply_runtime_tint](#apply-runtime-tint) | [boolean](../types/boolean.md) | yes |
| [apply_special_effect](#apply-special-effect) | [boolean](../types/boolean.md) | yes |
| [blend_mode](#blend-mode) | [BlendMode](../types/BlendMode.md) | yes |
| [draw_as_glow](#draw-as-glow) | [boolean](../types/boolean.md) | yes |
| [draw_as_light](#draw-as-light) | [boolean](../types/boolean.md) | yes |
| [draw_as_shadow](#draw-as-shadow) | [boolean](../types/boolean.md) | yes |
| [flags](#flags) | [SpriteFlags](../types/SpriteFlags.md) | yes |
| [generate_sdf](#generate-sdf) | [boolean](../types/boolean.md) | yes |
| [invert_colors](#invert-colors) | [boolean](../types/boolean.md) | yes |
| [mipmap_count](#mipmap-count) | [uint8](../types/uint8.md) | yes |
| [occludes_light](#occludes-light) | [boolean](../types/boolean.md) | yes |
| [priority](#priority) | [SpritePriority](../types/SpritePriority.md) | yes |
| [rotate_shift](#rotate-shift) | [boolean](../types/boolean.md) | yes |
| [scale](#scale) | [double](../types/double.md) | yes |
| [shift](#shift) | [Vector](../types/Vector.md) | yes |
| [surface](#surface) | [SpriteUsageSurfaceHint](../types/SpriteUsageSurfaceHint.md) | yes |
| [tint](#tint) | [Color](../types/Color.md) | yes |
| [tint_as_overlay](#tint-as-overlay) | [boolean](../types/boolean.md) | yes |
| [usage](#usage) | [SpriteUsageHint](../types/SpriteUsageHint.md) | yes |

### apply_runtime_tint

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### apply_special_effect

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### blend_mode

**Type:** [BlendMode](../types/BlendMode.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'normal'}`

### draw_as_glow

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true. This takes precedence over `draw_as_light`.

Draws first as a normal sprite, then again as a light layer. See [https://forums.factorio.com/91682](https://forums.factorio.com/91682).

### draw_as_light

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true.

### draw_as_shadow

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only one of `draw_as_shadow`, `draw_as_glow` and `draw_as_light` can be true. This takes precedence over `draw_as_glow` and `draw_as_light`.

### flags

**Type:** [SpriteFlags](../types/SpriteFlags.md) · _optional_

### generate_sdf

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

This property is only used by sprites used in [UtilitySprites](../prototypes/UtilitySprites.md) that have the `"icon"` flag set.

If this is set to `true`, the game will generate an icon shadow (using signed distance fields) for the sprite.

### invert_colors

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### mipmap_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if this is an icon, that is it has the flag `"group=icon"` or `"group=gui"`. Will be clamped to range `[0, 5]`.

### occludes_light

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Loaded only if `draw_as_shadow`, `draw_as_glow` and `draw_as_light` are `false`, and only by sprites used by tile renderer (decals and underwater patches). The purpose of setting this to `false` is to preserve water mask from sprites that are supposed to be drawn under the water.

### priority

**Type:** [SpritePriority](../types/SpritePriority.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'medium'}`

### rotate_shift

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether to rotate the `shift` alongside the sprite's rotation. This only applies to sprites which are procedurally rotated by the game engine (like projectiles, wires, inserter hands, etc).

### scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Values other than `1` specify the scale of the sprite on default zoom. A scale of `2` means that the picture will be two times bigger on screen (and thus more pixelated).

### shift

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

The shift in tiles. `util.by_pixel()` can be used to divide the shift by 32 which is the usual pixel height/width of 1 tile in normal resolution. Note that 32 pixel tile height/width is not enforced anywhere - any other tile height or width is also possible.

### surface

**Type:** [SpriteUsageSurfaceHint](../types/SpriteUsageSurfaceHint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'any'}`

Provides hint to sprite atlas system, so it can try to put sprites that are intended to be used at the same locations to the same sprite atlas.

### tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=1, g=1, b=1, a=1}``

### tint_as_overlay

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### usage

**Type:** [SpriteUsageHint](../types/SpriteUsageHint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'any'}`

Provides hint to sprite atlas system, so it can pack sprites that are related to each other to the same sprite atlas.
