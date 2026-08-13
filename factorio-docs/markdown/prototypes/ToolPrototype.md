# ToolPrototype

_prototype_

**Prototype type string:** `type = "tool"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

Items with a "durability".

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [durability](#durability) | [double](../types/double.md) | yes |
| [durability_description_key](#durability-description-key) | [string](../types/string.md) | yes |
| [durability_description_value](#durability-description-value) | [string](../types/string.md) | yes |
| [infinite](#infinite) | [boolean](../types/boolean.md) | yes |

### durability

**Type:** [double](../types/double.md) · _optional_

The durability of this tool. Must be positive. Mandatory if `infinite` is false. Ignored if <code>infinite</code> is true.

### durability_description_key

**Type:** [string](../types/string.md) · _optional_

May not be longer than 200 characters.

### durability_description_value

**Type:** [string](../types/string.md) · _optional_

May not be longer than 200 characters.

In-game, the game provides the locale with three [parameters](https://wiki.factorio.com/Tutorial:Localisation#Localising_with_parameters):

`__1__`: remaining durability

`__2__`: total durability

`__3__`: durability as a percentage

So when a locale key that has the following translation

`Remaining durability is __1__ out of __2__ which is __3__ %`

is applied to a tool with 2 remaining durability out of 8 it will be displayed as

`Remaining durability is 2 out of 8 which is 25 %`

### infinite

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this tool has infinite durability. If this is false, `durability` must be specified.
