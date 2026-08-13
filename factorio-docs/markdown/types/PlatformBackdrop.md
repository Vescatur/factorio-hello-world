# PlatformBackdrop

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [atmosphere_color](#atmosphere-color) | [Color](../types/Color.md) | yes |
| [atmosphere_ray_light_color_1](#atmosphere-ray-light-color-1) | [Color](../types/Color.md) | yes |
| [atmosphere_ray_light_color_2](#atmosphere-ray-light-color-2) | [Color](../types/Color.md) | yes |
| [atmosphere_thickness](#atmosphere-thickness) | [float](../types/float.md) | yes |
| [cloud_flow_intensity](#cloud-flow-intensity) | [float](../types/float.md) | yes |
| [cloud_flow_seconds](#cloud-flow-seconds) | [float](../types/float.md) | yes |
| [cloud_normal_intensity](#cloud-normal-intensity) | [float](../types/float.md) | yes |
| [cloud_panning_rate](#cloud-panning-rate) | [float](../types/float.md) | yes |
| [cloud_vertical_offset](#cloud-vertical-offset) | [float](../types/float.md) | yes |
| [cloudiness](#cloudiness) | [float](../types/float.md) | yes |
| [emission_scalar](#emission-scalar) | [float](../types/float.md) | yes |
| [emission_scales_with_shadow](#emission-scales-with-shadow) | [boolean](../types/boolean.md) | yes |
| [flight_approach_speed](#flight-approach-speed) | [float](../types/float.md) | yes |
| [global_cloud](#global-cloud) | [EffectTexture](../types/EffectTexture.md) | yes |
| [global_cloud_flow](#global-cloud-flow) | [EffectTexture](../types/EffectTexture.md) | yes |
| [global_cloud_normal](#global-cloud-normal) | [EffectTexture](../types/EffectTexture.md) | yes |
| [hero_cloud_texture_1](#hero-cloud-texture-1) | [Animation](../types/Animation.md) | yes |
| [hero_cloud_texture_2](#hero-cloud-texture-2) | [Animation](../types/Animation.md) | yes |
| [hero_cloud_texture_3](#hero-cloud-texture-3) | [Animation](../types/Animation.md) | yes |
| [hero_clouds](#hero-clouds) | array[[PlatformBackdropHeroCloud](../types/PlatformBackdropHeroCloud.md)] | yes |
| [hero_clouds_are_emissive](#hero-clouds-are-emissive) | [boolean](../types/boolean.md) | yes |
| [light_color](#light-color) | [Color](../types/Color.md) | yes |
| [light_direction](#light-direction) | [Vector3D](../types/Vector3D.md) | yes |
| [light_intensity_contrast](#light-intensity-contrast) | [float](../types/float.md) | yes |
| [light_radius](#light-radius) | [float](../types/float.md) | yes |
| [parallax_strength](#parallax-strength) | [Vector](../types/Vector.md) | yes |
| [planet_axis](#planet-axis) | [Vector](../types/Vector.md) | yes |
| [planet_axis_deviation_amplitude](#planet-axis-deviation-amplitude) | [Vector](../types/Vector.md) | yes |
| [planet_axis_deviation_seconds](#planet-axis-deviation-seconds) | [Vector](../types/Vector.md) | yes |
| [planet_emission](#planet-emission) | [EffectTexture](../types/EffectTexture.md) | yes |
| [planet_normal](#planet-normal) | [EffectTexture](../types/EffectTexture.md) | yes |
| [planet_reflectivity](#planet-reflectivity) | [EffectTexture](../types/EffectTexture.md) | yes |
| [planet_surface](#planet-surface) | [EffectTexture](../types/EffectTexture.md) | yes |
| [position](#position) | [Vector](../types/Vector.md) | yes |
| [radius](#radius) | [float](../types/float.md) | yes |
| [rotation_seconds](#rotation-seconds) | [float](../types/float.md) | yes |
| [specular_color](#specular-color) | [Color](../types/Color.md) | yes |
| [specular_intensity](#specular-intensity) | [float](../types/float.md) | yes |
| [surface_normal_intensity](#surface-normal-intensity) | [float](../types/float.md) | yes |
| [surface_vertical_offset](#surface-vertical-offset) | [float](../types/float.md) | yes |

### atmosphere_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0.095, 0.15, 0.19, 0.1}``

Color of atmospheric light. Multiplied by 10 in shader.

### atmosphere_ray_light_color_1

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0.5, 0.26665, 0.0, 1.0}``

Color of dawn side of terminator light. Multiplied by 10 in shader.

### atmosphere_ray_light_color_2

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0.1, 0.08431, 0.05059, 1.0}``

Color of dusk side of terminator light. Multiplied by 10 in shader.

### atmosphere_thickness

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.02}`

Width of the atmosphere layer as portion of the total radius.

### cloud_flow_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.3}`

Intensity of the flow map effect. Begins to degenerate at high values.

### cloud_flow_seconds

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 32.0}`

How many seconds it takes the flow effect to loop.

### cloud_normal_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### cloud_panning_rate

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

Rotational speed of the clouds laterally across the planet relative to `rotation_seconds` of the planet. `-1.0` means it counteracts the rotation rate and makes clouds remain in place. `0.0` means it drifts along with planet surface.

### cloud_vertical_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.015}`

How far below the atmosphere layer should the clouds be.

### cloudiness

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Amount of cloud texture to be used based off of the alpha channel of the cloud texture.

### emission_scalar

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2.0}`

### emission_scales_with_shadow

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When true only the dark side will receive emission.

### flight_approach_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Scales the speed at which the planet appears in view when flown towards.

### global_cloud

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

Cloud mapped over the planet as the surface texture.

### global_cloud_flow

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

Flow map distorting the global cloud.

### global_cloud_normal

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

### hero_cloud_texture_1

**Type:** [Animation](../types/Animation.md) · _optional_

Sprite or Animation to be referenced by `hero_clouds` definitions with `sprite_index` 1.

### hero_cloud_texture_2

**Type:** [Animation](../types/Animation.md) · _optional_

Sprite or Animation to be referenced by `hero_clouds` definitions with `sprite_index` 2.

### hero_cloud_texture_3

**Type:** [Animation](../types/Animation.md) · _optional_

Sprite or Animation to be referenced by `hero_clouds` definitions with `sprite_index` 3.

### hero_clouds

**Type:** array[[PlatformBackdropHeroCloud](../types/PlatformBackdropHeroCloud.md)] · _optional_

Individual Hero Cloud decals over the planet surface. The maximum number is four.

### hero_clouds_are_emissive

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When true the hero clouds will add their color to emission as well.

### light_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0.9804, 1.0, 1.0, 1.0}``

Color of light. Multiplied by 10 in shader.

### light_direction

**Type:** [Vector3D](../types/Vector3D.md) · _optional_ · **Default:** ``{-1.0, 0.0, 0.5}``

### light_intensity_contrast

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.7}`

Harshness of the terminator. Functions like atmosphere thickness.

### light_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 9.9}`

Perceived size of the light. Also affects size of the specular spot.

### parallax_strength

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{1.0, 1.0}``

How strongly the planet moves with camera. `{1.0, 1.0}` means it tracks the starfield. `{0.0, 0.0}` means it tracks the foreground tiles.

### planet_axis

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{-30.0, 20.0}``

Tilt and pitch of the planet axis.

### planet_axis_deviation_amplitude

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0.0, 0.0}``

How much tilt and pitch vary over time.

### planet_axis_deviation_seconds

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{609.2, 712.7}``

Number of seconds it takes for tilt and pitch to complete one cycle of deviation.

### planet_emission

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

Emissive light added to the surface. Can be disabled on lit side using the `emission_scales_with_shadow` property.

### planet_normal

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

Normal map of the surface deforming local sphere normal.

### planet_reflectivity

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

Glossiness of the surface in red channel.

### planet_surface

**Type:** [EffectTexture](../types/EffectTexture.md) · _optional_

Wrapped around the surface of the sphere using equirectangular projection.

### position

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{-450.0, -50.0}``

### radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 400.0}`

### rotation_seconds

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 340.0}`

How many seconds it takes for the planet to do one revolution.

### specular_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{1.0, 1.0, 1.0, 1.0}``

Color of specular light. Multiplied by 10 in shader.

### specular_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### surface_normal_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### surface_vertical_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

How far below the atmosphere layer should the surface be.
