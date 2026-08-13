# ItemWithInventoryPrototype

_prototype_

**Prototype type string:** `type = "item-with-inventory"`

**Inherits from:** [ItemWithLabelPrototype](../prototypes/ItemWithLabelPrototype.md)

The inventory allows setting player defined filters similar to cargo wagon inventories.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [filter_message_key](#filter-message-key) | [string](../types/string.md) | yes |
| [filter_mode](#filter-mode) | `"blacklist"` ∣ `"whitelist"` | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [item_filters](#item-filters) | array[[ItemID](../types/ItemID.md)] | yes |
| [item_group_filters](#item-group-filters) | array[[ItemGroupID](../types/ItemGroupID.md)] | yes |
| [item_subgroup_filters](#item-subgroup-filters) | array[[ItemSubGroupID](../types/ItemSubGroupID.md)] | yes |
| [quality_affects_inventory_size](#quality-affects-inventory-size) | [boolean](../types/boolean.md) | yes |
| [stack_size](#stack-size) | `1` |  |

### filter_message_key

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'item-limitation.item-not-allowed-in-this-container-item'}`

The locale key used when the player attempts to put an item that doesn't match the filter rules into the item-with-inventory.

### filter_mode

**Type:** `"blacklist"` ∣ `"whitelist"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'whitelist'}`

This determines how filters are applied. If no filters are defined this is automatically set to "none".

**Example:**

```
filter_mode = "blacklist"
```

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The inventory size of the item.

### item_filters

**Type:** array[[ItemID](../types/ItemID.md)] · _optional_

A list of explicit item names to be used as filters.

**Example:**

```
item_filters = {"iron-ore", "copper-ore", "coal", "stone"}
```

### item_group_filters

**Type:** array[[ItemGroupID](../types/ItemGroupID.md)] · _optional_

A list of explicit item group names to be used as filters.

**Example:**

```
item_group_filters = {"logistics", "fluids"}
```

### item_subgroup_filters

**Type:** array[[ItemSubGroupID](../types/ItemSubGroupID.md)] · _optional_

A list of explicit [item subgroup](../prototypes/ItemSubGroup.md) names to be used as filters.

**Example:**

```
item_subgroup_filters = {"military-equipment", "tool"}
```

### quality_affects_inventory_size

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### stack_size

**Type:** `1` · _overrides parent_

Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag is set.

**Example:**

```
stack_size = 1
```
