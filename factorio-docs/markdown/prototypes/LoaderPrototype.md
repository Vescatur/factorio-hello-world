# LoaderPrototype

_prototype_ · **abstract**

**Inherits from:** [TransportBeltConnectablePrototype](../prototypes/TransportBeltConnectablePrototype.md)

Continuously loads and unloads machines, as an alternative to inserters.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [adjustable_belt_stack_size](#adjustable-belt-stack-size) | [boolean](../types/boolean.md) | yes |
| [allow_container_interaction](#allow-container-interaction) | [boolean](../types/boolean.md) | yes |
| [allow_rail_interaction](#allow-rail-interaction) | [boolean](../types/boolean.md) | yes |
| [belt_length](#belt-length) | [double](../types/double.md) | yes |
| [circuit_connector](#circuit-connector) | array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_connector_layer](#circuit-connector-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [container_distance](#container-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_per_item](#energy-per-item) | [Energy](../types/Energy.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [HeatEnergySource](../types/HeatEnergySource.md) ∣ [FluidEnergySource](../types/FluidEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) | yes |
| [filter_count](#filter-count) | [uint8](../types/uint8.md) |  |
| [max_belt_stack_size](#max-belt-stack-size) | [uint8](../types/uint8.md) | yes |
| [per_lane_filters](#per-lane-filters) | [boolean](../types/boolean.md) | yes |
| [respect_insert_limits](#respect-insert-limits) | [boolean](../types/boolean.md) | yes |
| [structure](#structure) | [LoaderStructure](../types/LoaderStructure.md) | yes |
| [structure_render_layer](#structure-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [wait_for_full_stack](#wait-for-full-stack) | [boolean](../types/boolean.md) | yes |

### adjustable_belt_stack_size

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Loader belt stack size can be adjusted at runtime. Requires [LoaderPrototype::max_belt_stack_size](../prototypes/LoaderPrototype.md#max-belt-stack-size) to be > 1.

### allow_container_interaction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this loader can load and unload stationary inventories such as containers and crafting machines.

### allow_rail_interaction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this loader can load and unload [RollingStockPrototype](../prototypes/RollingStockPrototype.md).

### belt_length

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

How long this loader's belt is. Should be the same as belt_distance, which is hardcoded to `0.5` for [Loader1x2Prototype](../prototypes/Loader1x2Prototype.md) and to 0 for [Loader1x1Prototype](../prototypes/Loader1x1Prototype.md). See the linked prototypes for an explanation of belt_distance.

### circuit_connector

**Type:** array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

First the four cardinal directions for `direction_out`, followed by the four directions for `direction_in`.

### circuit_connector_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

Render layer for all directions of the circuit connectors.

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### container_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.5}`

The distance between the position of this loader and the tile of the loader's container target.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_per_item

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Energy in Joules. Can't be negative.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [HeatEnergySource](../types/HeatEnergySource.md) ∣ [FluidEnergySource](../types/FluidEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) · _optional_

### filter_count

**Type:** [uint8](../types/uint8.md)

How many item filters this loader has. Maximum count of filtered items in loader is 5.

### max_belt_stack_size

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Loader will not create stacks on belt that are larger than this value. Must be >= 1.

### per_lane_filters

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If filters are per lane. Can only be set to true if filter_count is equal to 2.

### respect_insert_limits

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set, this loader will respect the same automated insertion limits as inserters do, instead of inserting up to the full ingredient stack capacity.

### structure

**Type:** [LoaderStructure](../types/LoaderStructure.md) · _optional_

### structure_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### wait_for_full_stack

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set, this loader will ignore items for which there is not enough to create a full belt stack. Relevant only when loader can create belt stacks.
