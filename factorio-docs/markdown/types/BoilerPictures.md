# BoilerPictures

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [fire](#fire) | [Animation](../types/Animation.md) | yes |
| [fire_glow](#fire-glow) | [Animation](../types/Animation.md) | yes |
| [patch](#patch) | [Sprite](../types/Sprite.md) | yes |
| [structure](#structure) | [Animation](../types/Animation.md) |  |

### fire

**Type:** [Animation](../types/Animation.md) · _optional_

Animation that is drawn on top of the `structure` when `burning_cooldown` is larger than 1. The animation alpha can be controlled by the energy source light intensity, depending on `fire_flicker_enabled`.

The secondary draw order of this is higher than the secondary draw order of `fire_glow`, so this is drawn above `fire_glow`.

### fire_glow

**Type:** [Animation](../types/Animation.md) · _optional_

Animation that is drawn on top of the `structure` when `burning_cooldown` is larger than 1. The animation alpha can be controlled by the energy source light intensity, depending on `fire_glow_flicker_enabled`.

The secondary draw order of this is lower than the secondary draw order of `fire`, so this is drawn below `fire`.

### patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

Drawn above the `structure`, in the "higher-object-under" [RenderLayer](../types/RenderLayer.md). May be useful to correct problems with neighboring pipes overlapping the structure graphics.

### structure

**Type:** [Animation](../types/Animation.md)
