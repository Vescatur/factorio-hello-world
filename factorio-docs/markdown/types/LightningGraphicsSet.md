# LightningGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [attractor_hit_animation](#attractor-hit-animation) | [Animation](../types/Animation.md) | yes |
| [bolt_detail_level](#bolt-detail-level) | [uint8](../types/uint8.md) | yes |
| [bolt_half_width](#bolt-half-width) | [float](../types/float.md) | yes |
| [bolt_midpoint_variance](#bolt-midpoint-variance) | [float](../types/float.md) | yes |
| [cloud_background](#cloud-background) | [Animation](../types/Animation.md) | yes |
| [cloud_detail_level](#cloud-detail-level) | [uint8](../types/uint8.md) | yes |
| [cloud_fork_orientation_variance](#cloud-fork-orientation-variance) | [float](../types/float.md) | yes |
| [cloud_forks](#cloud-forks) | [uint8](../types/uint8.md) | yes |
| [explosion](#explosion) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [fork_intensity_multiplier](#fork-intensity-multiplier) | [float](../types/float.md) | yes |
| [fork_orientation_variance](#fork-orientation-variance) | [float](../types/float.md) | yes |
| [ground_streamer_variance](#ground-streamer-variance) | [float](../types/float.md) | yes |
| [ground_streamers](#ground-streamers) | array[[Animation](../types/Animation.md)] | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [max_bolt_offset](#max-bolt-offset) | [float](../types/float.md) | yes |
| [max_fork_probability](#max-fork-probability) | [float](../types/float.md) | yes |
| [max_ground_streamer_distance](#max-ground-streamer-distance) | [float](../types/float.md) | yes |
| [max_relative_fork_length](#max-relative-fork-length) | [float](../types/float.md) | yes |
| [min_ground_streamer_distance](#min-ground-streamer-distance) | [float](../types/float.md) | yes |
| [min_relative_fork_length](#min-relative-fork-length) | [float](../types/float.md) | yes |
| [relative_cloud_fork_length](#relative-cloud-fork-length) | [float](../types/float.md) | yes |
| [shader_configuration](#shader-configuration) | array[[LightningShaderConfiguration](../types/LightningShaderConfiguration.md)] | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### attractor_hit_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### bolt_detail_level

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 6}`

### bolt_half_width

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.005}`

### bolt_midpoint_variance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.05}`

### cloud_background

**Type:** [Animation](../types/Animation.md) · _optional_

### cloud_detail_level

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

Must be less than or equal to `bolt_detail_level`.

### cloud_fork_orientation_variance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.015}`

### cloud_forks

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

Cannot be 255.

### explosion

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

### fork_intensity_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.7}`

Cannot be 1.

### fork_orientation_variance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.05}`

### ground_streamer_variance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### ground_streamers

**Type:** array[[Animation](../types/Animation.md)] · _optional_

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### max_bolt_offset

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.35}`

### max_fork_probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.9}`

### max_ground_streamer_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 4}`

### max_relative_fork_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.7}`

### min_ground_streamer_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2}`

### min_relative_fork_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

### relative_cloud_fork_length

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

### shader_configuration

**Type:** array[[LightningShaderConfiguration](../types/LightningShaderConfiguration.md)] · _optional_

If not empty, enables the lightning shader.

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
