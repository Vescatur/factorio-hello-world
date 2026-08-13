## Furnace Recipe Selection

This page describes how the ['furnace'](../prototypes/FurnacePrototype.md) selects a recipe from the available ingredients.

Only recipes with a single [item ingredient](../types/ItemIngredientPrototype.md), a single [fluid ingredient](../types/FluidIngredientPrototype.md), or one fluid and one item ingredient can be used by furnaces. Only recipes that are [enabled](../classes/LuaRecipe.md#enabled) and pass the [surface condition](../classes/LuaRecipePrototype.md#surface-conditions) checks can be selected.

When selecting a recipe based on the fluid ingredient, the first recipe in inventory order (by [subgroup](../prototypes/PrototypeBase.md#subgroup) and then [order](../prototypes/PrototypeBase.md#order)) that matches the fluid ingredient is picked. The quality of the recipe is always normal.

When selecting a recipe based on the item ingredient, the first recipe in inventory order (by [subgroup](../prototypes/PrototypeBase.md#subgroup) and then [order](../prototypes/PrototypeBase.md#order)) that matches the item ingredient is picked.

After that, the recipe quality is chosen based on the item ingredient's quality. There are three possible paths for choosing the recipe quality:

- If the recipe has [can_set_quality](../prototypes/RecipePrototype.md#can-set-quality) set to `false`, the normal recipe quality is chosen.
- If the recipe has [can_set_quality](../prototypes/RecipePrototype.md#can-set-quality) set to `true` and the item ingredient does not have quality control, meaning [quality_change](../types/ItemIngredientPrototype.md#quality-change), [quality_min](../types/ItemIngredientPrototype.md#quality-min), and [quality_max](../types/ItemIngredientPrototype.md#quality-max) are not set, the recipe quality is set to the item ingredient's quality.
- If the recipe has [can_set_quality](../prototypes/RecipePrototype.md#can-set-quality) set to `true` and the item ingredient has quality control, meaning any of [quality_change](../types/ItemIngredientPrototype.md#quality-change), [quality_min](../types/ItemIngredientPrototype.md#quality-min), or [quality_max](../types/ItemIngredientPrototype.md#quality-max) are set, the recipe quality is set to the reverse of the [quality_change](../types/ItemIngredientPrototype.md#quality-change) applied to the item ingredient's quality.

If the chosen recipe quality requires a different item ingredient quality than the available item ingredient's quality, the recipe is not selected.

If the furnace has recipes with one fluid and one item ingredient, the recipe is selected based on the fluid and item, and that recipe's quality is selected based on the item. If this does not find a recipe, then the recipe and recipe quality is selected based only on the item. If this also fails, the recipe is selected based only on the fluid and the recipe quality is always normal. The selection of the recipe and recipe quality based on item/fluid follow the same algorithm as described above.
