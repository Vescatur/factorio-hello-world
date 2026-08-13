# StreamAttackParameters

_type_

**Inherits from:** [BaseAttackParameters](../types/BaseAttackParameters.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [fluid_consumption](#fluid-consumption) | [FluidAmount](../types/FluidAmount.md) | yes |
| [fluids](#fluids) | array[[StreamFluidProperties](../types/StreamFluidProperties.md)] | yes |
| [gun_barrel_length](#gun-barrel-length) | [float](../types/float.md) | yes |
| [gun_center_shift](#gun-center-shift) | [Vector](../types/Vector.md) ∣ [GunShift4Way](../types/GunShift4Way.md) | yes |
| [projectile_creation_parameters](#projectile-creation-parameters) | [CircularProjectileCreationSpecification](../types/CircularProjectileCreationSpecification.md) | yes |
| [type](#type) | `"stream"` |  |

### fluid_consumption

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### fluids

**Type:** array[[StreamFluidProperties](../types/StreamFluidProperties.md)] · _optional_

Controls which fluids can fuel this stream attack and their potential damage bonuses.

### gun_barrel_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### gun_center_shift

**Type:** [Vector](../types/Vector.md) ∣ [GunShift4Way](../types/GunShift4Way.md) · _optional_

### projectile_creation_parameters

**Type:** [CircularProjectileCreationSpecification](../types/CircularProjectileCreationSpecification.md) · _optional_

### type

**Type:** `"stream"`
