# ProgrammableSpeakerPrototype

_prototype_

**Prototype type string:** `type = "programmable-speaker"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [programmable speaker](https://wiki.factorio.com/Programmable_speaker).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [audible_distance_modifier](#audible-distance-modifier) | [float](../types/float.md) | yes |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [energy_usage_per_tick](#energy-usage-per-tick) | [Energy](../types/Energy.md) |  |
| [instruments](#instruments) | array[[ProgrammableSpeakerInstrument](../types/ProgrammableSpeakerInstrument.md)] |  |
| [maximum_polyphony](#maximum-polyphony) | [uint32](../types/uint32.md) |  |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) | yes |

### audible_distance_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

### energy_usage_per_tick

**Type:** [Energy](../types/Energy.md)

### instruments

**Type:** array[[ProgrammableSpeakerInstrument](../types/ProgrammableSpeakerInstrument.md)]

### maximum_polyphony

**Type:** [uint32](../types/uint32.md)

### sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_
