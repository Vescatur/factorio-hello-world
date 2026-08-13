# LinkedContainerPrototype

_prototype_

**Prototype type string:** `type = "linked-container"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A container that shares its inventory with containers with the same [link_id](../classes/LuaEntity.md#link-id), which can be set via the GUI. The link IDs are per prototype and force, so only containers with the **same ID**, **same prototype name** and **same force** will share inventories.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [inventory_properties](#inventory-properties) | [InventoryWithCustomStackSizeSpecification](../types/InventoryWithCustomStackSizeSpecification.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [inventory_type](#inventory-type) | `"normal"` ∣ `"with_bar"` ∣ `"with_filters_and_bar"` ∣ `"with_custom_stack_size"` ∣ `"with_weight_limit"` | yes |
| [inventory_weight_limit](#inventory-weight-limit) | [Weight](../types/Weight.md) | yes |
| [picture](#picture) | [Sprite](../types/Sprite.md) | yes |

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this linked container.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### gui_mode

**Type:** `"all"` ∣ `"none"` ∣ `"admins"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

Players that can access the GUI to change the link ID.

### inventory_properties

**Type:** [InventoryWithCustomStackSizeSpecification](../types/InventoryWithCustomStackSizeSpecification.md) · _optional_

Only used when `inventory_type` is `"with_custom_stack_size"`.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Must be > 0.

### inventory_type

**Type:** `"normal"` ∣ `"with_bar"` ∣ `"with_filters_and_bar"` ∣ `"with_custom_stack_size"` ∣ `"with_weight_limit"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'with_bar'}`

Determines the type of inventory that this linked container has. Whether the inventory has a limiter bar, can be filtered (like cargo wagons), uses a custom stack size for contained item stacks (like artillery wagon), or uses a weight limit (like space age rocket silo).

### inventory_weight_limit

**Type:** [Weight](../types/Weight.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only used when `inventory_type` is `"with_weight_limit"`.

### picture

**Type:** [Sprite](../types/Sprite.md) · _optional_
