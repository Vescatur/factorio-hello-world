# RecipeCategory

_prototype_

**Prototype type string:** `type = "recipe-category"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A recipe category. The built-in categories can be found [here](https://wiki.factorio.com/Data.raw#recipe-category). See [RecipePrototype::category](../prototypes/RecipePrototype.md#category). Recipe categories can be used to specify which [machine](../prototypes/CraftingMachinePrototype.md#crafting-categories) can craft which [recipes](../prototypes/RecipePrototype.md).

The recipe category with the name "crafting" cannot contain recipes with fluid ingredients or products.

**Example:**

```
{
  type = "recipe-category",
  name = "my-category"
}
```
