# ContainerPrototype

_prototype_

**Prototype type string:** `type = "container"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A generic container, such as a chest.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_connector](#circuit-connector) | array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_status](#default-status) | [EntityStatus](../types/EntityStatus.md) | yes |
| [direction_count](#direction-count) | [uint8](../types/uint8.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [inventory_properties](#inventory-properties) | [InventoryWithCustomStackSizeSpecification](../types/InventoryWithCustomStackSizeSpecification.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [inventory_type](#inventory-type) | `"normal"` ∣ `"with_bar"` ∣ `"with_filters_and_bar"` ∣ `"with_custom_stack_size"` ∣ `"with_weight_limit"` | yes |
| [inventory_weight_limit](#inventory-weight-limit) | [Weight](../types/Weight.md) | yes |
| [picture](#picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [quality_affects_inventory_size](#quality-affects-inventory-size) | [boolean](../types/boolean.md) | yes |

### circuit_connector

**Type:** array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

If given, there must be exactly `direction_count` elements in the table.

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this container.

### default_status

**Type:** [EntityStatus](../types/EntityStatus.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'normal'}`

### direction_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Amount of directions this container should have. Allowed values are 1, 2 and 4.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### inventory_properties

**Type:** [InventoryWithCustomStackSizeSpecification](../types/InventoryWithCustomStackSizeSpecification.md) · _optional_

Only used when `inventory_type` is `"with_custom_stack_size"`.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The number of slots in this container.

### inventory_type

**Type:** `"normal"` ∣ `"with_bar"` ∣ `"with_filters_and_bar"` ∣ `"with_custom_stack_size"` ∣ `"with_weight_limit"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'with_bar'}`

Determines the type of inventory that this container has. Whether the inventory has a limiter bar, can be filtered (like cargo wagons), uses a custom stack size for contained item stacks (like artillery wagon), or uses a weight limit (like space age rocket silo).

### inventory_weight_limit

**Type:** [Weight](../types/Weight.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only used when `inventory_type` is `"with_weight_limit"`.

### picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

The picture displayed for this entity.

### quality_affects_inventory_size

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`
