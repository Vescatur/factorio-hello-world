# FluidStreamPrototype

_prototype_

**Prototype type string:** `type = "stream"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Used for example for the handheld flamethrower.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [ground_light](#ground-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [initial_action](#initial-action) | [Trigger](../types/Trigger.md) | yes |
| [oriented_particle](#oriented-particle) | [boolean](../types/boolean.md) | yes |
| [particle](#particle) | [Animation](../types/Animation.md) | yes |
| [particle_alpha_per_part](#particle-alpha-per-part) | [float](../types/float.md) | yes |
| [particle_buffer_size](#particle-buffer-size) | [uint32](../types/uint32.md) | yes |
| [particle_end_alpha](#particle-end-alpha) | [float](../types/float.md) | yes |
| [particle_fade_out_duration](#particle-fade-out-duration) | [uint16](../types/uint16.md) | yes |
| [particle_fade_out_threshold](#particle-fade-out-threshold) | [float](../types/float.md) | yes |
| [particle_horizontal_speed](#particle-horizontal-speed) | [float](../types/float.md) |  |
| [particle_horizontal_speed_deviation](#particle-horizontal-speed-deviation) | [float](../types/float.md) |  |
| [particle_loop_exit_threshold](#particle-loop-exit-threshold) | [float](../types/float.md) | yes |
| [particle_loop_frame_count](#particle-loop-frame-count) | [uint16](../types/uint16.md) | yes |
| [particle_scale_per_part](#particle-scale-per-part) | [float](../types/float.md) | yes |
| [particle_spawn_interval](#particle-spawn-interval) | [uint16](../types/uint16.md) |  |
| [particle_spawn_timeout](#particle-spawn-timeout) | [uint16](../types/uint16.md) | yes |
| [particle_start_alpha](#particle-start-alpha) | [float](../types/float.md) | yes |
| [particle_start_scale](#particle-start-scale) | [float](../types/float.md) | yes |
| [particle_vertical_acceleration](#particle-vertical-acceleration) | [float](../types/float.md) |  |
| [progress_to_create_smoke](#progress-to-create-smoke) | [float](../types/float.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shadow](#shadow) | [Animation](../types/Animation.md) | yes |
| [shadow_scale_enabled](#shadow-scale-enabled) | [boolean](../types/boolean.md) | yes |
| [smoke_sources](#smoke-sources) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [special_neutral_target_damage](#special-neutral-target-damage) | [DamageParameters](../types/DamageParameters.md) | yes |
| [spine_animation](#spine-animation) | [Animation](../types/Animation.md) | yes |
| [stream_light](#stream-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [target_initial_position_only](#target-initial-position-only) | [boolean](../types/boolean.md) | yes |
| [target_position_deviation](#target-position-deviation) | [double](../types/double.md) | yes |
| [width](#width) | [float](../types/float.md) | yes |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Action that is triggered every time a particle lands. Not triggered for the first particle if `initial_action` is non-empty.

### ground_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### initial_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Action that is triggered when the first particle lands.

### oriented_particle

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### particle

**Type:** [Animation](../types/Animation.md) · _optional_

### particle_alpha_per_part

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### particle_buffer_size

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

Number of spawned child particles of the stream. Must be greater than 0 and less than 256.

### particle_end_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### particle_fade_out_duration

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 65535}`

Will be set to 1 by the game if less than 1.

### particle_fade_out_threshold

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Value between 0 and 1.

### particle_horizontal_speed

**Type:** [float](../types/float.md)

Must be larger than 0. `particle_horizontal_speed` has to be greater than `particle_horizontal_speed_deviation`.

### particle_horizontal_speed_deviation

**Type:** [float](../types/float.md)

### particle_loop_exit_threshold

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Value between 0 and 1.

### particle_loop_frame_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Will be set to 1 by the game if less than 1.

### particle_scale_per_part

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### particle_spawn_interval

**Type:** [uint16](../types/uint16.md)

The stream will spawn one particle every `particle_spawn_interval` ticks until the `particle_spawn_timeout` is reached. The first particle will trigger an `initial_action` upon landing. Each particle triggers an `action` upon landing. Particles spawned within a single `particle_spawn_timeout` interval will be connected by a stretched `spine_animation`.

### particle_spawn_timeout

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `4 * `particle_spawn_interval``

### particle_start_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### particle_start_scale

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### particle_vertical_acceleration

**Type:** [float](../types/float.md)

### progress_to_create_smoke

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

The point in the particles projectile arc to start spawning smoke. 0.5 (the default) starts spawning smoke at the halfway point between the source and target.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shadow

**Type:** [Animation](../types/Animation.md) · _optional_

### shadow_scale_enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### smoke_sources

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

Smoke spawning is controlled by `progress_to_create_smoke`.

### special_neutral_target_damage

**Type:** [DamageParameters](../types/DamageParameters.md) · _optional_

### spine_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### stream_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### target_initial_position_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### target_position_deviation

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### width

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`
