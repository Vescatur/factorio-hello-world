# AssemblingMachinePrototype

_prototype_

**Prototype type string:** `type = "assembling-machine"`

**Inherits from:** [CraftingMachinePrototype](../prototypes/CraftingMachinePrototype.md)

An assembling machine - like the assembling machines 1/2/3 in the game, but you can use your own recipe categories.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_connector_flipped](#circuit-connector-flipped) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_recipe_finished_signal](#default-recipe-finished-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [default_working_signal](#default-working-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [disabled_when_recipe_not_researched](#disabled-when-recipe-not-researched) | [boolean](../types/boolean.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [fixed_quality](#fixed-quality) | [QualityID](../types/QualityID.md) | yes |
| [fixed_recipe](#fixed-recipe) | [RecipeID](../types/RecipeID.md) | yes |
| [fluid_boxes_off_when_no_fluid_recipe](#fluid-boxes-off-when-no-fluid-recipe) | [boolean](../types/boolean.md) | yes |
| [gui_title_key](#gui-title-key) | [string](../types/string.md) | yes |
| [ingredient_count](#ingredient-count) | [uint16](../types/uint16.md) | yes |
| [max_item_product_count](#max-item-product-count) | [uint16](../types/uint16.md) | yes |

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_connector_flipped

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### default_recipe_finished_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### default_working_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### disabled_when_recipe_not_researched

**Type:** [boolean](../types/boolean.md) · _optional_

Defaults to true if `fixed_recipe` is not given.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### fixed_quality

**Type:** [QualityID](../types/QualityID.md) · _optional_

Only loaded if `fixed_recipe` is defined.

### fixed_recipe

**Type:** [RecipeID](../types/RecipeID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

The preset recipe of this machine. This machine does not show a recipe selection if this is set. The base game uses this for the [rocket silo](https://wiki.factorio.com/Rocket_silo).

### fluid_boxes_off_when_no_fluid_recipe

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### gui_title_key

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

The locale key of the title of the GUI that is shown when the player opens the assembling machine. May not be longer than 200 characters.

### ingredient_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 65535}`

Sets the maximum number of item ingredients this machine can craft with. Any recipe with more item ingredients than this will be unavailable in this machine.

This only counts item ingredients, not fluid ingredients! This means if ingredient count is 2, and the recipe has 2 item ingredients and 1 fluid ingredient, it can still be crafted in the machine.

### max_item_product_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 65535}`
