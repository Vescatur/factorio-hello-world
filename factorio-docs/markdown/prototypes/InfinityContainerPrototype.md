# InfinityContainerPrototype

_prototype_

**Prototype type string:** `type = "infinity-container"`

**Inherits from:** [LogisticContainerPrototype](../prototypes/LogisticContainerPrototype.md)

A generic container, such as a chest, that can spawn or void items and interact with the logistics network.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [erase_contents_when_mined](#erase-contents-when-mined) | [boolean](../types/boolean.md) |  |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [logistic_mode](#logistic-mode) | [LogisticMode](../types/LogisticMode.md) | yes |
| [preserve_contents_when_created](#preserve-contents-when-created) | [boolean](../types/boolean.md) | yes |
| [render_not_in_network_icon](#render-not-in-network-icon) | [boolean](../types/boolean.md) | yes |

### erase_contents_when_mined

**Type:** [boolean](../types/boolean.md)

### gui_mode

**Type:** `"all"` ∣ `"none"` ∣ `"admins"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

Controls which players can control what the chest spawns.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _overrides parent_

The number of slots in this container. May not be zero.

### logistic_mode

**Type:** [LogisticMode](../types/LogisticMode.md) · _optional_ · _overrides parent_

The way this chest interacts with the logistic network.

### preserve_contents_when_created

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When true, items created inside the infinity chest will not start to spoil until they have been removed from the chest.

### render_not_in_network_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the "no network" icon should be rendered on this entity if the entity is not within a logistics network.
