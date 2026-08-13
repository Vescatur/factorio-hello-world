# WorkerRobotOrder

_concept_

**Definition:** table{cliff_explosive_id, item_to_place, secondary_target, target, target_count, target_item, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [cliff_explosive_id](#cliff-explosive-id) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [item_to_place](#item-to-place) | [ItemWithQualityCount](../concepts/ItemWithQualityCount.md) | yes |
| [secondary_target](#secondary-target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [target](#target) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [target_count](#target-count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [target_item](#target-item) | [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) | yes |
| [type](#type) | [defines.robot_order_type](../defines/defines.md) |  |

### cliff_explosive_id

**Type:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _optional_

The cliff explosive for the cliff explode job.

### item_to_place

**Type:** [ItemWithQualityCount](../concepts/ItemWithQualityCount.md) · _optional_

The item to place if relevant.

### secondary_target

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The secondary target of the upgrade order.

### target

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The target of the order.

### target_count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

The target count of the pickup or deliver order.

### target_item

**Type:** [ItemIDAndQualityIDPair](../concepts/ItemIDAndQualityIDPair.md) · _optional_

The target item of the pickup or deliver order.

### type

**Type:** [defines.robot_order_type](../defines/defines.md)

The type of the order.
