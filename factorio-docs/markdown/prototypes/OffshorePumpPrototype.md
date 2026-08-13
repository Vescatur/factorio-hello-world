# OffshorePumpPrototype

_prototype_

**Prototype type string:** `type = "offshore-pump"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An [offshore pump](https://wiki.factorio.com/Offshore_pump).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [always_draw_fluid](#always-draw-fluid) | [boolean](../types/boolean.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [fluid_source_offset](#fluid-source-offset) | [Vector](../types/Vector.md) |  |
| [graphics_set](#graphics-set) | [OffshorePumpGraphicsSet](../types/OffshorePumpGraphicsSet.md) | yes |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |
| [pumping_speed](#pumping-speed) | [FluidAmount](../types/FluidAmount.md) |  |
| [remove_on_tile_collision](#remove-on-tile-collision) | [boolean](../types/boolean.md) | yes |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../types/boolean.md) | yes |

### always_draw_fluid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If false, the offshore pump will not show fluid present (visually) before there is an output connected. The pump will also animate yet not show fluid when the fluid is 100% extracted (e.g. such as with a pump).

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

Defines how the offshore pump is powered.

When using an electric energy source and `drain` is not specified, it will be set to `energy_usage ÷ 30` automatically.

### energy_usage

**Type:** [Energy](../types/Energy.md)

Sets how much energy this offshore pump consumes. Energy usage has to be positive.

**Example:**

```
energy_usage = "60kW"
```

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

### fluid_source_offset

**Type:** [Vector](../types/Vector.md)

### graphics_set

**Type:** [OffshorePumpGraphicsSet](../types/OffshorePumpGraphicsSet.md) · _optional_

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed.

### pumping_speed

**Type:** [FluidAmount](../types/FluidAmount.md)

How many units of fluid are produced per tick. Must be > 0.

### remove_on_tile_collision

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### show_fluid_visualization_when_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, fluid pipelines will be visualized when this entity is held in the cursor.
