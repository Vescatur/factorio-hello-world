# ItemGroup

_prototype_

**Prototype type string:** `type = "item-group"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

An item group. Item groups are the tabs shown above the list of craftable items in the player's inventory GUI. The built-in groups are "logistics", "production", "intermediate-products" and "combat" but mods can define their own.

Items are sorted into item groups by sorting them into a [subgroup](../prototypes/ItemPrototype.md#subgroup) which then belongs to an [item group](../prototypes/ItemSubGroup.md#group).

**Example:**

```
{
  type = "item-group",
  name = "logistics",
  order = "a",
  icon = "__base__/graphics/item-group/logistics.png",
  icon_size = 128,
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [order_in_recipe](#order-in-recipe) | [Order](../types/Order.md) | yes |

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon that is shown to represent this item group.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

The base game uses 128px icons for item groups.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

The icon that is shown to represent this item group. Can't be an empty array.

### order_in_recipe

**Type:** [Order](../types/Order.md) · _optional_ · **Default:** `The `order` of this item group.`

Item ingredients in recipes are ordered by item group if [RecipePrototype::sort_item_ingredients](../prototypes/RecipePrototype.md#sort-item-ingredients) is set to `true`. The `order_in_recipe` property can be used to specify the ordering in recipes with sorted ingredients without affecting the item group's inventory order.
