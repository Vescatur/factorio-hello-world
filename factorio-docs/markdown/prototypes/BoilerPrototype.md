# BoilerPrototype

_prototype_

**Prototype type string:** `type = "boiler"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [boiler](https://wiki.factorio.com/Boiler). It heats fluid and optionally outputs it as a different fluid.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [burning_cooldown](#burning-cooldown) | [uint16](../types/uint16.md) |  |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_consumption](#energy-consumption) | [Energy](../types/Energy.md) |  |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [fire_flicker_enabled](#fire-flicker-enabled) | [boolean](../types/boolean.md) | yes |
| [fire_glow_flicker_enabled](#fire-glow-flicker-enabled) | [boolean](../types/boolean.md) | yes |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [mode](#mode) | `"heat-fluid-inside"` ∣ `"output-to-separate-pipe"` | yes |
| [output_fluid_box](#output-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [pictures](#pictures) | [BoilerPictureSet](../types/BoilerPictureSet.md) | yes |
| [target_temperature](#target-temperature) | [float](../types/float.md) | yes |

### burning_cooldown

**Type:** [uint16](../types/uint16.md)

Controls for how many ticks the boiler will show the fire and fire_glow after the energy source runs out of energy.

Note that `fire` and `fire_glow` alpha is set to the light intensity of the energy source, so 0 light intensity means the fire is invisible. For burner energy sources, the light intensity will reach zero rather quickly after the boiler runs out of fuel, effectively capping the time that `fire` and `fire_glow` will be shown after the boiler runs out of fuel.

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_consumption

**Type:** [Energy](../types/Energy.md)

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

### fire_flicker_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is set to false, `fire` alpha is always 1 instead of being controlled by the light intensity of the energy source.

### fire_glow_flicker_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is set to false, `fire_glow` alpha is always 1 instead of being controlled by the light intensity of the energy source.

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

The input fluid box.

If `mode` is `"heat-fluid-inside"`, the fluid is heated up directly in this fluidbox.

### mode

**Type:** `"heat-fluid-inside"` ∣ `"output-to-separate-pipe"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'heat-fluid-inside'}`

In the `"output-to-separate-pipe"` mode, fluid is transferred from the `fluid_box` to the `output_fluid_box` when enough energy is available to [heat](../prototypes/FluidPrototype.md#heat-capacity) the input fluid to the `target_temperature`. Setting a filter on the `output_fluid_box` means that instead of the heated input fluid getting moved to the output, it is converted to the filtered fluid in a ratio based on the heat capacity of the fluids: `output_fluid_amount = input_fluid_amount * (input_fluid_heat_capacity / output_fluid_heat_capacity)`

In the `"heat-fluid-inside"` mode, fluid in the `fluid_box` is continuously heated from the input temperature up to its [FluidPrototype::max_temperature](../prototypes/FluidPrototype.md#max-temperature).

### output_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

The output fluid box.

If `mode` is `"output-to-separate-pipe"` and this has a [filter](../types/FluidBox.md#filter), the heated input fluid is converted to the output fluid that is set in the filter. The conversion ratio is based on the [heat capacity](../prototypes/FluidPrototype.md#heat-capacity) of the fluids: `output_fluid_amount = input_fluid_amount * (input_fluid_heat_capacity / output_fluid_heat_capacity)`

If `mode` is `"heat-fluid-inside"`, this fluidbox is unused.

### pictures

**Type:** [BoilerPictureSet](../types/BoilerPictureSet.md) · _optional_

### target_temperature

**Type:** [float](../types/float.md) · _optional_

Only loaded, and mandatory if `mode` is `"output-to-separate-pipe"`. This is the temperature that the input fluid must reach to be moved to the output fluid box.
