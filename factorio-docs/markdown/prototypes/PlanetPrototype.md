# PlanetPrototype

_prototype_

**Prototype type string:** `type = "planet"`

**Inherits from:** [SpaceLocationPrototype](../prototypes/SpaceLocationPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [entities_require_heating](#entities-require-heating) | [boolean](../types/boolean.md) | yes |
| [lightning_properties](#lightning-properties) | [LightningProperties](../types/LightningProperties.md) | yes |
| [map_gen_settings](#map-gen-settings) | [PlanetPrototypeMapGenSettings](../types/PlanetPrototypeMapGenSettings.md) | yes |
| [map_seed_offset](#map-seed-offset) | [uint32](../types/uint32.md) | yes |
| [persistent_ambient_sounds](#persistent-ambient-sounds) | [PersistentWorldAmbientSoundsDefinition](../types/PersistentWorldAmbientSoundsDefinition.md) | yes |
| [player_effects](#player-effects) | [Trigger](../types/Trigger.md) | yes |
| [pollutant_type](#pollutant-type) | [AirbornePollutantID](../types/AirbornePollutantID.md) | yes |
| [surface_properties](#surface-properties) | dictionary[[SurfacePropertyID](../types/SurfacePropertyID.md) → [double](../types/double.md)] | yes |
| [surface_render_parameters](#surface-render-parameters) | [SurfaceRenderParameters](../types/SurfaceRenderParameters.md) | yes |
| [ticks_between_player_effects](#ticks-between-player-effects) | [MapTick](../types/MapTick.md) | yes |

### entities_require_heating

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### lightning_properties

**Type:** [LightningProperties](../types/LightningProperties.md) · _optional_

### map_gen_settings

**Type:** [PlanetPrototypeMapGenSettings](../types/PlanetPrototypeMapGenSettings.md) · _optional_

### map_seed_offset

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `CRC checksum of `name``

### persistent_ambient_sounds

**Type:** [PersistentWorldAmbientSoundsDefinition](../types/PersistentWorldAmbientSoundsDefinition.md) · _optional_

### player_effects

**Type:** [Trigger](../types/Trigger.md) · _optional_

### pollutant_type

**Type:** [AirbornePollutantID](../types/AirbornePollutantID.md) · _optional_

### surface_properties

**Type:** dictionary[[SurfacePropertyID](../types/SurfacePropertyID.md) → [double](../types/double.md)] · _optional_

### surface_render_parameters

**Type:** [SurfaceRenderParameters](../types/SurfaceRenderParameters.md) · _optional_

### ticks_between_player_effects

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
