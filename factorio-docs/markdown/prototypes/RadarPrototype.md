# RadarPrototype

_prototype_

**Prototype type string:** `type = "radar"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [radar](https://wiki.factorio.com/Radar).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [connects_to_other_radars](#connects-to-other-radars) | [boolean](../types/boolean.md) | yes |
| [default_universe_channel](#default-universe-channel) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_fraction_to_connect](#energy-fraction-to-connect) | [float](../types/float.md) | yes |
| [energy_fraction_to_disconnect](#energy-fraction-to-disconnect) | [float](../types/float.md) | yes |
| [energy_per_nearby_scan](#energy-per-nearby-scan) | [Energy](../types/Energy.md) |  |
| [energy_per_sector](#energy-per-sector) | [Energy](../types/Energy.md) |  |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [frozen_patch](#frozen-patch) | [Sprite](../types/Sprite.md) | yes |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [max_distance_of_nearby_sector_revealed](#max-distance-of-nearby-sector-revealed) | [uint32](../types/uint32.md) |  |
| [max_distance_of_sector_revealed](#max-distance-of-sector-revealed) | [uint32](../types/uint32.md) |  |
| [pictures](#pictures) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [radius_minimap_visualisation_color](#radius-minimap-visualisation-color) | [Color](../types/Color.md) | yes |
| [reset_orientation_when_frozen](#reset-orientation-when-frozen) | [boolean](../types/boolean.md) | yes |
| [rotation_speed](#rotation-speed) | [double](../types/double.md) | yes |

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### connects_to_other_radars

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If set to true, radars on the same surface will connect to other radars on the same surface using hidden wires with [radar](../defines/defines.md) origin.

### default_universe_channel

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

The default channel for the circuit network connection in universe mode.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_fraction_to_connect

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.9}`

Must be between 0 and 1. Must be larger than or equal to `energy_fraction_to_disconnect`.

### energy_fraction_to_disconnect

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

Must be between 0 and 1. Must be less than or equal to `energy_fraction_to_connect`.

### energy_per_nearby_scan

**Type:** [Energy](../types/Energy.md)

The amount of energy the radar has to consume for nearby scan to be performed. This value doesn't have any effect on sector scanning.

Performance warning: nearby scan causes re-charting of many chunks, which is expensive operation. If you want to make a radar that updates map more in real time, you should keep its range low. If you are making radar with high range, you should set this value such that nearby scan is performed once a second or so. For example if you set `energy_usage` to 100kW, setting `energy_per_nearby_scan` to 100kJ will cause nearby scan to happen once per second.

**Example:**

```
energy_per_nearby_scan = "250kJ"
```

### energy_per_sector

**Type:** [Energy](../types/Energy.md)

The amount of energy it takes to scan a sector. This value doesn't have any effect on nearby scanning.

**Example:**

```
energy_per_sector = "10MJ"
```

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

The energy source for this radar.

### energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy this radar uses.

**Example:**

```
energy_usage = "300kW"
```

### frozen_patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### max_distance_of_nearby_sector_revealed

**Type:** [uint32](../types/uint32.md)

The radius of the area constantly revealed by this radar, in chunks.

### max_distance_of_sector_revealed

**Type:** [uint32](../types/uint32.md)

The radius of the area this radar can chart, in chunks.

### pictures

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### radius_minimap_visualisation_color

**Type:** [Color](../types/Color.md) · _optional_

### reset_orientation_when_frozen

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### rotation_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`
