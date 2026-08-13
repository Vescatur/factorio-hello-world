# PrototypeBase

_prototype_ · **abstract**

The abstract base for prototypes. PrototypeBase defines the common features of prototypes, such as localization and order.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [factoriopedia_description](#factoriopedia-description) | [LocalisedString](../types/LocalisedString.md) | yes |
| [factoriopedia_simulation](#factoriopedia-simulation) | [SimulationDefinition](../types/SimulationDefinition.md) | yes |
| [hidden](#hidden) | [boolean](../types/boolean.md) | yes |
| [hidden_in_factoriopedia](#hidden-in-factoriopedia) | [boolean](../types/boolean.md) | yes |
| [localised_description](#localised-description) | [LocalisedString](../types/LocalisedString.md) | yes |
| [localised_name](#localised-name) | [LocalisedString](../types/LocalisedString.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [order](#order) | [Order](../types/Order.md) | yes |
| [parameter](#parameter) | [boolean](../types/boolean.md) | yes |
| [subgroup](#subgroup) | [ItemSubGroupID](../types/ItemSubGroupID.md) | yes |
| [type](#type) | [string](../types/string.md) |  |

### factoriopedia_description

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_

Provides additional description used in factoriopedia.

### factoriopedia_simulation

**Type:** [SimulationDefinition](../types/SimulationDefinition.md) · _optional_

The simulation shown when looking at this prototype in the Factoriopedia GUI.

### hidden

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### hidden_in_factoriopedia

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `Value of `hidden``

### localised_description

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_

Overwrites the description set in the [locale file](https://wiki.factorio.com/Tutorial:Localisation). The description is usually shown in the tooltip of the prototype.

### localised_name

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_

Overwrites the name set in the [locale file](https://wiki.factorio.com/Tutorial:Localisation). Can be used to easily set a procedurally-generated name because the LocalisedString format allows to insert parameters into the name directly from the Lua script.

### name

**Type:** [string](../types/string.md)

Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May not exceed a length of 200 characters.

For a list of all names used in vanilla, see [data.raw](https://wiki.factorio.com/Data.raw).

### order

**Type:** [Order](../types/Order.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters.

### parameter

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the prototype is a special type which can be used to parametrize blueprints and doesn't have other function.

### subgroup

**Type:** [ItemSubGroupID](../types/ItemSubGroupID.md) · _optional_

The name of an [ItemSubGroup](../prototypes/ItemSubGroup.md).

### type

**Type:** [string](../types/string.md)

Specifies the kind of prototype this is.

For a list of all possible types, see the prototype overview.
