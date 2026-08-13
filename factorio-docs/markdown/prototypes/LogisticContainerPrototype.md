# LogisticContainerPrototype

_prototype_

**Prototype type string:** `type = "logistic-container"`

**Inherits from:** [ContainerPrototype](../prototypes/ContainerPrototype.md)

A generic container, such as a chest, that interacts with the logistics network.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [logistic_mode](#logistic-mode) | [LogisticMode](../types/LogisticMode.md) |  |
| [max_logistic_slots](#max-logistic-slots) | [uint16](../types/uint16.md) | yes |
| [render_not_in_network_icon](#render-not-in-network-icon) | [boolean](../types/boolean.md) | yes |
| [robot_door](#robot-door) | [RobotDoorSpecification](../types/RobotDoorSpecification.md) | yes |
| [trash_inventory_size](#trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [use_exact_mode](#use-exact-mode) | [boolean](../types/boolean.md) | yes |

### logistic_mode

**Type:** [LogisticMode](../types/LogisticMode.md)

The way this chest interacts with the logistic network.

### max_logistic_slots

**Type:** [uint16](../types/uint16.md) · _optional_

The number of request slots this logistics container has. Requester-type containers must have > 0 slots and can have a maximum of [UtilityConstants::max_logistic_filter_count](../prototypes/UtilityConstants.md#max-logistic-filter-count) slots. Storage-type containers must have <= 1 slot.

### render_not_in_network_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the "no network" icon should be rendered on this entity if the entity is not within a logistics network.

### robot_door

**Type:** [RobotDoorSpecification](../types/RobotDoorSpecification.md) · _optional_

### trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### use_exact_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether logistic robots have to deliver the exact amount of items requested to this logistic container instead of over-delivering (within their cargo size).
