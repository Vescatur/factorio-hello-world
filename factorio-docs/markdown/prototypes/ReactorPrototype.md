# ReactorPrototype

_prototype_

**Prototype type string:** `type = "reactor"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [reactor](https://wiki.factorio.com/Reactor).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [connection_patches_connected](#connection-patches-connected) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [connection_patches_disconnected](#connection-patches-disconnected) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [consumption](#consumption) | [Energy](../types/Energy.md) |  |
| [default_fuel_glow_color](#default-fuel-glow-color) | [Color](../types/Color.md) | yes |
| [default_temperature_signal](#default-temperature-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [heat_buffer](#heat-buffer) | [HeatBuffer](../types/HeatBuffer.md) |  |
| [heat_connection_patches_connected](#heat-connection-patches-connected) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [heat_connection_patches_disconnected](#heat-connection-patches-disconnected) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [heat_lower_layer_picture](#heat-lower-layer-picture) | [Sprite](../types/Sprite.md) | yes |
| [heating_radius](#heating-radius) | [double](../types/double.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [lower_layer_picture](#lower-layer-picture) | [Sprite](../types/Sprite.md) | yes |
| [meltdown_action](#meltdown-action) | [Trigger](../types/Trigger.md) | yes |
| [neighbour_bonus](#neighbour-bonus) | [double](../types/double.md) | yes |
| [neighbour_connectable](#neighbour-connectable) | [NeighbourConnectable](../types/NeighbourConnectable.md) | yes |
| [picture](#picture) | [Sprite](../types/Sprite.md) | yes |
| [scale_energy_usage](#scale-energy-usage) | [boolean](../types/boolean.md) | yes |
| [temperature_to_suppress_energy_icons](#temperature-to-suppress-energy-icons) | [double](../types/double.md) | yes |
| [use_fuel_glow_color](#use-fuel-glow-color) | [boolean](../types/boolean.md) | yes |
| [working_light_picture](#working-light-picture) | [Animation](../types/Animation.md) | yes |

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### connection_patches_connected

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

If defined, number of variations must be at least equal to count of [connections](../types/HeatBuffer.md#connections) defined in `heat_buffer`. Each variation represents connected heat buffer connection of corresponding index.

### connection_patches_disconnected

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

If defined, number of variations must be at least equal to count of [connections](../types/HeatBuffer.md#connections) defined in `heat_buffer`. Each variation represents unconnected heat buffer connection of corresponding index.

### consumption

**Type:** [Energy](../types/Energy.md)

How much energy this reactor can consume (from the input energy source) and then output as heat.

### default_fuel_glow_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{1, 1, 1, 1} (white)``

When `use_fuel_glow_color` is true, this is the color used as `working_light_picture` tint for fuels that don't have glow color defined.

### default_temperature_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

May not be a heat energy source.

The input energy source, in vanilla it is a burner energy source.

### heat_buffer

**Type:** [HeatBuffer](../types/HeatBuffer.md)

The energy output as heat.

### heat_connection_patches_connected

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

If defined, number of variations must be at least equal to count of [connections](../types/HeatBuffer.md#connections) defined in `heat_buffer`. When reactor is heated, corresponding variations are drawn over `connection_patches_connected`.

### heat_connection_patches_disconnected

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

If defined, number of variations must be at least equal to count of [connections](../types/HeatBuffer.md#connections) defined in `heat_buffer`. When reactor is heated, corresponding variations are drawn over `connection_patches_disconnected`.

### heat_lower_layer_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### heating_radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### lower_layer_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### meltdown_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

The action is triggered when the reactor dies (is destroyed) at over 90% of max temperature.

### neighbour_bonus

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### neighbour_connectable

**Type:** [NeighbourConnectable](../types/NeighbourConnectable.md) · _optional_

Defines connection points to neighbours used to compute neighbour bonus.

### picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### scale_energy_usage

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When this is true, the reactor will stop consuming fuel/energy when the temperature has reached the maximum.

### temperature_to_suppress_energy_icons

**Type:** [double](../types/double.md) · _optional_

The temperature above which energy icons are suppressed. Defaults to maximum double value.

### use_fuel_glow_color

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the reactor should use [fuel_glow_color](../prototypes/ItemPrototype.md#fuel-glow-color) from the fuel item prototype as light color and tint for `working_light_picture`. [Forum post.](https://forums.factorio.com/71121)

### working_light_picture

**Type:** [Animation](../types/Animation.md) · _optional_
