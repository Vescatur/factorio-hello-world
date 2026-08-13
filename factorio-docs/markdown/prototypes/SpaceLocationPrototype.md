# SpaceLocationPrototype

_prototype_

**Prototype type string:** `type = "space-location"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A space location, such as a planet or the solar system edge.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [asteroid_spawn_definitions](#asteroid-spawn-definitions) | array[[SpaceLocationAsteroidSpawnDefinition](../types/SpaceLocationAsteroidSpawnDefinition.md)] | yes |
| [asteroid_spawn_influence](#asteroid-spawn-influence) | [double](../types/double.md) | yes |
| [auto_save_on_first_trip](#auto-save-on-first-trip) | [boolean](../types/boolean.md) | yes |
| [distance](#distance) | [double](../types/double.md) |  |
| [draw_orbit](#draw-orbit) | [boolean](../types/boolean.md) | yes |
| [fly_condition](#fly-condition) | [boolean](../types/boolean.md) | yes |
| [gravity_pull](#gravity-pull) | [double](../types/double.md) | yes |
| [hidden](#hidden) | [boolean](../types/boolean.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [label_orientation](#label-orientation) | [RealOrientation](../types/RealOrientation.md) | yes |
| [magnitude](#magnitude) | [double](../types/double.md) | yes |
| [orientation](#orientation) | [RealOrientation](../types/RealOrientation.md) |  |
| [parked_platforms_orientation](#parked-platforms-orientation) | [RealOrientation](../types/RealOrientation.md) | yes |
| [planet_procession_set](#planet-procession-set) | [ProcessionSet](../types/ProcessionSet.md) | yes |
| [platform_procession_set](#platform-procession-set) | [ProcessionSet](../types/ProcessionSet.md) | yes |
| [platform_surface_render_parameters](#platform-surface-render-parameters) | [SurfaceRenderParameters](../types/SurfaceRenderParameters.md) | yes |
| [procession_audio_catalogue](#procession-audio-catalogue) | [ProcessionAudioCatalogue](../types/ProcessionAudioCatalogue.md) | yes |
| [procession_graphic_catalogue](#procession-graphic-catalogue) | [ProcessionGraphicCatalogue](../types/ProcessionGraphicCatalogue.md) | yes |
| [solar_power_in_space](#solar-power-in-space) | [double](../types/double.md) | yes |
| [starmap_icon](#starmap-icon) | [FileName](../types/FileName.md) | yes |
| [starmap_icon_orientation](#starmap-icon-orientation) | [RealOrientation](../types/RealOrientation.md) | yes |
| [starmap_icon_size](#starmap-icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [starmap_icons](#starmap-icons) | array[[IconData](../types/IconData.md)] | yes |

### asteroid_spawn_definitions

**Type:** array[[SpaceLocationAsteroidSpawnDefinition](../types/SpaceLocationAsteroidSpawnDefinition.md)] · _optional_

### asteroid_spawn_influence

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

If greater than 0, `asteroid_spawn_definitions` will be used on space connections of this location, interpolated based on distance. The number specifies the percentage of the route where the location stops spawning its asteroids.

### auto_save_on_first_trip

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### distance

**Type:** [double](../types/double.md)

Distance from the sun in map coordinates.

### draw_orbit

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If `false`, the orbital ring around the sun will not be drawn for this location.

### fly_condition

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set to true, it means that this connection offers fly condition rather than wait condition at the destination

### gravity_pull

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

A value which modifies platform speed; is subtracted when traveling from this location and added when traveling to this location.

### hidden

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Hides the space location from the planet selection lists and the space map.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### label_orientation

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.25}`

The orientation where the location's name will be drawn.

### magnitude

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

The apparent size of the space location in map coordinates.

### orientation

**Type:** [RealOrientation](../types/RealOrientation.md)

Angle in relation to the sun.

### parked_platforms_orientation

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_ · **Default:** `same as orientation`

The orientation where parked space platforms will be drawn.

### planet_procession_set

**Type:** [ProcessionSet](../types/ProcessionSet.md) · _optional_

These transitions are used for anything traveling from the surface associated with this location.

### platform_procession_set

**Type:** [ProcessionSet](../types/ProcessionSet.md) · _optional_

These transitions are used for any platform stopped at this location.

### platform_surface_render_parameters

**Type:** [SurfaceRenderParameters](../types/SurfaceRenderParameters.md) · _optional_

Render parameters that influence platforms orbiting this space location.

### procession_audio_catalogue

**Type:** [ProcessionAudioCatalogue](../types/ProcessionAudioCatalogue.md) · _optional_

### procession_graphic_catalogue

**Type:** [ProcessionGraphicCatalogue](../types/ProcessionGraphicCatalogue.md) · _optional_

### solar_power_in_space

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### starmap_icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded if `starmap_icons` is not defined.

### starmap_icon_orientation

**Type:** [RealOrientation](../types/RealOrientation.md) · _optional_

Orientation of the starmap icon, defaults to pointing towards the sun.

### starmap_icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the starmap icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `starmap_icons` is not defined.

### starmap_icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.
