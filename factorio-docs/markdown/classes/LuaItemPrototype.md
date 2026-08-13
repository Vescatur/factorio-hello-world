# LuaItemPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of an item. For example, an item prototype can be obtained from [LuaPrototypes::item](../classes/LuaPrototypes.md#item) by its name: `prototypes.item["iron-plate"]`.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [always_include_tiles](#always-include-tiles) | [boolean](../concepts/boolean.md) | yes |
| [ammo_category](#ammo-category) | [LuaAmmoCategoryPrototype](../classes/LuaAmmoCategoryPrototype.md) | yes |
| [attack_parameters](#attack-parameters) | [AttackParameters](../concepts/AttackParameters.md) | yes |
| [beacon_tint](#beacon-tint) | array[[Color](../concepts/Color.md)] | yes |
| [burnt_result](#burnt-result) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [can_be_mod_opened](#can-be-mod-opened) | [boolean](../concepts/boolean.md) |  |
| [capsule_action](#capsule-action) | [CapsuleAction](../concepts/CapsuleAction.md) | yes |
| [category](#category) | [string](../concepts/string.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [color_hint](#color-hint) | [ColorHintSpecification](../concepts/ColorHintSpecification.md) |  |
| [consumption_quality_multiplier](#consumption-quality-multiplier) | [float](../concepts/float.md) | yes |
| [create_electric_network](#create-electric-network) | [boolean](../concepts/boolean.md) | yes |
| [cuts](#cuts) | [boolean](../concepts/boolean.md) | yes |
| [default_import_location](#default-import-location) | [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) |  |
| [default_label_color](#default-label-color) | [Color](../concepts/Color.md) | yes |
| [destroyed_by_dropping_trigger](#destroyed-by-dropping-trigger) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [draw_label_for_cursor_render](#draw-label-for-cursor-render) | [boolean](../concepts/boolean.md) | yes |
| [drawing_box](#drawing-box) | [BoundingBox](../concepts/BoundingBox.md) | yes |
| [durability_description_key](#durability-description-key) | [string](../concepts/string.md) | yes |
| [durability_description_value](#durability-description-value) | [string](../concepts/string.md) | yes |
| [equipment_grid](#equipment-grid) | [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md) | yes |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [factoriopedia_durability_description_key](#factoriopedia-durability-description-key) | [string](../concepts/string.md) | yes |
| [filter_mode](#filter-mode) | [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) | yes |
| [flags](#flags) | [ItemPrototypeFlags](../concepts/ItemPrototypeFlags.md) |  |
| [fuel_acceleration_multiplier](#fuel-acceleration-multiplier) | [double](../concepts/double.md) |  |
| [fuel_acceleration_multiplier_quality_bonus](#fuel-acceleration-multiplier-quality-bonus) | [double](../concepts/double.md) |  |
| [fuel_category](#fuel-category) | [string](../concepts/string.md) | yes |
| [fuel_emissions_multiplier](#fuel-emissions-multiplier) | [double](../concepts/double.md) |  |
| [fuel_glow_color](#fuel-glow-color) | [Color](../concepts/Color.md) | yes |
| [fuel_top_speed_multiplier](#fuel-top-speed-multiplier) | [double](../concepts/double.md) |  |
| [fuel_top_speed_multiplier_quality_bonus](#fuel-top-speed-multiplier-quality-bonus) | [double](../concepts/double.md) |  |
| [fuel_value](#fuel-value) | [float](../concepts/float.md) |  |
| [infinite](#infinite) | [boolean](../concepts/boolean.md) | yes |
| [ingredient_to_weight_coefficient](#ingredient-to-weight-coefficient) | [double](../concepts/double.md) |  |
| [initial_items](#initial-items) | array[[ItemProduct](../concepts/ItemProduct.md)] | yes |
| [item_filters](#item-filters) | array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [item_group_filters](#item-group-filters) | array[[LuaGroup](../classes/LuaGroup.md)] | yes |
| [item_subgroup_filters](#item-subgroup-filters) | array[[LuaGroup](../classes/LuaGroup.md)] | yes |
| [lab_ignores_spoil_percent](#lab-ignores-spoil-percent) | [boolean](../concepts/boolean.md) |  |
| [localised_filter_message](#localised-filter-message) | [LocalisedString](../concepts/LocalisedString.md) | yes |
| [magazine_size](#magazine-size) | [float](../concepts/float.md) | yes |
| [manual_length_limit](#manual-length-limit) | [double](../concepts/double.md) | yes |
| [module_effects](#module-effects) | [Effect](../concepts/Effect.md) | yes |
| [moved_to_hub_when_building](#moved-to-hub-when-building) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [place_as_equipment_result](#place-as-equipment-result) | [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md) | yes |
| [place_as_tile_result](#place-as-tile-result) | [PlaceAsTileResult](../concepts/PlaceAsTileResult.md) | yes |
| [place_result](#place-result) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [plant_result](#plant-result) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [pollution_quality_multiplier](#pollution-quality-multiplier) | [float](../concepts/float.md) | yes |
| [productivity_quality_multiplier](#productivity-quality-multiplier) | [float](../concepts/float.md) | yes |
| [provides_flight](#provides-flight) | [boolean](../concepts/boolean.md) | yes |
| [quality_affects_inventory_size](#quality-affects-inventory-size) | [boolean](../concepts/boolean.md) | yes |
| [quality_quality_multiplier](#quality-quality-multiplier) | [float](../concepts/float.md) | yes |
| [radius_color](#radius-color) | [Color](../concepts/Color.md) | yes |
| [rails](#rails) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [reload_time](#reload-time) | [float](../concepts/float.md) | yes |
| [requires_beacon_alt_mode](#requires-beacon-alt-mode) | [boolean](../concepts/boolean.md) | yes |
| [resistances](#resistances) | dictionary[[string](../concepts/string.md) → [Resistance](../concepts/Resistance.md)] | yes |
| [rocket_launch_products](#rocket-launch-products) | array[[Product](../concepts/Product.md)] |  |
| [send_to_orbit_mode](#send-to-orbit-mode) | `"not-sendable"` ∣ `"manual"` ∣ `"automated"` |  |
| [shoot_protected](#shoot-protected) | [boolean](../concepts/boolean.md) | yes |
| [skip_fog_of_war](#skip-fog-of-war) | [boolean](../concepts/boolean.md) | yes |
| [space_platform_request_priority](#space-platform-request-priority) | [boolean](../concepts/boolean.md) |  |
| [speed](#speed) | [float](../concepts/float.md) | yes |
| [speed_quality_multiplier](#speed-quality-multiplier) | [float](../concepts/float.md) | yes |
| [spoil_level](#spoil-level) | [uint8](../concepts/uint8.md) |  |
| [spoil_quality_change](#spoil-quality-change) | [int8](../concepts/int8.md) |  |
| [spoil_quality_max](#spoil-quality-max) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [spoil_quality_min](#spoil-quality-min) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [spoil_result](#spoil-result) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [spoil_to_trigger_result](#spoil-to-trigger-result) | [SpoilToTriggerResult](../concepts/SpoilToTriggerResult.md) | yes |
| [stack_size](#stack-size) | [uint32](../concepts/uint32.md) |  |
| [stackable](#stackable) | [boolean](../concepts/boolean.md) |  |
| [support](#support) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [surface](#surface) | [LuaSurfacePrototype](../classes/LuaSurfacePrototype.md) | yes |
| [tier](#tier) | [uint32](../concepts/uint32.md) | yes |
| [tiles](#tiles) | array[[SpacePlatformTileDefinition](../concepts/SpacePlatformTileDefinition.md)] | yes |
| [trigger](#trigger) | [TriggerItem](../concepts/TriggerItem.md) | yes |
| [used_by_labs](#used-by-labs) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [weight](#weight) | [Weight](../concepts/Weight.md) |  |

### always_include_tiles

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If tiles area always included when doing selection with this selection tool prototype.

### ammo_category

**Read:** [LuaAmmoCategoryPrototype](../classes/LuaAmmoCategoryPrototype.md) · _read-only_ · _optional_

### attack_parameters

**Read:** [AttackParameters](../concepts/AttackParameters.md) · _read-only_ · _optional_

The gun attack parameters.

### beacon_tint

**Read:** array[[Color](../concepts/Color.md)] · _read-only_ · _optional_

### burnt_result

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

The result of burning this item as fuel, if any.

### can_be_mod_opened

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this item can be mod-opened.

### capsule_action

**Read:** [CapsuleAction](../concepts/CapsuleAction.md) · _read-only_ · _optional_

The capsule action for this capsule item prototype.

### category

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The name of a [LuaModuleCategoryPrototype](../classes/LuaModuleCategoryPrototype.md). Used when upgrading modules: Ctrl + click modules into an entity and it will replace lower tier modules of the same category with higher tier modules.

### collision_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

The collision box used by character entities when wearing this armor.

### color_hint

**Read:** [ColorHintSpecification](../concepts/ColorHintSpecification.md) · _read-only_

### consumption_quality_multiplier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### create_electric_network

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### cuts

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### default_import_location

**Read:** [LuaSpaceLocationPrototype](../classes/LuaSpaceLocationPrototype.md) · _read-only_

### default_label_color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

The default label color used for this item with label, if any.

### destroyed_by_dropping_trigger

**Read:** array[[TriggerItem](../concepts/TriggerItem.md)] · _read-only_ · _optional_

### draw_label_for_cursor_render

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If true, and this item with label has a label it is drawn in place of the normal number when held in the cursor.

### drawing_box

**Read:** [BoundingBox](../concepts/BoundingBox.md) · _read-only_ · _optional_

The drawing box used by character entities when wearing this armor.

### durability_description_key

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The durability message key used when displaying the durability of this tool.

### durability_description_value

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The durability message value used when displaying the durability of this tool.

### equipment_grid

**Read:** [LuaEquipmentGridPrototype](../classes/LuaEquipmentGridPrototype.md) · _read-only_ · _optional_

The prototype of this armor's equipment grid, if any.

### factoriopedia_alternative

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### factoriopedia_durability_description_key

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The durability message key used when displaying the durability of this tool in Factoriopedia.

### filter_mode

**Read:** [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) · _read-only_ · _optional_

The filter mode used by this item with inventory.

### flags

**Read:** [ItemPrototypeFlags](../concepts/ItemPrototypeFlags.md) · _read-only_

The flags for this item prototype.

### fuel_acceleration_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

The acceleration multiplier when this item is used as fuel in a vehicle.

### fuel_acceleration_multiplier_quality_bonus

**Read:** [double](../concepts/double.md) · _read-only_

Additional fuel acceleration multiplier per quality level.

### fuel_category

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The fuel category, if any.

### fuel_emissions_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

The emissions multiplier if this is used as fuel.

### fuel_glow_color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

### fuel_top_speed_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

The fuel top speed multiplier when this item is used as fuel in a vehicle.

### fuel_top_speed_multiplier_quality_bonus

**Read:** [double](../concepts/double.md) · _read-only_

Additional fuel top speed multiplier per quality level.

### fuel_value

**Read:** [float](../concepts/float.md) · _read-only_

Fuel value when burned.

### infinite

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this tool item has infinite durability.

### ingredient_to_weight_coefficient

**Read:** [double](../concepts/double.md) · _read-only_

### initial_items

**Read:** array[[ItemProduct](../concepts/ItemProduct.md)] · _read-only_ · _optional_

### item_filters

**Read:** array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

### item_group_filters

**Read:** array[[LuaGroup](../classes/LuaGroup.md)] · _read-only_ · _optional_

### item_subgroup_filters

**Read:** array[[LuaGroup](../classes/LuaGroup.md)] · _read-only_ · _optional_

### lab_ignores_spoil_percent

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### localised_filter_message

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_ · _optional_

The localised string used when the player attempts to put items into this item with inventory that aren't allowed.

### magazine_size

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Size of full magazine.

### manual_length_limit

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### module_effects

**Read:** [Effect](../concepts/Effect.md) · _read-only_ · _optional_

Effects of this module.

### moved_to_hub_when_building

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### place_as_equipment_result

**Read:** [LuaEquipmentPrototype](../classes/LuaEquipmentPrototype.md) · _read-only_ · _optional_

Prototype of the equipment that will be created by placing this item in an equipment grid, if any.

### place_as_tile_result

**Read:** [PlaceAsTileResult](../concepts/PlaceAsTileResult.md) · _read-only_ · _optional_

The place-as-tile result if one is defined, if any.

### place_result

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

Prototype of the entity that will be created by placing this item, if any.

### plant_result

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

The result entity when planting this item as a seed.

### pollution_quality_multiplier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### productivity_quality_multiplier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### provides_flight

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this armor provides flight to character entities when worm.

### quality_affects_inventory_size

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality_quality_multiplier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### radius_color

**Read:** [Color](../concepts/Color.md) · _read-only_ · _optional_

### rails

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

Prototypes of all rails possible to be used by this rail planner prototype.

### reload_time

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

Amount of extra time (in ticks) it takes to reload the weapon after depleting the magazine.

### requires_beacon_alt_mode

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### resistances

**Read:** dictionary[[string](../concepts/string.md) → [Resistance](../concepts/Resistance.md)] · _read-only_ · _optional_

Resistances of this armor item, if any, indexed by damage type name.

### rocket_launch_products

**Read:** array[[Product](../concepts/Product.md)] · _read-only_

The results of launching this item in a rocket.

### send_to_orbit_mode

**Read:** `"not-sendable"` ∣ `"manual"` ∣ `"automated"` · _read-only_

How this item interacts when being sent to orbit.

### shoot_protected

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### skip_fog_of_war

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

If this selection tool skips things covered by fog of war.

### space_platform_request_priority

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### speed

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

The repairing speed if this is a repairing tool.

### speed_quality_multiplier

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### spoil_level

**Read:** [uint8](../concepts/uint8.md) · _read-only_

### spoil_quality_change

**Read:** [int8](../concepts/int8.md) · _read-only_

### spoil_quality_max

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_ · _optional_

### spoil_quality_min

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_ · _optional_

### spoil_result

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

The spoil result of this item, if any

### spoil_to_trigger_result

**Read:** [SpoilToTriggerResult](../concepts/SpoilToTriggerResult.md) · _read-only_ · _optional_

### stack_size

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Maximum stack size of the item specified by this prototype.

### stackable

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this item allowed to stack at all?

### support

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

The rail support used by this rail planner.

### surface

**Read:** [LuaSurfacePrototype](../classes/LuaSurfacePrototype.md) · _read-only_ · _optional_

### tier

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

Tier of the module inside its category. Used when upgrading modules: Ctrl + click modules into an entity and it will replace lower tier modules with higher tier modules if they have the same category.

### tiles

**Read:** array[[SpacePlatformTileDefinition](../concepts/SpacePlatformTileDefinition.md)] · _read-only_ · _optional_

### trigger

**Read:** [TriggerItem](../concepts/TriggerItem.md) · _read-only_ · _optional_

### used_by_labs

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this item is referenced by any [lab input](../prototypes/LabPrototype.md#inputs).

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### weight

**Read:** [Weight](../concepts/Weight.md) · _read-only_

Weight of this item. More information on how item weight is determined can be found on its [auxiliary page](../auxiliary/item-weight.md).

## Methods

| Method | Summary |
| --- | --- |
| [get_ammo_type](#get-ammo-type) | The type of this ammo prototype. |
| [get_cursor_box_type](#get-cursor-box-type) |  |
| [get_durability](#get-durability) | The durability of this tool item prototype. |
| [get_entity_filter_mode](#get-entity-filter-mode) | The entity filter mode used by this selection tool. |
| [get_entity_filters](#get-entity-filters) | The entity filters used by this selection tool. |
| [get_entity_type_filters](#get-entity-type-filters) | The entity type filters used by this selection tool indexed by entity type. |
| [get_inventory_size](#get-inventory-size) | The main inventory size for item-with-inventory-prototype. |
| [get_inventory_size_bonus](#get-inventory-size-bonus) | The inventory size bonus for this armor prototype. |
| [get_module_effects](#get-module-effects) | Effects of this module at the specified quality. |
| [get_selection_border_color](#get-selection-border-color) | The color used when doing normal selection with this selection tool prototype. |
| [get_selection_mode_flags](#get-selection-mode-flags) | Flags that affect which entities will be selected. |
| [get_spoil_ticks](#get-spoil-ticks) | The number of ticks before this item spoils, or `0` if it does not spoil. |
| [get_tile_filter_mode](#get-tile-filter-mode) | The tile filter mode used by this selection tool. |
| [get_tile_filters](#get-tile-filters) | The tile filters used by this selection tool. |
| [has_flag](#has-flag) | Test whether this item prototype has a certain flag set. |

### get_ammo_type

`get_ammo_type(ammo_source_type)`

The type of this ammo prototype.

#### Parameters

##### ammo_source_type

**Type:** `"default"` ∣ `"player"` ∣ `"turret"` ∣ `"vehicle"` · _optional_

Defaults to `"default"`.

#### Return values

- [AmmoType](../concepts/AmmoType.md) _(optional)_

### get_cursor_box_type

`get_cursor_box_type(selection_mode)`

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- [CursorBoxRenderType](../concepts/CursorBoxRenderType.md) _(optional)_

### get_durability

`get_durability(quality)`

The durability of this tool item prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [double](../concepts/double.md) _(optional)_

### get_entity_filter_mode

`get_entity_filter_mode(selection_mode)`

The entity filter mode used by this selection tool.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) _(optional)_

### get_entity_filters

`get_entity_filters(selection_mode)`

The entity filters used by this selection tool.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] _(optional)_

### get_entity_type_filters

`get_entity_type_filters(selection_mode)`

The entity type filters used by this selection tool indexed by entity type.

The boolean value is meaningless and is used to allow easy lookup if a type exists in the dictionary.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- dictionary[[string](../concepts/string.md) → `true`] _(optional)_

### get_inventory_size

`get_inventory_size(quality)`

The main inventory size for item-with-inventory-prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_inventory_size_bonus

`get_inventory_size_bonus(quality)`

The inventory size bonus for this armor prototype.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md) _(optional)_

### get_module_effects

`get_module_effects(quality)`

Effects of this module at the specified quality.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [Effect](../concepts/Effect.md) _(optional)_

### get_selection_border_color

`get_selection_border_color(selection_mode)`

The color used when doing normal selection with this selection tool prototype.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- [Color](../concepts/Color.md) _(optional)_

### get_selection_mode_flags

`get_selection_mode_flags(selection_mode)`

Flags that affect which entities will be selected.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- [SelectionModeFlags](../concepts/SelectionModeFlags.md) _(optional)_

### get_spoil_ticks

`get_spoil_ticks(quality)`

The number of ticks before this item spoils, or `0` if it does not spoil.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

#### Return values

- [uint32](../concepts/uint32.md)

### get_tile_filter_mode

`get_tile_filter_mode(selection_mode)`

The tile filter mode used by this selection tool.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- [PrototypeFilterMode](../concepts/PrototypeFilterMode.md) _(optional)_

### get_tile_filters

`get_tile_filters(selection_mode)`

The tile filters used by this selection tool.

#### Parameters

##### selection_mode

**Type:** [defines.selection_mode](../defines/defines.md)

#### Return values

- array[[LuaTilePrototype](../classes/LuaTilePrototype.md)] _(optional)_

### has_flag

`has_flag(flag)`

Test whether this item prototype has a certain flag set.

#### Parameters

##### flag

**Type:** [ItemPrototypeFlag](../concepts/ItemPrototypeFlag.md)

The flag to test.

#### Return values

- [boolean](../concepts/boolean.md)
