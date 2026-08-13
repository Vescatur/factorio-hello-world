# Data

_type_ · **abstract**

The data table is read by the game to load all prototypes.

At the end of the prototype stage, the data table is loaded by the game engine and the format of the prototypes is validated. Any extra properties are ignored. See [Data Lifecycle](../auxiliary/data-lifecycle.md) for more information.

The data table and its properties are defined in Lua, so their source code can be viewed in [dataloader.lua](https://github.com/wube/factorio-data/blob/master/core/lualib/dataloader.lua).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [extend](#extend) | [DataExtendMethod](../types/DataExtendMethod.md) |  |
| [is_demo](#is-demo) | [boolean](../types/boolean.md) |  |
| [raw](#raw) | dictionary[[string](../types/string.md) → dictionary[[string](../types/string.md) → [AnyPrototype](../types/AnyPrototype.md)]] |  |

### extend

**Type:** [DataExtendMethod](../types/DataExtendMethod.md)

The primary way to add prototypes to the data table.

**Example:**

```
local not_coal =
{
  type = "item",
  name = "a-thing",
  icon = "__base__/graphics/icons/coal.png",
  icon_size = 64,
  stack_size = 2
}
local proto2 =
{
  type = "fuel-category",
  name = "best-fuel"
}
data:extend({not_coal, proto2})
```

### is_demo

**Type:** [boolean](../types/boolean.md)

Set by the game based on whether the demo or retail version is running. Should not be used by mods.

### raw

**Type:** dictionary[[string](../types/string.md) → dictionary[[string](../types/string.md) → [AnyPrototype](../types/AnyPrototype.md)]]

A dictionary of prototype types to values that themselves are dictionaries of prototype names to specific prototypes.

This means that individual prototypes can be accessed with `local prototype = data.raw["prototype-type"]["internal-name"]`.

**Examples:**

```
-- set the stack size of coal to be 1000
data.raw["item"]["coal"].stack_size = 1000
```

```
-- get the max health of the wooden chest
local health = data.raw["container"]["wooden-chest"].max_health
```
