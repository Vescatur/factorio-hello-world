# UpgradeItemPrototype

_prototype_

**Prototype type string:** `type = "upgrade-item"`

**Inherits from:** [SelectionToolPrototype](../prototypes/SelectionToolPrototype.md)

An [upgrade planner](https://wiki.factorio.com/Upgrade_planner).

For an entity to be allowed as an upgrade source, it must be minable, may not have "not-upgradable" flag set and may not be [hidden](../prototypes/PrototypeBase.md#hidden). Additionally, the source entity's mining result must not be an item product that is [hidden](../prototypes/ItemPrototype.md#hidden). Mining results with no item products are allowed.

For an entity to be allowed as an upgrade target, it must have least 1 item that builds it that isn't hidden.

For two entities to be upgrades of each other, the two entities must have the same [fast replaceable group](../prototypes/EntityPrototype.md#fast-replaceable-group), the same [collision box](../prototypes/EntityPrototype.md#collision-box) and the same [collision mask](../prototypes/EntityPrototype.md#collision-mask). Additionally, [underground belts](../prototypes/UndergroundBeltPrototype.md) cannot be upgraded to [transport belts](../prototypes/TransportBeltPrototype.md) and vice versa.

For an entity to be automatically upgraded to another entity without configuring the upgrade planner, the [next upgrade](../prototypes/EntityPrototype.md#next-upgrade) of the upgrade source entity must be set.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alt_select](#alt-select) | [SelectionModeData](../types/SelectionModeData.md) |  |
| [always_include_tiles](#always-include-tiles) | [boolean](../types/boolean.md) | yes |
| [draw_label_for_cursor_render](#draw-label-for-cursor-render) | [boolean](../types/boolean.md) | yes |
| [select](#select) | [SelectionModeData](../types/SelectionModeData.md) |  |
| [stack_size](#stack-size) | `1` |  |

### alt_select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _overrides parent_

The [SelectionModeData::mode](../types/SelectionModeData.md#mode) is hardcoded to `"cancel-upgrade"`.

The filters are parsed, but then ignored and forced to be empty.

### always_include_tiles

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

This property is hardcoded to `false`.

### draw_label_for_cursor_render

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If the item will draw its label when held in the cursor in place of the item count.

### select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _overrides parent_

The [SelectionModeData::mode](../types/SelectionModeData.md#mode) is hardcoded to `"upgrade"`.

The filters are parsed, but then ignored and forced to be empty.

### stack_size

**Type:** `1` · _overrides parent_

Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag is set.

**Example:**

```
stack_size = 1
```
