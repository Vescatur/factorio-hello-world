# LuaQualityPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a quality.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [accumulator_capacity_multiplier](#accumulator-capacity-multiplier) | [double](../concepts/double.md) |  |
| [asteroid_collector_collection_radius_bonus](#asteroid-collector-collection-radius-bonus) | [uint32](../concepts/uint32.md) |  |
| [beacon_module_slots_bonus](#beacon-module-slots-bonus) | [ItemStackIndex](../concepts/ItemStackIndex.md) |  |
| [beacon_power_usage_multiplier](#beacon-power-usage-multiplier) | [float](../concepts/float.md) |  |
| [beacon_supply_area_distance_bonus](#beacon-supply-area-distance-bonus) | [float](../concepts/float.md) |  |
| [cargo_wagon_inventory_size_multiplier](#cargo-wagon-inventory-size-multiplier) | [double](../concepts/double.md) |  |
| [chain_probability](#chain-probability) | [double](../concepts/double.md) |  |
| [color](#color) | [Color](../concepts/Color.md) |  |
| [crafting_machine_energy_usage_multiplier](#crafting-machine-energy-usage-multiplier) | [double](../concepts/double.md) |  |
| [crafting_machine_module_slots_bonus](#crafting-machine-module-slots-bonus) | [ItemStackIndex](../concepts/ItemStackIndex.md) |  |
| [crafting_machine_speed_multiplier](#crafting-machine-speed-multiplier) | [double](../concepts/double.md) |  |
| [default_multiplier](#default-multiplier) | [double](../concepts/double.md) |  |
| [draw_sprite_by_default](#draw-sprite-by-default) | [boolean](../concepts/boolean.md) |  |
| [electric_pole_supply_area_distance_bonus](#electric-pole-supply-area-distance-bonus) | [float](../concepts/float.md) |  |
| [electric_pole_wire_reach_bonus](#electric-pole-wire-reach-bonus) | [float](../concepts/float.md) |  |
| [equipment_grid_height_bonus](#equipment-grid-height-bonus) | [int16](../concepts/int16.md) |  |
| [equipment_grid_width_bonus](#equipment-grid-width-bonus) | [int16](../concepts/int16.md) |  |
| [fluid_wagon_capacity_multiplier](#fluid-wagon-capacity-multiplier) | [double](../concepts/double.md) |  |
| [flying_robot_max_energy_multiplier](#flying-robot-max-energy-multiplier) | [double](../concepts/double.md) |  |
| [inserter_speed_multiplier](#inserter-speed-multiplier) | [double](../concepts/double.md) |  |
| [inventory_size_multiplier](#inventory-size-multiplier) | [double](../concepts/double.md) |  |
| [lab_module_slots_bonus](#lab-module-slots-bonus) | [ItemStackIndex](../concepts/ItemStackIndex.md) |  |
| [lab_research_speed_multiplier](#lab-research-speed-multiplier) | [double](../concepts/double.md) |  |
| [level](#level) | [uint32](../concepts/uint32.md) |  |
| [locomotive_power_multiplier](#locomotive-power-multiplier) | [double](../concepts/double.md) |  |
| [logistic_cell_charging_energy_multiplier](#logistic-cell-charging-energy-multiplier) | [double](../concepts/double.md) |  |
| [logistic_cell_charging_station_count_bonus](#logistic-cell-charging-station-count-bonus) | [uint32](../concepts/uint32.md) |  |
| [mining_drill_mining_radius_bonus](#mining-drill-mining-radius-bonus) | [float](../concepts/float.md) |  |
| [mining_drill_module_slots_bonus](#mining-drill-module-slots-bonus) | [ItemStackIndex](../concepts/ItemStackIndex.md) |  |
| [mining_drill_resource_drain_multiplier](#mining-drill-resource-drain-multiplier) | [float](../concepts/float.md) |  |
| [module_consumption_multiplier](#module-consumption-multiplier) | [float](../concepts/float.md) |  |
| [module_pollution_multiplier](#module-pollution-multiplier) | [float](../concepts/float.md) |  |
| [module_productivity_multiplier](#module-productivity-multiplier) | [float](../concepts/float.md) |  |
| [module_quality_multiplier](#module-quality-multiplier) | [float](../concepts/float.md) |  |
| [module_speed_multiplier](#module-speed-multiplier) | [float](../concepts/float.md) |  |
| [next](#next) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [next_probability](#next-probability) | [double](../concepts/double.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [previous](#previous) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) |  |
| [previous_chain_probability](#previous-chain-probability) | [double](../concepts/double.md) |  |
| [previous_probability](#previous-probability) | [double](../concepts/double.md) |  |
| [range_multiplier](#range-multiplier) | [double](../concepts/double.md) |  |
| [rolling_stock_max_speed_multiplier](#rolling-stock-max-speed-multiplier) | [double](../concepts/double.md) |  |
| [science_pack_drain_multiplier](#science-pack-drain-multiplier) | [float](../concepts/float.md) |  |
| [spoil_ticks_multiplier](#spoil-ticks-multiplier) | [float](../concepts/float.md) |  |
| [tool_durability_multiplier](#tool-durability-multiplier) | [double](../concepts/double.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### accumulator_capacity_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### asteroid_collector_collection_radius_bonus

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### beacon_module_slots_bonus

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_

### beacon_power_usage_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### beacon_supply_area_distance_bonus

**Read:** [float](../concepts/float.md) · _read-only_

### cargo_wagon_inventory_size_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### chain_probability

**Read:** [double](../concepts/double.md) · _read-only_

Probability of additional quality increase happening after quality was increased to reach this quality in the same crafting/mining operation.

### color

**Read:** [Color](../concepts/Color.md) · _read-only_

The color of the prototype

### crafting_machine_energy_usage_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### crafting_machine_module_slots_bonus

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_

### crafting_machine_speed_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### default_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### draw_sprite_by_default

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### electric_pole_supply_area_distance_bonus

**Read:** [float](../concepts/float.md) · _read-only_

### electric_pole_wire_reach_bonus

**Read:** [float](../concepts/float.md) · _read-only_

### equipment_grid_height_bonus

**Read:** [int16](../concepts/int16.md) · _read-only_

### equipment_grid_width_bonus

**Read:** [int16](../concepts/int16.md) · _read-only_

### fluid_wagon_capacity_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### flying_robot_max_energy_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### inserter_speed_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### inventory_size_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### lab_module_slots_bonus

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_

### lab_research_speed_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### level

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Level basically specifies the stat-increasing value of this quality level.

### locomotive_power_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### logistic_cell_charging_energy_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### logistic_cell_charging_station_count_bonus

**Read:** [uint32](../concepts/uint32.md) · _read-only_

### mining_drill_mining_radius_bonus

**Read:** [float](../concepts/float.md) · _read-only_

### mining_drill_module_slots_bonus

**Read:** [ItemStackIndex](../concepts/ItemStackIndex.md) · _read-only_

### mining_drill_resource_drain_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### module_consumption_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### module_pollution_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### module_productivity_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### module_quality_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### module_speed_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### next

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_

The next higher level of the quality

### next_probability

**Read:** [double](../concepts/double.md) · _read-only_

The probability multiplier of getting the next level of quality.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### previous

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_

### previous_chain_probability

**Read:** [double](../concepts/double.md) · _read-only_

Probability of additional quality decrease happening after quality was decreased to reach this quality in the same crafting/mining operation.

### previous_probability

**Read:** [double](../concepts/double.md) · _read-only_

The probability multiplier of getting the previous level of quality.

### range_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### rolling_stock_max_speed_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### science_pack_drain_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### spoil_ticks_multiplier

**Read:** [float](../concepts/float.md) · _read-only_

### tool_durability_multiplier

**Read:** [double](../concepts/double.md) · _read-only_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [get_roll_chances](#get-roll-chances) | Computes probabilities of rolling various qualities given a quality effect |
| [roll_quality](#roll-quality) | Performs quality roll |

### get_roll_chances

`get_roll_chances(force, quality_effect)`

Computes probabilities of rolling various qualities given a quality effect

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force to select unlocked qualities. If not provided, all qualities are considered unlocked.

##### quality_effect

**Type:** [EffectValue](../concepts/EffectValue.md)

Strength of quality effect. Larger value makes it easier to roll better qualities.

#### Return values

- dictionary[[string](../concepts/string.md) → [double](../concepts/double.md)] — Roll chances per quality. Only positive values are listed. All values should sum to 1.

### roll_quality

`roll_quality(force, quality_effect, quality_seed)`

Performs quality roll

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Force which is doing the quality roll. Used to select unlocked qualities. If not provided, all qualities are considered unlocked.

##### quality_effect

**Type:** [EffectValue](../concepts/EffectValue.md)

Strength of quality effect. Larger value makes it easier to roll better qualities.

##### quality_seed

**Type:** [double](../concepts/double.md)

Random value in [0, 1) used to select result quality.

#### Return values

- [LuaQualityPrototype](../classes/LuaQualityPrototype.md)
