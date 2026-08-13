# ProductionHealthEffect

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [damage_type](#damage-type) | [DamageTypeID](../types/DamageTypeID.md) | yes |
| [not_producing](#not-producing) | [float](../types/float.md) | yes |
| [producing](#producing) | [float](../types/float.md) | yes |

### damage_type

**Type:** [DamageTypeID](../types/DamageTypeID.md) · _optional_

Defaults to "physical" damage.

### not_producing

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### producing

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
