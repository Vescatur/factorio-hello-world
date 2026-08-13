# MiningDrillPrototype

_prototype_

**Prototype type string:** `type = "mining-drill"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A mining drill for automatically extracting resources from [resource entities](../prototypes/ResourceEntityPrototype.md). This prototype type is used by [burner mining drill](https://wiki.factorio.com/Burner_mining_drill), [electric mining drill](https://wiki.factorio.com/Electric_mining_drill) and [pumpjack](https://wiki.factorio.com/Pumpjack) in vanilla.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allowed_effects](#allowed-effects) | [EffectTypeLimitation](../types/EffectTypeLimitation.md) | yes |
| [allowed_module_categories](#allowed-module-categories) | array[[ModuleCategoryID](../types/ModuleCategoryID.md)] | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_connector_flipped](#circuit-connector-flipped) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [drilling_sound](#drilling-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [drilling_sound_animation_end_frame](#drilling-sound-animation-end-frame) | [uint16](../types/uint16.md) | yes |
| [drilling_sound_animation_start_frame](#drilling-sound-animation-start-frame) | [uint16](../types/uint16.md) | yes |
| [drops_full_belt_stacks](#drops-full-belt-stacks) | [boolean](../types/boolean.md) | yes |
| [effect_receiver](#effect-receiver) | [EffectReceiver](../types/EffectReceiver.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [filter_count](#filter-count) | [uint8](../types/uint8.md) | yes |
| [graphics_set](#graphics-set) | [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) | yes |
| [graphics_set_flipped](#graphics-set-flipped) | [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) | yes |
| [input_fluid_box](#input-fluid-box) | [FluidBox](../types/FluidBox.md) | yes |
| [migrate_horizontal_mirroring](#migrate-horizontal-mirroring) | [boolean](../types/boolean.md) | yes |
| [mining_speed](#mining-speed) | [double](../types/double.md) |  |
| [module_slots](#module-slots) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [monitor_visualization_tint](#monitor-visualization-tint) | [Color](../types/Color.md) | yes |
| [moving_sound](#moving-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [output_fluid_box](#output-fluid-box) | [FluidBox](../types/FluidBox.md) | yes |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |
| [quality_affects_mining_radius](#quality-affects-mining-radius) | [boolean](../types/boolean.md) | yes |
| [quality_affects_module_slots](#quality-affects-module-slots) | [boolean](../types/boolean.md) | yes |
| [radius_visualisation_picture](#radius-visualisation-picture) | [Sprite](../types/Sprite.md) | yes |
| [require_resources_to_place](#require-resources-to-place) | [boolean](../types/boolean.md) | yes |
| [resource_categories](#resource-categories) | array[[ResourceCategoryID](../types/ResourceCategoryID.md)] |  |
| [resource_drain_rate_percent](#resource-drain-rate-percent) | [uint8](../types/uint8.md) | yes |
| [resource_searching_offset](#resource-searching-offset) | [Vector](../types/Vector.md) | yes |
| [resource_searching_radius](#resource-searching-radius) | [double](../types/double.md) |  |
| [shuffle_resources_to_mine](#shuffle-resources-to-mine) | [boolean](../types/boolean.md) | yes |
| [use_mirroring](#use-mirroring) | [boolean](../types/boolean.md) | yes |
| [uses_force_mining_productivity_bonus](#uses-force-mining-productivity-bonus) | [boolean](../types/boolean.md) | yes |
| [vector_to_place_result](#vector-to-place-result) | [Vector](../types/Vector.md) |  |
| [wet_mining_graphics_set](#wet-mining-graphics-set) | [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) | yes |
| [wet_mining_graphics_set_flipped](#wet-mining-graphics-set-flipped) | [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) | yes |

### allowed_effects

**Type:** [EffectTypeLimitation](../types/EffectTypeLimitation.md) · _optional_ · **Default:** `All effects are allowed`

Sets the [modules](../prototypes/ModulePrototype.md) and [beacon](../prototypes/BeaconPrototype.md) effects that are allowed to be used on this mining drill.

### allowed_module_categories

**Type:** array[[ModuleCategoryID](../types/ModuleCategoryID.md)] · _optional_ · **Default:** `All module categories are allowed`

Sets the [module categories](../prototypes/ModuleCategory.md) that are allowed to be inserted into this machine.

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_connector_flipped

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### drilling_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### drilling_sound_animation_end_frame

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### drilling_sound_animation_start_frame

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### drops_full_belt_stacks

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### effect_receiver

**Type:** [EffectReceiver](../types/EffectReceiver.md) · _optional_

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

The energy source of this mining drill.

### energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy used by the drill while mining. Can't be less than or equal to 0.

**Example:**

```
energy_usage = "150kW"
```

### filter_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

How many filters this mining drill has. Maximum count of filtered resources in a mining drill is 5.

### graphics_set

**Type:** [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) · _optional_

### graphics_set_flipped

**Type:** [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) · _optional_

### input_fluid_box

**Type:** [FluidBox](../types/FluidBox.md) · _optional_

### migrate_horizontal_mirroring

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When a save file from version 2.0.x or older is loaded and this property is `true`, entities facing east or west direction are migrated to flipped state.

### mining_speed

**Type:** [double](../types/double.md)

The speed of this drill.

### module_slots

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_

The number of module slots in this machine.

### monitor_visualization_tint

**Type:** [Color](../types/Color.md) · _optional_

When this mining drill is connected to the circuit network, the resource that it is reading (either the entire resource patch, or the resource in the mining area of the drill, depending on circuit network setting), is tinted in this color when mousing over the mining drill.

### moving_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### output_fluid_box

**Type:** [FluidBox](../types/FluidBox.md) · _optional_

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed.

### quality_affects_mining_radius

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::mining_drill_mining_radius_bonus](../prototypes/QualityPrototype.md#mining-drill-mining-radius-bonus) will be added to resource_searching_radius.

### quality_affects_module_slots

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::mining_drill_module_slots_bonus](../prototypes/QualityPrototype.md#mining-drill-module-slots-bonus) will be added to module slots count.

### radius_visualisation_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite used to show the range of the mining drill.

### require_resources_to_place

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### resource_categories

**Type:** array[[ResourceCategoryID](../types/ResourceCategoryID.md)]

The names of the [ResourceCategory](../prototypes/ResourceCategory.md) that can be mined by this drill. For a list of built-in categories, see [here](https://wiki.factorio.com/Data.raw#resource-category).

Note: Categories containing resources which produce items, fluids, or items+fluids may be combined on the same entity, but may not work as expected. Examples: Miner does not rotate fluid-resulting resources until depletion. Fluid isn't output (fluid resource change and fluidbox matches previous fluid). Miner with no `vector_to_place_result` can't output an item result and halts.

### resource_drain_rate_percent

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 100}`

May not be `0` or larger than `100`.

### resource_searching_offset

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

Offset of the `resource_searching_radius` from the entity center when the mining drill is facing north.

### resource_searching_radius

**Type:** [double](../types/double.md)

The distance from the center of the mining drill to search for resources in.

This is 2.49 for electric mining drills (a 5x5 area) and 0.99 for burner mining drills (a 2x2 area). The drill searches resource outside its natural boundary box, which is 0.01 (the middle of the entity); making it 2.5 and 1.0 gives it another block radius.

### shuffle_resources_to_mine

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### use_mirroring

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### uses_force_mining_productivity_bonus

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### vector_to_place_result

**Type:** [Vector](../types/Vector.md)

The position where any item results are placed, when the mining drill is facing north (default direction). If the drill does not produce any solid items but uses a fluidbox output instead (e.g. pumpjacks), a vector of `{0,0}` disables the yellow arrow alt-mode indicator for the placed item location.

### wet_mining_graphics_set

**Type:** [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) · _optional_

### wet_mining_graphics_set_flipped

**Type:** [MiningDrillGraphicsSet](../types/MiningDrillGraphicsSet.md) · _optional_
