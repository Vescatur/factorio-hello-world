# QualityPrototype

_prototype_

**Prototype type string:** `type = "quality"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

One quality step. Its effects are specified by the level and the various multiplier and bonus properties. Properties ending in `_multiplier` are applied multiplicatively to their base property, properties ending in `_bonus` are applied additively.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [accumulator_capacity_multiplier](#accumulator-capacity-multiplier) | [double](../types/double.md) | yes |
| [asteroid_collector_collection_radius_bonus](#asteroid-collector-collection-radius-bonus) | [double](../types/double.md) | yes |
| [beacon_module_slots_bonus](#beacon-module-slots-bonus) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [beacon_power_usage_multiplier](#beacon-power-usage-multiplier) | [float](../types/float.md) | yes |
| [beacon_supply_area_distance_bonus](#beacon-supply-area-distance-bonus) | [float](../types/float.md) | yes |
| [cargo_wagon_inventory_size_multiplier](#cargo-wagon-inventory-size-multiplier) | [double](../types/double.md) | yes |
| [chain_probability](#chain-probability) | [double](../types/double.md) | yes |
| [color](#color) | [Color](../types/Color.md) |  |
| [crafting_machine_energy_usage_multiplier](#crafting-machine-energy-usage-multiplier) | [double](../types/double.md) | yes |
| [crafting_machine_module_slots_bonus](#crafting-machine-module-slots-bonus) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [crafting_machine_speed_multiplier](#crafting-machine-speed-multiplier) | [double](../types/double.md) | yes |
| [default_multiplier](#default-multiplier) | [double](../types/double.md) | yes |
| [draw_sprite_by_default](#draw-sprite-by-default) | [boolean](../types/boolean.md) | yes |
| [electric_pole_supply_area_distance_bonus](#electric-pole-supply-area-distance-bonus) | [float](../types/float.md) | yes |
| [electric_pole_wire_reach_bonus](#electric-pole-wire-reach-bonus) | [float](../types/float.md) | yes |
| [equipment_grid_height_bonus](#equipment-grid-height-bonus) | [int16](../types/int16.md) | yes |
| [equipment_grid_width_bonus](#equipment-grid-width-bonus) | [int16](../types/int16.md) | yes |
| [fluid_wagon_capacity_multiplier](#fluid-wagon-capacity-multiplier) | [double](../types/double.md) | yes |
| [flying_robot_max_energy_multiplier](#flying-robot-max-energy-multiplier) | [double](../types/double.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [inserter_speed_multiplier](#inserter-speed-multiplier) | [double](../types/double.md) | yes |
| [inventory_size_multiplier](#inventory-size-multiplier) | [double](../types/double.md) | yes |
| [lab_module_slots_bonus](#lab-module-slots-bonus) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [lab_research_speed_multiplier](#lab-research-speed-multiplier) | [double](../types/double.md) | yes |
| [level](#level) | [uint32](../types/uint32.md) |  |
| [locomotive_power_multiplier](#locomotive-power-multiplier) | [double](../types/double.md) | yes |
| [logistic_cell_charging_energy_multiplier](#logistic-cell-charging-energy-multiplier) | [double](../types/double.md) | yes |
| [logistic_cell_charging_station_count_bonus](#logistic-cell-charging-station-count-bonus) | [uint32](../types/uint32.md) | yes |
| [mining_drill_mining_radius_bonus](#mining-drill-mining-radius-bonus) | [float](../types/float.md) | yes |
| [mining_drill_module_slots_bonus](#mining-drill-module-slots-bonus) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [mining_drill_resource_drain_multiplier](#mining-drill-resource-drain-multiplier) | [float](../types/float.md) | yes |
| [module_consumption_multiplier](#module-consumption-multiplier) | [float](../types/float.md) | yes |
| [module_pollution_multiplier](#module-pollution-multiplier) | [float](../types/float.md) | yes |
| [module_productivity_multiplier](#module-productivity-multiplier) | [float](../types/float.md) | yes |
| [module_quality_multiplier](#module-quality-multiplier) | [float](../types/float.md) | yes |
| [module_speed_multiplier](#module-speed-multiplier) | [float](../types/float.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [next](#next) | [QualityID](../types/QualityID.md) | yes |
| [next_probability](#next-probability) | [double](../types/double.md) | yes |
| [previous_chain_probability](#previous-chain-probability) | [double](../types/double.md) | yes |
| [previous_probability](#previous-probability) | [double](../types/double.md) | yes |
| [range_multiplier](#range-multiplier) | [double](../types/double.md) | yes |
| [rolling_stock_max_speed_multiplier](#rolling-stock-max-speed-multiplier) | [double](../types/double.md) | yes |
| [science_pack_drain_multiplier](#science-pack-drain-multiplier) | [float](../types/float.md) | yes |
| [spoil_ticks_multiplier](#spoil-ticks-multiplier) | [float](../types/float.md) | yes |
| [tool_durability_multiplier](#tool-durability-multiplier) | [double](../types/double.md) | yes |

### accumulator_capacity_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 + `level``

Must be >= 0.01.

### asteroid_collector_collection_radius_bonus

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `level``

Must be >= 0.

Performance warning: the navigation has to pre-calculate ranges for the highest tier collector possible, so you should keep this collection radius within reasonable values.

### beacon_module_slots_bonus

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `Value of `level``

Only affects beacons with [BeaconPrototype::quality_affects_module_slots](../prototypes/BeaconPrototype.md#quality-affects-module-slots) set.

### beacon_power_usage_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.01.

### beacon_supply_area_distance_bonus

**Type:** [float](../types/float.md) · _optional_ · **Default:** `clamp(`level`, 0, 64)`

Only affects beacons with [BeaconPrototype::quality_affects_supply_area_distance](../prototypes/BeaconPrototype.md#quality-affects-supply-area-distance) set.

Must be >= 0 and <= 64.

### cargo_wagon_inventory_size_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `inventory_size_multiplier``

Must be >= 0.01.

### chain_probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `clamp(`next_probability * 0.1, 0, 1)``

Probability of additional quality increase happening after quality was increased to reach this quality in the same crafting/mining operation.

Must be in range `[0, 1]`.

### color

**Type:** [Color](../types/Color.md)

### crafting_machine_energy_usage_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.01.

Only affects crafting machines with [CraftingMachinePrototype::quality_affects_energy_usage](../prototypes/CraftingMachinePrototype.md#quality-affects-energy-usage) set.

Will be ignored by crafting machines with [CraftingMachinePrototype::energy_usage_quality_multiplier](../prototypes/CraftingMachinePrototype.md#energy-usage-quality-multiplier) set.

### crafting_machine_module_slots_bonus

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `Value of `level``

Only affects crafting machines with [CraftingMachinePrototype::quality_affects_module_slots](../prototypes/CraftingMachinePrototype.md#quality-affects-module-slots) set.

Will be ignored by crafting machines with [CraftingMachinePrototype::module_slots_quality_bonus](../prototypes/CraftingMachinePrototype.md#module-slots-quality-bonus) set.

### crafting_machine_speed_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

Will be ignored by crafting machines with [CraftingMachinePrototype::crafting_speed_quality_multiplier](../prototypes/CraftingMachinePrototype.md#crafting-speed-quality-multiplier) set.

### default_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 + 0.3 * `level``

Must be >= 0.01.

### draw_sprite_by_default

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### electric_pole_supply_area_distance_bonus

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `level``

Must be >= 0.

### electric_pole_wire_reach_bonus

**Type:** [float](../types/float.md) · _optional_ · **Default:** `2 * `level``

Must be >= 0.

### equipment_grid_height_bonus

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `Value of `level``

### equipment_grid_width_bonus

**Type:** [int16](../types/int16.md) · _optional_ · **Default:** `Value of `level``

### fluid_wagon_capacity_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

Only affects fluid wagons with [FluidWagonPrototype::quality_affects_capacity](../prototypes/FluidWagonPrototype.md#quality-affects-capacity) set.

### flying_robot_max_energy_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 + `level``

Must be >= 0.01.

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

### inserter_speed_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### inventory_size_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### lab_module_slots_bonus

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `Value of `level``

Only affects labs with [LabPrototype::quality_affects_module_slots](../prototypes/LabPrototype.md#quality-affects-module-slots) set.

### lab_research_speed_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### level

**Type:** [uint32](../types/uint32.md)

Requires Space Age to use level greater than `0`.

### locomotive_power_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 + 0.01 * `level``

Must be >= 0.01.

### logistic_cell_charging_energy_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### logistic_cell_charging_station_count_bonus

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `level``

Only affects roboports with [RoboportPrototype::charging_station_count_affected_by_quality](../prototypes/RoboportPrototype.md#charging-station-count-affected-by-quality) set.

Only affects roboport equipment with [RoboportEquipmentPrototype::charging_station_count_affected_by_quality](../prototypes/RoboportEquipmentPrototype.md#charging-station-count-affected-by-quality) set.

### mining_drill_mining_radius_bonus

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `level``

Only affects mining drills with [MiningDrillPrototype::quality_affects_mining_radius](../prototypes/MiningDrillPrototype.md#quality-affects-mining-radius) set.

Must be >= 0.

### mining_drill_module_slots_bonus

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `Value of `level``

Only affects mining drills with [MiningDrillPrototype::quality_affects_module_slots](../prototypes/MiningDrillPrototype.md#quality-affects-module-slots) set.

### mining_drill_resource_drain_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be in range `[0, 1]`.

### module_consumption_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### module_pollution_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### module_productivity_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### module_quality_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### module_speed_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### name

**Type:** [string](../types/string.md) · _overrides parent_

Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May not exceed a length of 200 characters.

Requires Space Age to create prototypes with name other than `normal` or `quality-unknown`.

### next

**Type:** [QualityID](../types/QualityID.md) · _optional_

### next_probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Probability that a crafting machine affected by a 100% quality [effect from modules](../prototypes/ModulePrototype.md#effect) will cause quality to be increased.

Probability is scaled linearly with quality effect. E.g. for `next_probability = 1`, 100% quality effect means quality is always increased, at 50% quality effect the quality is increased 50% of the time and so on.

Must be >= 0.

### previous_chain_probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `clamp(`previous_probability * 0.1, 0, 1)``

Probability of additional quality decrease happening after quality was decreased to reach this quality in the same crafting/mining operation.

Must be in range `[0, 1]`.

### previous_probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Probability that a crafting machine affected by a -100% quality [effect from modules](../prototypes/ModulePrototype.md#effect) will cause quality to be decreased.

Probability is scaled linearly with quality effect. E.g. for `previous_probability = 1`, -100% quality effect means quality is always decreased, at -50% quality effect the quality is decreased 50% of the time and so on.

Must be >= 0.

Note: for a machine to have a negative quality effect, [EffectReceiver::quality_limits](../types/EffectReceiver.md#quality-limits) needs to be set.

### range_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `min(1 + 0.1 * `level`, 3)`

Must be within `[1, 3]`.

Affects the range of [attack parameters](../types/AttackParameters.md), e.g. those used by combat robots, units, guns and turrets.

### rolling_stock_max_speed_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 + 0.01 * `level``

Must be >= 0.01.

### science_pack_drain_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be in range `[0, 1]`.

Only affects labs with [LabPrototype::uses_quality_drain_modifier](../prototypes/LabPrototype.md#uses-quality-drain-modifier) set.

### spoil_ticks_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_multiplier``

Must be >= 0.01.

### tool_durability_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `1 + `level``

Must be >= 0.01.

Affects the durability of [tool items](../prototypes/ToolPrototype.md) like science packs, repair tools and armor.
