# LuaSpaceLocationPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a space location, such as a planet.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [asteroid_spawn_definitions](#asteroid-spawn-definitions) | array[[SpaceLocationAsteroidSpawnDefinition](../concepts/SpaceLocationAsteroidSpawnDefinition.md)] | yes |
| [asteroid_spawn_influence](#asteroid-spawn-influence) | [double](../concepts/double.md) |  |
| [distance](#distance) | [double](../concepts/double.md) |  |
| [draw_orbit](#draw-orbit) | [boolean](../concepts/boolean.md) |  |
| [entities_require_heating](#entities-require-heating) | [boolean](../concepts/boolean.md) | yes |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) | yes |
| [fly_condition](#fly-condition) | [boolean](../concepts/boolean.md) |  |
| [gravity_pull](#gravity-pull) | [double](../concepts/double.md) |  |
| [label_orientation](#label-orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [magnitude](#magnitude) | [double](../concepts/double.md) |  |
| [map_gen_settings](#map-gen-settings) | [MapGenSettings](../concepts/MapGenSettings.md) | yes |
| [map_seed_offset](#map-seed-offset) | [uint32](../concepts/uint32.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [orientation](#orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [parked_platforms_orientation](#parked-platforms-orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [parked_platforms_position](#parked-platforms-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [player_effects](#player-effects) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [pollutant_type](#pollutant-type) | [LuaAirbornePollutantPrototype](../classes/LuaAirbornePollutantPrototype.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [solar_power_in_space](#solar-power-in-space) | [double](../concepts/double.md) |  |
| [starmap_icon_orientation](#starmap-icon-orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [surface_properties](#surface-properties) | dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] | yes |
| [ticks_between_player_effects](#ticks-between-player-effects) | [uint32](../concepts/uint32.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### asteroid_spawn_definitions

**Read:** array[[SpaceLocationAsteroidSpawnDefinition](../concepts/SpaceLocationAsteroidSpawnDefinition.md)] · _read-only_ · _optional_

### asteroid_spawn_influence

**Read:** [double](../concepts/double.md) · _read-only_

### distance

**Read:** [double](../concepts/double.md) · _read-only_

### draw_orbit

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### entities_require_heating

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### factoriopedia_alternative

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### fly_condition

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### gravity_pull

**Read:** [double](../concepts/double.md) · _read-only_

### label_orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · _read-only_

### magnitude

**Read:** [double](../concepts/double.md) · _read-only_

### map_gen_settings

**Read:** [MapGenSettings](../concepts/MapGenSettings.md) · _read-only_ · _optional_

### map_seed_offset

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · _read-only_

### parked_platforms_orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · _read-only_

### parked_platforms_position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

### player_effects

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### pollutant_type

**Read:** [LuaAirbornePollutantPrototype](../classes/LuaAirbornePollutantPrototype.md) · _read-only_ · _optional_

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · _read-only_

### solar_power_in_space

**Read:** [double](../concepts/double.md) · _read-only_

### starmap_icon_orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · _read-only_

### surface_properties

**Read:** dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] · _read-only_ · _optional_

A mapping of the surface property name to the value.

### ticks_between_player_effects

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
