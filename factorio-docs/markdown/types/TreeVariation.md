# TreeVariation

_type_

Tree has number of "dying" stages, which is deduced from frame count of `shadow` if shadow is defined, otherwise from frame count of `trunk`. Frame count of `leaves` has to be one less than deduced number stages, as last stage is always assumed to be leafless.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [branch_generation](#branch-generation) | [CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md) |  |
| [branches_when_damaged](#branches-when-damaged) | [uint8](../types/uint8.md) | yes |
| [branches_when_destroyed](#branches-when-destroyed) | [uint8](../types/uint8.md) | yes |
| [branches_when_mined_automatically](#branches-when-mined-automatically) | [uint8](../types/uint8.md) | yes |
| [branches_when_mined_manually](#branches-when-mined-manually) | [uint8](../types/uint8.md) | yes |
| [disable_shadow_distortion_beginning_at_frame](#disable-shadow-distortion-beginning-at-frame) | [uint32](../types/uint32.md) | yes |
| [leaf_generation](#leaf-generation) | [CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md) |  |
| [leaves](#leaves) | [Animation](../types/Animation.md) |  |
| [leaves_when_damaged](#leaves-when-damaged) | [uint8](../types/uint8.md) | yes |
| [leaves_when_destroyed](#leaves-when-destroyed) | [uint8](../types/uint8.md) | yes |
| [leaves_when_mined_automatically](#leaves-when-mined-automatically) | [uint8](../types/uint8.md) | yes |
| [leaves_when_mined_manually](#leaves-when-mined-manually) | [uint8](../types/uint8.md) | yes |
| [normal](#normal) | [Animation](../types/Animation.md) | yes |
| [overlay](#overlay) | [Animation](../types/Animation.md) | yes |
| [shadow](#shadow) | [Animation](../types/Animation.md) | yes |
| [trunk](#trunk) | [Animation](../types/Animation.md) |  |
| [underwater](#underwater) | [Animation](../types/Animation.md) | yes |
| [underwater_layer_offset](#underwater-layer-offset) | [int8](../types/int8.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### branch_generation

**Type:** [CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md)

### branches_when_damaged

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

This value is multiplied with the percent of health lost.

### branches_when_destroyed

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15}`

### branches_when_mined_automatically

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 8}`

### branches_when_mined_manually

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 15}`

### disable_shadow_distortion_beginning_at_frame

**Type:** [uint32](../types/uint32.md) · _optional_

Only loaded if `shadow` is present. Defaults to `shadow.frame_count - 1`.

### leaf_generation

**Type:** [CreateParticleTriggerEffectItem](../types/CreateParticleTriggerEffectItem.md)

### leaves

**Type:** [Animation](../types/Animation.md)

### leaves_when_damaged

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 200}`

This value is multiplied with the percent of health lost.

### leaves_when_destroyed

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 40}`

### leaves_when_mined_automatically

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

### leaves_when_mined_manually

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 40}`

### normal

**Type:** [Animation](../types/Animation.md) · _optional_

Normal must have the same frame_count as `leaves`.

### overlay

**Type:** [Animation](../types/Animation.md) · _optional_

Overlay must have the same frame_count as `leaves`. Won't be tinted by the tree color unless `apply_runtime_tint` is set to `true` in the sprite definition. See [here](https://forums.factorio.com/viewtopic.php?p=547758#p547758).

### shadow

**Type:** [Animation](../types/Animation.md) · _optional_

Shadow must have 1 more `frame_count` than `leaves`.

### trunk

**Type:** [Animation](../types/Animation.md)

If `shadow` is not specified, this has to have one more frame than `leaves`.

### underwater

**Type:** [Animation](../types/Animation.md) · _optional_

### underwater_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_
