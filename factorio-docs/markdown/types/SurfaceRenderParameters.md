# SurfaceRenderParameters

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [clouds](#clouds) | [CloudsEffectProperties](../types/CloudsEffectProperties.md) | yes |
| [day_night_cycle_color_lookup](#day-night-cycle-color-lookup) | [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md) | yes |
| [draw_sprite_clouds](#draw-sprite-clouds) | [boolean](../types/boolean.md) | yes |
| [fog](#fog) | [FogEffectProperties](../types/FogEffectProperties.md) | yes |
| [platform_backdrop](#platform-backdrop) | [PlatformBackdrop](../types/PlatformBackdrop.md) | yes |
| [shadow_opacity](#shadow-opacity) | [float](../types/float.md) | yes |
| [space_dust_background](#space-dust-background) | [SpaceDustEffectProperties](../types/SpaceDustEffectProperties.md) | yes |
| [space_dust_foreground](#space-dust-foreground) | [SpaceDustEffectProperties](../types/SpaceDustEffectProperties.md) | yes |
| [terrain_tint_effect](#terrain-tint-effect) | [GlobalTintEffectProperties](../types/GlobalTintEffectProperties.md) | yes |

### clouds

**Type:** [CloudsEffectProperties](../types/CloudsEffectProperties.md) · _optional_

### day_night_cycle_color_lookup

**Type:** [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md) · _optional_

### draw_sprite_clouds

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set to `true` and `clouds` property is not set, the legacy sprite clouds will be rendered on the surface.

### fog

**Type:** [FogEffectProperties](../types/FogEffectProperties.md) · _optional_

### platform_backdrop

**Type:** [PlatformBackdrop](../types/PlatformBackdrop.md) · _optional_

### shadow_opacity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### space_dust_background

**Type:** [SpaceDustEffectProperties](../types/SpaceDustEffectProperties.md) · _optional_

### space_dust_foreground

**Type:** [SpaceDustEffectProperties](../types/SpaceDustEffectProperties.md) · _optional_

### terrain_tint_effect

**Type:** [GlobalTintEffectProperties](../types/GlobalTintEffectProperties.md) · _optional_
