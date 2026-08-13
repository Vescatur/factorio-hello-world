# ModData

_prototype_

**Prototype type string:** `type = "mod-data"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Block of arbitrary data set by mods in prototype stage.

During runtime stage, this arbitrary data can be accessed through [LuaPrototypes::mod_data](../classes/LuaPrototypes.md#mod-data).

**Example:**

```
{
  type = "mod-data",
  name = "my-own-great-mod-data",
  data_type = "my-mod.my-data-type",
  data =
  {
    a_string = "a string",
    a_number = 6.7,
    a_table = {x=2, y=3, z="yes"},
    a_bool = true,
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [data](#data) | dictionary[[string](../types/string.md) → [AnyBasic](../types/AnyBasic.md)] |  |
| [data_type](#data-type) | [string](../types/string.md) | yes |

### data

**Type:** dictionary[[string](../types/string.md) → [AnyBasic](../types/AnyBasic.md)]

### data_type

**Type:** [string](../types/string.md) · _optional_

Arbitrary string that mods can use to declare type of data. Can be used for mod compatibility when one mod declares block of data that is expected to be discovered by another mod.

**Example:**

```
data_type = "my-mod.my_structure"
```
