# Fluid

_concept_

**Definition:** table{amount, name, temperature}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [amount](#amount) | [double](../concepts/double.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [temperature](#temperature) | [float](../concepts/float.md) | yes |

### amount

**Type:** [double](../concepts/double.md)

Amount of the fluid.

### name

**Type:** [string](../concepts/string.md)

Fluid prototype name of the fluid.

### temperature

**Type:** [float](../concepts/float.md) · _optional_

The temperature. When reading this field will always be present. It is not necessary to specify it when writing, however. When not specified, the fluid will be set to the fluid's default temperature as specified in the fluid's prototype.
