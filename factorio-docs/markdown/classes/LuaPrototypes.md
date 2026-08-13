# LuaPrototypes

_class_

Provides read-only access to prototypes. It is accessible through the global object named `prototypes`.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [achievement](#achievement) | LuaCustomTable[[string](../concepts/string.md) → [LuaAchievementPrototype](../classes/LuaAchievementPrototype.md)] |  |
| [active_trigger](#active-trigger) | LuaCustomTable[[string](../concepts/string.md) → [LuaActiveTriggerPrototype](../classes/LuaActiveTriggerPrototype.md)] |  |
| [airborne_pollutant](#airborne-pollutant) | LuaCustomTable[[string](../concepts/string.md) → [LuaAirbornePollutantPrototype](../classes/LuaAirbornePollutantPrototype.md)] |  |
| [ammo_category](#ammo-category) | LuaCustomTable[[string](../concepts/string.md) → [LuaAmmoCategoryPrototype](../classes/LuaAmmoCategoryPrototype.md)] |  |
| [asteroid_chunk](#asteroid-chunk) | LuaCustomTable[[string](../concepts/string.md) → [LuaAsteroidChunkPrototype](../classes/LuaAsteroidChunkPrototype.md)] |  |
| [autoplace_control](#autoplace-control) | LuaCustomTable[[string](../concepts/string.md) → [LuaAutoplaceControlPrototype](../classes/LuaAutoplaceControlPrototype.md)] |  |
| [burner_usage](#burner-usage) | LuaCustomTable[[string](../concepts/string.md) → [LuaBurnerUsagePrototype](../classes/LuaBurnerUsagePrototype.md)] |  |
| [collision_layer](#collision-layer) | LuaCustomTable[[string](../concepts/string.md) → [LuaCollisionLayerPrototype](../classes/LuaCollisionLayerPrototype.md)] |  |
| [custom_event](#custom-event) | LuaCustomTable[[string](../concepts/string.md) → [LuaCustomEventPrototype](../classes/LuaCustomEventPrototype.md)] |  |
| [custom_input](#custom-input) | LuaCustomTable[[string](../concepts/string.md) → [LuaCustomInputPrototype](../classes/LuaCustomInputPrototype.md)] |  |
| [damage](#damage) | LuaCustomTable[[string](../concepts/string.md) → [LuaDamagePrototype](../classes/LuaDamagePrototype.md)] |  |
| [decorative](#decorative) | LuaCustomTable[[string](../concepts/string.md) → [LuaDecorativePrototype](../classes/LuaDecorativePrototype.md)] |  |
| [entity](#entity) | LuaCustomTable[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)] |  |
| [equipment](#equipment) | LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md)] |  |
| [equipment_category](#equipment-category) | LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentCategoryPrototype](../classes/LuaEquipmentCategoryPrototype.md)] |  |
| [equipment_grid](#equipment-grid) | LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md)] |  |
| [fluid](#fluid) | LuaCustomTable[[string](../concepts/string.md) → [LuaFluidPrototype](../classes/LuaFluidPrototype.md)] |  |
| [font](#font) | LuaCustomTable[[string](../concepts/string.md) → [LuaFontPrototype](../classes/LuaFontPrototype.md)] |  |
| [fuel_category](#fuel-category) | LuaCustomTable[[string](../concepts/string.md) → [LuaFuelCategoryPrototype](../classes/LuaFuelCategoryPrototype.md)] |  |
| [item](#item) | LuaCustomTable[[string](../concepts/string.md) → [LuaItemPrototype](../classes/LuaItemPrototype.md)] |  |
| [item_group](#item-group) | LuaCustomTable[[string](../concepts/string.md) → [LuaGroup](../classes/LuaGroup.md)] |  |
| [item_subgroup](#item-subgroup) | LuaCustomTable[[string](../concepts/string.md) → [LuaGroup](../classes/LuaGroup.md)] |  |
| [map_gen_preset](#map-gen-preset) | LuaCustomTable[[string](../concepts/string.md) → [MapGenPreset](../concepts/MapGenPreset.md)] |  |
| [max_beacon_supply_area_distance](#max-beacon-supply-area-distance) | [uint32](../concepts/uint32.md) |  |
| [max_electric_pole_connection_distance](#max-electric-pole-connection-distance) | [double](../concepts/double.md) |  |
| [max_electric_pole_supply_area_distance](#max-electric-pole-supply-area-distance) | [float](../concepts/float.md) |  |
| [max_force_distraction_chunk_distance](#max-force-distraction-chunk-distance) | [uint32](../concepts/uint32.md) |  |
| [max_force_distraction_distance](#max-force-distraction-distance) | [double](../concepts/double.md) |  |
| [max_gate_activation_distance](#max-gate-activation-distance) | [double](../concepts/double.md) |  |
| [max_inserter_reach_distance](#max-inserter-reach-distance) | [double](../concepts/double.md) |  |
| [max_logistics_connection_distance](#max-logistics-connection-distance) | [float](../concepts/float.md) |  |
| [max_pipe_to_ground_distance](#max-pipe-to-ground-distance) | [uint8](../concepts/uint8.md) |  |
| [max_underground_belt_distance](#max-underground-belt-distance) | [uint8](../concepts/uint8.md) |  |
| [mod_data](#mod-data) | LuaCustomTable[[string](../concepts/string.md) → [LuaModData](../classes/LuaModData.md)] |  |
| [mod_setting](#mod-setting) | LuaCustomTable[[string](../concepts/string.md) → [LuaModSettingPrototype](../classes/LuaModSettingPrototype.md)] |  |
| [module_category](#module-category) | LuaCustomTable[[string](../concepts/string.md) → [LuaModuleCategoryPrototype](../classes/LuaModuleCategoryPrototype.md)] |  |
| [named_noise_expression](#named-noise-expression) | LuaCustomTable[[string](../concepts/string.md) → [LuaNamedNoiseExpression](../classes/LuaNamedNoiseExpression.md)] |  |
| [named_noise_function](#named-noise-function) | LuaCustomTable[[string](../concepts/string.md) → [LuaNamedNoiseFunction](../classes/LuaNamedNoiseFunction.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [particle](#particle) | LuaCustomTable[[string](../concepts/string.md) → [LuaParticlePrototype](../classes/LuaParticlePrototype.md)] |  |
| [procession](#procession) | LuaCustomTable[[string](../concepts/string.md) → [LuaProcessionPrototype](../classes/LuaProcessionPrototype.md)] |  |
| [procession_layer_inheritance_group](#procession-layer-inheritance-group) | LuaCustomTable[[string](../concepts/string.md) → [LuaProcessionLayerInheritanceGroupPrototype](../classes/LuaProcessionLayerInheritanceGroupPrototype.md)] |  |
| [quality](#quality) | LuaCustomTable[[string](../concepts/string.md) → [LuaQualityPrototype](../classes/LuaQualityPrototype.md)] |  |
| [recipe](#recipe) | LuaCustomTable[[string](../concepts/string.md) → [LuaRecipePrototype](../classes/LuaRecipePrototype.md)] |  |
| [recipe_category](#recipe-category) | LuaCustomTable[[string](../concepts/string.md) → [LuaRecipeCategoryPrototype](../classes/LuaRecipeCategoryPrototype.md)] |  |
| [resource_category](#resource-category) | LuaCustomTable[[string](../concepts/string.md) → [LuaResourceCategoryPrototype](../classes/LuaResourceCategoryPrototype.md)] |  |
| [shortcut](#shortcut) | LuaCustomTable[[string](../concepts/string.md) → [LuaShortcutPrototype](../classes/LuaShortcutPrototype.md)] |  |
| [space_connection](#space-connection) | LuaCustomTable[[string](../concepts/string.md) → [LuaSpaceConnectionPrototype](../classes/LuaSpaceConnectionPrototype.md)] |  |
| [space_location](#space-location) | LuaCustomTable[[string](../concepts/string.md) → [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md)] |  |
| [style](#style) | LuaCustomTable[[string](../concepts/string.md) → [string](../concepts/string.md)] |  |
| [surface](#surface) | LuaCustomTable[[string](../concepts/string.md) → [LuaSurfacePrototype](../classes/LuaSurfacePrototype.md)] |  |
| [surface_property](#surface-property) | LuaCustomTable[[string](../concepts/string.md) → [LuaSurfacePropertyPrototype](../classes/LuaSurfacePropertyPrototype.md)] |  |
| [technology](#technology) | LuaCustomTable[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] |  |
| [tile](#tile) | LuaCustomTable[[string](../concepts/string.md) → [LuaTilePrototype](../classes/LuaTilePrototype.md)] |  |
| [trivial_smoke](#trivial-smoke) | LuaCustomTable[[string](../concepts/string.md) → [LuaTrivialSmokePrototype](../classes/LuaTrivialSmokePrototype.md)] |  |
| [utility_constants](#utility-constants) | [UtilityConstants](../concepts/UtilityConstants.md) |  |
| [virtual_signal](#virtual-signal) | LuaCustomTable[[string](../concepts/string.md) → [LuaVirtualSignalPrototype](../classes/LuaVirtualSignalPrototype.md)] |  |

### achievement

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaAchievementPrototype](../classes/LuaAchievementPrototype.md)] · _read-only_

A dictionary containing every LuaAchievementPrototype indexed by `name`.

### active_trigger

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaActiveTriggerPrototype](../classes/LuaActiveTriggerPrototype.md)] · _read-only_

A dictionary containing every LuaActiveTriggerPrototype indexed by `name`.

### airborne_pollutant

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaAirbornePollutantPrototype](../classes/LuaAirbornePollutantPrototype.md)] · _read-only_

A dictionary containing every LuaAirbornePollutantPrototype indexed by `name`.

### ammo_category

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaAmmoCategoryPrototype](../classes/LuaAmmoCategoryPrototype.md)] · _read-only_

A dictionary containing every LuaAmmoCategoryPrototype indexed by `name`.

### asteroid_chunk

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaAsteroidChunkPrototype](../classes/LuaAsteroidChunkPrototype.md)] · _read-only_

A dictionary containing every LuaAsteroidChunkPrototype indexed by `name`.

### autoplace_control

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaAutoplaceControlPrototype](../classes/LuaAutoplaceControlPrototype.md)] · _read-only_

A dictionary containing every LuaAutoplaceControlPrototype indexed by `name`.

### burner_usage

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaBurnerUsagePrototype](../classes/LuaBurnerUsagePrototype.md)] · _read-only_

A dictionary containing every LuaBurnerUsagePrototype indexed by `name`.

### collision_layer

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaCollisionLayerPrototype](../classes/LuaCollisionLayerPrototype.md)] · _read-only_

A dictionary containing every LuaCollisionLayerPrototype indexed by `name`.

### custom_event

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaCustomEventPrototype](../classes/LuaCustomEventPrototype.md)] · _read-only_

A dictionary containing every defined custom event, indexed by `name`.

### custom_input

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaCustomInputPrototype](../classes/LuaCustomInputPrototype.md)] · _read-only_

A dictionary containing every LuaCustomInputPrototype indexed by `name`.

### damage

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaDamagePrototype](../classes/LuaDamagePrototype.md)] · _read-only_

A dictionary containing every LuaDamagePrototype indexed by `name`.

### decorative

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaDecorativePrototype](../classes/LuaDecorativePrototype.md)] · _read-only_

A dictionary containing every LuaDecorativePrototype indexed by `name`.

### entity

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_

A dictionary containing every LuaEntityPrototype indexed by `name`.

### equipment

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md)] · _read-only_

A dictionary containing every LuaEquipmentPrototype indexed by `name`.

### equipment_category

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentCategoryPrototype](../classes/LuaEquipmentCategoryPrototype.md)] · _read-only_

A dictionary containing every LuaEquipmentCategoryPrototype indexed by `name`.

### equipment_grid

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md)] · _read-only_

A dictionary containing every LuaEquipmentGridPrototype indexed by `name`.

### fluid

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaFluidPrototype](../classes/LuaFluidPrototype.md)] · _read-only_

A dictionary containing every LuaFluidPrototype indexed by `name`.

### font

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaFontPrototype](../classes/LuaFontPrototype.md)] · _read-only_

A dictionary containing every LuaFontPrototype indexed by `name`.

### fuel_category

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaFuelCategoryPrototype](../classes/LuaFuelCategoryPrototype.md)] · _read-only_

A dictionary containing every LuaFuelCategoryPrototype indexed by `name`.

### item

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_

A dictionary containing every LuaItemPrototype indexed by `name`.

### item_group

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaGroup](../classes/LuaGroup.md)] · _read-only_

A dictionary containing every ItemGroup indexed by `name`.

### item_subgroup

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaGroup](../classes/LuaGroup.md)] · _read-only_

A dictionary containing every ItemSubgroup indexed by `name`.

### map_gen_preset

**Read:** LuaCustomTable[[string](../concepts/string.md) → [MapGenPreset](../concepts/MapGenPreset.md)] · _read-only_

A dictionary containing every MapGenPreset indexed by `name`.

A MapGenPreset is an exact copy of the prototype table provided from the data stage.

### max_beacon_supply_area_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### max_electric_pole_connection_distance

**Read:** [double](../concepts/double.md) · _read-only_

### max_electric_pole_supply_area_distance

**Read:** [float](../concepts/float.md) · _read-only_

### max_force_distraction_chunk_distance

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### max_force_distraction_distance

**Read:** [double](../concepts/double.md) · _read-only_

### max_gate_activation_distance

**Read:** [double](../concepts/double.md) · _read-only_

### max_inserter_reach_distance

**Read:** [double](../concepts/double.md) · _read-only_

### max_logistics_connection_distance

**Read:** [float](../concepts/float.md) · _read-only_

### max_pipe_to_ground_distance

**Read:** [uint8](../concepts/uint8.md) · _read-only_

### max_underground_belt_distance

**Read:** [uint8](../concepts/uint8.md) · _read-only_

### mod_data

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaModData](../classes/LuaModData.md)] · _read-only_

A dictionary containing every LuaModData indexed by `name`.

### mod_setting

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaModSettingPrototype](../classes/LuaModSettingPrototype.md)] · _read-only_

A dictionary containing every LuaModSettingPrototype indexed by `name`.

### module_category

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaModuleCategoryPrototype](../classes/LuaModuleCategoryPrototype.md)] · _read-only_

A dictionary containing every LuaModuleCategoryPrototype indexed by `name`.

### named_noise_expression

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaNamedNoiseExpression](../classes/LuaNamedNoiseExpression.md)] · _read-only_

A dictionary containing every LuaNamedNoiseExpression indexed by `name`.

### named_noise_function

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaNamedNoiseFunction](../classes/LuaNamedNoiseFunction.md)] · _read-only_

A dictionary containing every LuaNamedNoiseFunction indexed by `name`.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### particle

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaParticlePrototype](../classes/LuaParticlePrototype.md)] · _read-only_

A dictionary containing every LuaParticlePrototype indexed by `name`.

### procession

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaProcessionPrototype](../classes/LuaProcessionPrototype.md)] · _read-only_

A dictionary containing every LuaProcessionPrototype indexed by `name`.

### procession_layer_inheritance_group

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaProcessionLayerInheritanceGroupPrototype](../classes/LuaProcessionLayerInheritanceGroupPrototype.md)] · _read-only_

A dictionary containing every LuaProcessionLayerInheritanceGroupPrototype indexed by `name`.

### quality

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaQualityPrototype](../classes/LuaQualityPrototype.md)] · _read-only_

### recipe

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaRecipePrototype](../classes/LuaRecipePrototype.md)] · _read-only_

A dictionary containing every LuaRecipePrototype indexed by `name`.

### recipe_category

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaRecipeCategoryPrototype](../classes/LuaRecipeCategoryPrototype.md)] · _read-only_

A dictionary containing every LuaRecipeCategoryPrototype indexed by `name`.

### resource_category

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaResourceCategoryPrototype](../classes/LuaResourceCategoryPrototype.md)] · _read-only_

A dictionary containing every LuaResourceCategoryPrototype indexed by `name`.

### shortcut

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaShortcutPrototype](../classes/LuaShortcutPrototype.md)] · _read-only_

A dictionary containing every LuaShortcutPrototype indexed by `name`.

### space_connection

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaSpaceConnectionPrototype](../classes/LuaSpaceConnectionPrototype.md)] · _read-only_

### space_location

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md)] · _read-only_

### style

**Read:** LuaCustomTable[[string](../concepts/string.md) → [string](../concepts/string.md)] · _read-only_

A map of styles that [LuaGuiElement](../classes/LuaGuiElement.md) can use.

Maps from the style's name to its type, as seen on [StyleSpecification](../types/StyleSpecification.md).

### surface

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaSurfacePrototype](../classes/LuaSurfacePrototype.md)] · _read-only_

A dictionary containing every LuaSurfacePrototype indexed by `name`.

### surface_property

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaSurfacePropertyPrototype](../classes/LuaSurfacePropertyPrototype.md)] · _read-only_

### technology

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] · _read-only_

A dictionary containing every [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) indexed by `name`.

### tile

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaTilePrototype](../classes/LuaTilePrototype.md)] · _read-only_

A dictionary containing every LuaTilePrototype indexed by `name`.

### trivial_smoke

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaTrivialSmokePrototype](../classes/LuaTrivialSmokePrototype.md)] · _read-only_

A dictionary containing every LuaTrivialSmokePrototype indexed by `name`.

### utility_constants

**Read:** [UtilityConstants](../concepts/UtilityConstants.md) · _read-only_

All game-defined utility constants. Note that his is implemented as a [LuaCustomTable](../classes/LuaCustomTable.md).

### virtual_signal

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaVirtualSignalPrototype](../classes/LuaVirtualSignalPrototype.md)] · _read-only_

A dictionary containing every LuaVirtualSignalPrototype indexed by `name`.

## Methods

| Method | Summary |
| --- | --- |
| [get_achievement_filtered](#get-achievement-filtered) | Returns a dictionary of all LuaAchievementPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_decorative_filtered](#get-decorative-filtered) | Returns a dictionary of all LuaDecorativePrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_entity_filtered](#get-entity-filtered) | Returns a dictionary of all LuaEntityPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_equipment_filtered](#get-equipment-filtered) | Returns a dictionary of all LuaEquipmentPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_fluid_filtered](#get-fluid-filtered) | Returns a dictionary of all LuaFluidPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_history](#get-history) | Gets the prototype history for the given type and name. |
| [get_item_filtered](#get-item-filtered) | Returns a dictionary of all LuaItemPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_mod_setting_filtered](#get-mod-setting-filtered) | Returns a dictionary of all LuaModSettingPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_recipe_filtered](#get-recipe-filtered) | Returns a dictionary of all LuaRecipePrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_technology_filtered](#get-technology-filtered) | Returns a dictionary of all LuaTechnologyPrototypes that fit the given filters. The prototypes are indexed by `name`. |
| [get_tile_filtered](#get-tile-filtered) | Returns a dictionary of all LuaTilePrototypes that fit the given filters. The prototypes are indexed by `name`. |

### get_achievement_filtered

`get_achievement_filtered(filters)`

Returns a dictionary of all LuaAchievementPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[AchievementPrototypeFilter](../concepts/AchievementPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaAchievementPrototype](../classes/LuaAchievementPrototype.md)]

**Example:**

```
-- Get every achievement prototype that is not allowed to be completed on the peaceful difficulty setting.
local prototypes = prototypes.get_achievement_filtered{{filter="allowed-without-fight", invert=true}}
```

### get_decorative_filtered

`get_decorative_filtered(filters)`

Returns a dictionary of all LuaDecorativePrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[DecorativePrototypeFilter](../concepts/DecorativePrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaDecorativePrototype](../classes/LuaDecorativePrototype.md)]

**Example:**

```
-- Get every decorative prototype that is auto-placed.
local prototypes = prototypes.get_decorative_filtered{{filter="autoplace"}}
```

### get_entity_filtered

`get_entity_filtered(filters)`

Returns a dictionary of all LuaEntityPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[EntityPrototypeFilter](../concepts/EntityPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaEntityPrototype](../classes/LuaEntityPrototype.md)]

**Example:**

```
-- Get every entity prototype that can craft recipes involving fluids in the way some assembling machines can
local prototypes = prototypes.get_entity_filtered{{filter="crafting-category", crafting_category="crafting-with-fluid"}}
```

### get_equipment_filtered

`get_equipment_filtered(filters)`

Returns a dictionary of all LuaEquipmentPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[EquipmentPrototypeFilter](../concepts/EquipmentPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md)]

**Example:**

```
-- Get every equipment prototype that functions as a battery.
local prototypes = prototypes.get_equipment_filtered{{filter="type", type="battery-equipment"}}
```

### get_fluid_filtered

`get_fluid_filtered(filters)`

Returns a dictionary of all LuaFluidPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[FluidPrototypeFilter](../concepts/FluidPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaFluidPrototype](../classes/LuaFluidPrototype.md)]

**Example:**

```
-- Get every fluid prototype that has a heat capacity of exactly `100`.
local prototypes = prototypes.get_fluid_filtered{{filter="heat-capacity", comparison="=", value=100}}
```

### get_history

`get_history(name, type)`

Gets the prototype history for the given type and name.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

##### type

**Type:** [string](../concepts/string.md)

#### Return values

- [PrototypeHistory](../concepts/PrototypeHistory.md)

### get_item_filtered

`get_item_filtered(filters)`

Returns a dictionary of all LuaItemPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[ItemPrototypeFilter](../concepts/ItemPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaItemPrototype](../classes/LuaItemPrototype.md)]

**Example:**

```
-- Get every item prototype that has a fuel top speed multiplier larger than 1.
local prototypes = prototypes.get_item_filtered{{filter = "fuel-top-speed-multiplier", comparison = ">", value = 1}}
```

### get_mod_setting_filtered

`get_mod_setting_filtered(filters)`

Returns a dictionary of all LuaModSettingPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[ModSettingPrototypeFilter](../concepts/ModSettingPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaModSettingPrototype](../classes/LuaModSettingPrototype.md)]

**Example:**

```
-- Get every mod setting prototype that belongs to the specified mod.
local prototypes = prototypes.get_mod_setting_filtered{{filter="mod", mod="space-exploration"}}
```

### get_recipe_filtered

`get_recipe_filtered(filters)`

Returns a dictionary of all LuaRecipePrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[RecipePrototypeFilter](../concepts/RecipePrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaRecipePrototype](../classes/LuaRecipePrototype.md)]

**Example:**

```
-- Get every recipe prototype that takes less than half a second to craft (at crafting speed `1`).
local prototypes = prototypes.get_recipe_filtered{{filter="energy", comparison="<", value=0.5}}
```

### get_technology_filtered

`get_technology_filtered(filters)`

Returns a dictionary of all LuaTechnologyPrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[TechnologyPrototypeFilter](../concepts/TechnologyPrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)]

**Example:**

```
-- Get every technology prototype that can be researched at the start of the game.
local prototypes = prototypes.get_technology_filtered{{filter="has-prerequisites", invert=true}}
```

### get_tile_filtered

`get_tile_filtered(filters)`

Returns a dictionary of all LuaTilePrototypes that fit the given filters. The prototypes are indexed by `name`.

#### Parameters

##### filters

**Type:** array[[TilePrototypeFilter](../concepts/TilePrototypeFilter.md)]

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [LuaTilePrototype](../classes/LuaTilePrototype.md)]

**Example:**

```
-- Get every tile prototype that improves a player's walking speed by at least 50%.
local prototypes = prototypes.get_tile_filtered{{filter="walking-speed-modifier", comparison="≥", value=1.5}}
```
