# AgriculturalTowerPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "agricultural-tower"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [accepted_seeds](#accepted-seeds) | array[[ItemID](../types/ItemID.md)] | yes |
| [allowed_effects](#allowed-effects) | [EffectTypeLimitation](../types/EffectTypeLimitation.md) | yes |
| [allowed_module_categories](#allowed-module-categories) | array[[ModuleCategoryID](../types/ModuleCategoryID.md)] | yes |
| [arm_extending_sound](#arm-extending-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [arm_extending_sound_source](#arm-extending-sound-source) | [string](../types/string.md) | yes |
| [central_orienting_sound](#central-orienting-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [central_orienting_sound_source](#central-orienting-sound-source) | [string](../types/string.md) | yes |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [crane](#crane) | [AgriculturalCraneProperties](../types/AgriculturalCraneProperties.md) |  |
| [crane_energy_usage](#crane-energy-usage) | [Energy](../types/Energy.md) |  |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [effect_receiver](#effect-receiver) | [EffectReceiver](../types/EffectReceiver.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [graphics_set](#graphics-set) | [CraftingMachineGraphicsSet](../types/CraftingMachineGraphicsSet.md) | yes |
| [grappler_extending_sound](#grappler-extending-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [grappler_extending_sound_source](#grappler-extending-sound-source) | [string](../types/string.md) | yes |
| [grappler_orienting_sound](#grappler-orienting-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [grappler_orienting_sound_source](#grappler-orienting-sound-source) | [string](../types/string.md) | yes |
| [growth_area_radius](#growth-area-radius) | [double](../types/double.md) | yes |
| [growth_grid_tile_size](#growth-grid-tile-size) | [uint32](../types/uint32.md) | yes |
| [harvesting_procedure_points](#harvesting-procedure-points) | array[[Vector3D](../types/Vector3D.md)] | yes |
| [harvesting_sound](#harvesting-sound) | [Sound](../types/Sound.md) | yes |
| [input_inventory_size](#input-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [module_slots](#module-slots) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [output_inventory_size](#output-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [planting_procedure_points](#planting-procedure-points) | array[[Vector3D](../types/Vector3D.md)] | yes |
| [planting_sound](#planting-sound) | [Sound](../types/Sound.md) | yes |
| [quality_affects_module_slots](#quality-affects-module-slots) | [boolean](../types/boolean.md) | yes |
| [radius](#radius) | [double](../types/double.md) |  |
| [radius_visualisation_picture](#radius-visualisation-picture) | [Sprite](../types/Sprite.md) | yes |
| [random_growth_offset](#random-growth-offset) | [double](../types/double.md) | yes |
| [randomize_planting_tile](#randomize-planting-tile) | [boolean](../types/boolean.md) | yes |

### accepted_seeds

**Type:** array[[ItemID](../types/ItemID.md)] · _optional_

When missing, all items with [plant result](../prototypes/ItemPrototype.md#plant-result) will be accepted. When provided, only items on this list that have plant result will be accepted.

### allowed_effects

**Type:** [EffectTypeLimitation](../types/EffectTypeLimitation.md) · _optional_ · **Default:** `No effects are allowed`

Sets the [modules](../prototypes/ModulePrototype.md) and [beacon](../prototypes/BeaconPrototype.md) effects that are allowed to be used on this machine.

### allowed_module_categories

**Type:** array[[ModuleCategoryID](../types/ModuleCategoryID.md)] · _optional_ · **Default:** `All module categories are allowed`

Sets the [module categories](../prototypes/ModuleCategory.md) that are allowed to be inserted into this machine.

### arm_extending_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### arm_extending_sound_source

**Type:** [string](../types/string.md) · _optional_

### central_orienting_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### central_orienting_sound_source

**Type:** [string](../types/string.md) · _optional_

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### crane

**Type:** [AgriculturalCraneProperties](../types/AgriculturalCraneProperties.md)

### crane_energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy this agricultural tower uses while the crane is moving.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### effect_receiver

**Type:** [EffectReceiver](../types/EffectReceiver.md) · _optional_

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

### energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy this agricultural tower uses for each planted or harvested [plant](../prototypes/PlantPrototype.md).

### graphics_set

**Type:** [CraftingMachineGraphicsSet](../types/CraftingMachineGraphicsSet.md) · _optional_

### grappler_extending_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### grappler_extending_sound_source

**Type:** [string](../types/string.md) · _optional_

### grappler_orienting_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### grappler_orienting_sound_source

**Type:** [string](../types/string.md) · _optional_

### growth_area_radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.95}`

The minimum radius of empty space a [plant](../prototypes/PlantPrototype.md) requires around it to be planted.

Must be greater than or equal to 0 and less than or equal to `growth_grid_tile_size / 2`.

### growth_grid_tile_size

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

The size of one grid tile a [plant](../prototypes/PlantPrototype.md) is planted into.

Must be positive.

### harvesting_procedure_points

**Type:** array[[Vector3D](../types/Vector3D.md)] · _optional_

### harvesting_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### input_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### module_slots

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_

The number of module slots in this machine.

### output_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### planting_procedure_points

**Type:** array[[Vector3D](../types/Vector3D.md)] · _optional_

### planting_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### quality_affects_module_slots

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::mining_drill_module_slots_bonus](../prototypes/QualityPrototype.md#mining-drill-module-slots-bonus) will be added to module slots count.

### radius

**Type:** [double](../types/double.md)

The radius represents [grid tiles](../prototypes/AgriculturalTowerPrototype.md#growth-grid-tile-size) which are created around the agricultural tower from its [collision box](../prototypes/EntityPrototype.md#collision-box).

Must be positive.

### radius_visualisation_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### random_growth_offset

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.25}`

The maximum offset from the grid tile center which will be applied to the planting spot selected by this agricultural tower.

Must be greater than or equal to 0 and less than 1.

### randomize_planting_tile

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the agricultural tower will start from a random grid tile when given a planting task.
