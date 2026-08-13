# AsteroidGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ambient_light](#ambient-light) | [Color](../types/Color.md) | yes |
| [brightness](#brightness) | [float](../types/float.md) | yes |
| [light_width](#light-width) | [float](../types/float.md) | yes |
| [lights](#lights) | [LightProperties](../types/LightProperties.md) ∣ array[[LightProperties](../types/LightProperties.md)] | yes |
| [normal_strength](#normal-strength) | [float](../types/float.md) | yes |
| [rotation_speed](#rotation-speed) | [float](../types/float.md) | yes |
| [specular_power](#specular-power) | [float](../types/float.md) | yes |
| [specular_purity](#specular-purity) | [float](../types/float.md) | yes |
| [specular_strength](#specular-strength) | [float](../types/float.md) | yes |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) | yes |
| [sss_amount](#sss-amount) | [float](../types/float.md) | yes |
| [sss_contrast](#sss-contrast) | [float](../types/float.md) | yes |
| [variations](#variations) | [AsteroidVariation](../types/AsteroidVariation.md) ∣ array[[AsteroidVariation](../types/AsteroidVariation.md)] | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### ambient_light

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{0.05, 0.05, 0.05, 1.0}``

### brightness

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### light_width

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### lights

**Type:** [LightProperties](../types/LightProperties.md) ∣ array[[LightProperties](../types/LightProperties.md)] · _optional_

### normal_strength

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### specular_power

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 6.0}`

### specular_purity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### specular_strength

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5.0}`

### sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

### sss_amount

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5.0}`

### sss_contrast

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### variations

**Type:** [AsteroidVariation](../types/AsteroidVariation.md) ∣ array[[AsteroidVariation](../types/AsteroidVariation.md)] · _optional_

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
