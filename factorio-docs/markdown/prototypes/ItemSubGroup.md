# ItemSubGroup

_prototype_

**Prototype type string:** `type = "item-subgroup"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

An item subgroup. Item subgroups are the rows in the recipe list in the player's inventory GUI. The subgroup of a prototype also determines its item [group](../prototypes/ItemGroup.md#group) (tab in the recipe list).

The built-in subgroups can be found [here](https://wiki.factorio.com/Data.raw#item-subgroup). See [ItemPrototype::subgroup](../prototypes/ItemPrototype.md#subgroup) for setting the subgroup of an item.

**Example:**

```
{
  type = "item-subgroup",
  name = "train-transport",
  group = "logistics",
  order = "e"
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [group](#group) | [ItemGroupID](../types/ItemGroupID.md) |  |

### group

**Type:** [ItemGroupID](../types/ItemGroupID.md)

The item group this subgroup is located in.
