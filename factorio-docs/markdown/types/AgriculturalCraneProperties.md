# AgriculturalCraneProperties

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [min_arm_extent](#min-arm-extent) | [double](../types/double.md) | yes |
| [min_grappler_extent](#min-grappler-extent) | [double](../types/double.md) | yes |
| [operation_angle](#operation-angle) | [float](../types/float.md) | yes |
| [origin](#origin) | [Vector3D](../types/Vector3D.md) |  |
| [parts](#parts) | array[[CranePart](../types/CranePart.md)] |  |
| [shadow_direction](#shadow-direction) | [Vector3D](../types/Vector3D.md) |  |
| [speed](#speed) | [AgriculturalCraneSpeed](../types/AgriculturalCraneSpeed.md) |  |
| [telescope_default_extention](#telescope-default-extention) | [double](../types/double.md) | yes |

### min_arm_extent

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### min_grappler_extent

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

### operation_angle

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

In degrees.

### origin

**Type:** [Vector3D](../types/Vector3D.md)

### parts

**Type:** array[[CranePart](../types/CranePart.md)]

### shadow_direction

**Type:** [Vector3D](../types/Vector3D.md)

### speed

**Type:** [AgriculturalCraneSpeed](../types/AgriculturalCraneSpeed.md)

### telescope_default_extention

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`
