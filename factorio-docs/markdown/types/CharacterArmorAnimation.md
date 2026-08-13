# CharacterArmorAnimation

_type_

The data for one variation of [character animations](../prototypes/CharacterPrototype.md#animations).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [armors](#armors) | array[[ItemID](../types/ItemID.md)] | yes |
| [extra_smoke_cycles_per_tile](#extra-smoke-cycles-per-tile) | [float](../types/float.md) | yes |
| [flipped_shadow_running_with_gun](#flipped-shadow-running-with-gun) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [flying](#flying) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [flying_with_gun](#flying-with-gun) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [idle](#idle) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [idle_in_air](#idle-in-air) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [idle_with_gun](#idle-with-gun) | [RotatedAnimation](../types/RotatedAnimation.md) |  |
| [idle_with_gun_in_air](#idle-with-gun-in-air) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [landing](#landing) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [mining_with_tool](#mining-with-tool) | [RotatedAnimation](../types/RotatedAnimation.md) |  |
| [mining_with_tool_particles_animation_positions](#mining-with-tool-particles-animation-positions) | array[[float](../types/float.md)] | yes |
| [running](#running) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [running_with_gun](#running-with-gun) | [RotatedAnimation](../types/RotatedAnimation.md) |  |
| [smoke_cycles_per_tick](#smoke-cycles-per-tick) | [float](../types/float.md) | yes |
| [smoke_in_air](#smoke-in-air) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [take_off](#take-off) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |

### armors

**Type:** array[[ItemID](../types/ItemID.md)] · _optional_

The names of the armors this animation data is used for. Don't define this if you want the animations to be used for the player without armor.

### extra_smoke_cycles_per_tile

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Will be clamped to range [0, 1000]. When the character is flying, each [SmokeSource](../types/SmokeSource.md) in `smoke_in_air` will generate `extra_smoke_cycles_per_tile` * [SmokeSource::frequency](../types/SmokeSource.md#frequency) additional smokes per tile moved.

### flipped_shadow_running_with_gun

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

flipped_shadow_running_with_gun must be nil or contain exactly 18 directions, so all of the combination of gun direction and moving direction can be covered. Some of these variations are used in reverse to save space. You can use the character animation in the base game for reference. `flipped_shadow_running_with_gun` has to have same frame count as `running_with_gun`.

### flying

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### flying_with_gun

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Must contain exactly 18 or 40 directions, so all of the combination of gun direction and moving direction can be covered. Some of these variations are used in reverse to save space. You can use the character animation in the base game for reference.

### idle

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### idle_in_air

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### idle_with_gun

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

### idle_with_gun_in_air

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### landing

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### mining_with_tool

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

### mining_with_tool_particles_animation_positions

**Type:** array[[float](../types/float.md)] · _optional_

List of positions in the mining with tool animation when the mining sound and mining particles are created.

Overrides [CharacterPrototype::mining_with_tool_particles_animation_positions](../prototypes/CharacterPrototype.md#mining-with-tool-particles-animation-positions) if defined.

### running

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

### running_with_gun

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

Must contain exactly 18 or 40 directions, so all of the combination of gun direction and moving direction can be covered. Some of these variations are used in reverse to save space. You can use the character animation in the base game for reference.

### smoke_cycles_per_tick

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Will be clamped to range [0, 1000]. When the character is flying, each [SmokeSource](../types/SmokeSource.md) in `smoke_in_air` will generate `smoke_cycles_per_tick` * [SmokeSource::frequency](../types/SmokeSource.md#frequency) smokes per tick on average.

### smoke_in_air

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

Smoke generator for when in air.

### take_off

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_
