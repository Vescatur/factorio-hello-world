# FurnacePrototype

_prototype_

**Prototype type string:** `type = "furnace"`

**Inherits from:** [CraftingMachinePrototype](../prototypes/CraftingMachinePrototype.md)

A furnace. Normal furnaces only process "smelting" category recipes, but you can make furnaces that process other [recipe categories](../prototypes/RecipeCategory.md).

The difference to assembling machines is that furnaces automatically choose their recipe based on input. See [Furnace Recipe Selection](../auxiliary/furnace-recipe-selection.md) for how the recipe is chosen.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cant_insert_at_source_message_key](#cant-insert-at-source-message-key) | [string](../types/string.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_connector_flipped](#circuit-connector-flipped) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [custom_input_slot_tooltip_key](#custom-input-slot-tooltip-key) | [string](../types/string.md) | yes |
| [default_recipe_finished_signal](#default-recipe-finished-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_working_signal](#default-working-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [result_inventory_size](#result-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [source_inventory_size](#source-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |

### cant_insert_at_source_message_key

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'inventory-restriction.cant-be-smelted'}`

The locale key of the message shown when the player attempts to insert an item into the furnace that cannot be processed by that furnace. In-game, the locale is provided the `__1__` parameter, which is the localised name of the item.

The locale key is also used with an `_until` suffix for items that cannot be processed until they recipe is unlocked by a technology.

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_connector_flipped

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### custom_input_slot_tooltip_key

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

The locale key of the tooltip to be shown in the input slot instead of the automatically generated list of items that fit there

### default_recipe_finished_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_working_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### result_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The number of output slots.

### source_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The number of input slots, but not more than 1.
