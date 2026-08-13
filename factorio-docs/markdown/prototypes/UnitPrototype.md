# UnitPrototype

_prototype_

**Prototype type string:** `type = "unit"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Entity that moves around and attacks players, for example [biters and spitters](https://wiki.factorio.com/Enemies#Creatures).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [absorptions_to_join_attack](#absorptions-to-join-attack) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [float](../types/float.md)] | yes |
| [affected_by_tiles](#affected-by-tiles) | [boolean](../types/boolean.md) | yes |
| [ai_settings](#ai-settings) | [UnitAISettings](../types/UnitAISettings.md) | yes |
| [allow_run_time_change_of_is_military_target](#allow-run-time-change-of-is-military-target) | `false` | yes |
| [alternative_attacking_frame_sequence](#alternative-attacking-frame-sequence) | [UnitAlternativeFrameSequence](../types/UnitAlternativeFrameSequence.md) | yes |
| [attack_parameters](#attack-parameters) | [AttackParameters](../types/AttackParameters.md) |  |
| [buildable_entities](#buildable-entities) | array[[EntityID](../types/EntityID.md)] | yes |
| [can_open_gates](#can-open-gates) | [boolean](../types/boolean.md) | yes |
| [distance_per_frame](#distance-per-frame) | [float](../types/float.md) |  |
| [distraction_cooldown](#distraction-cooldown) | [uint32](../types/uint32.md) |  |
| [dying_sound](#dying-sound) | [Sound](../types/Sound.md) | yes |
| [has_belt_immunity](#has-belt-immunity) | [boolean](../types/boolean.md) | yes |
| [is_military_target](#is-military-target) | `true` | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [max_pursue_distance](#max-pursue-distance) | [double](../types/double.md) | yes |
| [min_pursue_time](#min-pursue-time) | [uint32](../types/uint32.md) | yes |
| [move_while_shooting](#move-while-shooting) | [boolean](../types/boolean.md) | yes |
| [movement_speed](#movement-speed) | [float](../types/float.md) |  |
| [radar_range](#radar-range) | [uint32](../types/uint32.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [rotation_speed](#rotation-speed) | [float](../types/float.md) | yes |
| [run_animation](#run-animation) | [RotatedAnimation](../types/RotatedAnimation.md) |  |
| [running_sound_animation_positions](#running-sound-animation-positions) | array[[float](../types/float.md)] | yes |
| [spawning_time_modifier](#spawning-time-modifier) | [double](../types/double.md) | yes |
| [steering](#steering) | [SteeringSettings](../types/SteeringSettings.md) | yes |
| [vision_distance](#vision-distance) | [double](../types/double.md) |  |
| [walking_sound](#walking-sound) | [Sound](../types/Sound.md) | yes |
| [warcry](#warcry) | [Sound](../types/Sound.md) | yes |

### absorptions_to_join_attack

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [float](../types/float.md)] · _optional_

The pollution amount that has to be absorbed by the unit's [spawner](../prototypes/EnemySpawnerPrototype.md) before the unit will leave the spawner and attack the source of the pollution.

### affected_by_tiles

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this unit is affected by tile [walking speed modifiers](../prototypes/TilePrototype.md#walking-speed-modifier).

### ai_settings

**Type:** [UnitAISettings](../types/UnitAISettings.md) · _optional_

### allow_run_time_change_of_is_military_target

**Type:** `false` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is true, this entities `is_military_target property` can be changed runtime (on the entity, not on the prototype itself).

### alternative_attacking_frame_sequence

**Type:** [UnitAlternativeFrameSequence](../types/UnitAlternativeFrameSequence.md) · _optional_

### attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md)

Requires `animation` in attack_parameters. Requires `ammo_type` in attack_parameters.

### buildable_entities

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

A list of entity prototypes that this unit can build when given the build base command.

If empty or not specified, the unit cannot build anything.

### can_open_gates

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### distance_per_frame

**Type:** [float](../types/float.md)

How fast the `run_animation` frames are advanced. The animations are advanced animation_speed frames per `distance_per_frame` that the unit moves.

`frames_advanced = (distance_moved ÷ distance_per_frame) * animation_speed`

### distraction_cooldown

**Type:** [uint32](../types/uint32.md)

### dying_sound

**Type:** [Sound](../types/Sound.md) · _optional_

The sound file to play this unit dies.

### has_belt_immunity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this unit is immune to movement by belts.

### is_military_target

**Type:** `true` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### max_pursue_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 50}`

### min_pursue_time

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 600}`

In ticks.

### move_while_shooting

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### movement_speed

**Type:** [float](../types/float.md)

Movement speed of this unit in the world, in tiles per tick. Must be equal to or greater than 0.

### radar_range

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

In chunks. The radius of how many chunks this unit charts around itself.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.025}`

### run_animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

### running_sound_animation_positions

**Type:** array[[float](../types/float.md)] · _optional_

List of positions in the `run_animation` when the `walking_sound` is played.

Only loaded if `walking_sound` is defined.

### spawning_time_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Multiplier for the [EnemySpawnerPrototype::spawning_cooldown](../prototypes/EnemySpawnerPrototype.md#spawning-cooldown) after it spawns this unit.

### steering

**Type:** [SteeringSettings](../types/SteeringSettings.md) · _optional_

### vision_distance

**Type:** [double](../types/double.md)

Max is 100.

Note: Setting to 50 or above can lead to undocumented behavior of individual units creating groups on their own when attacking or being attacked.

### walking_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### warcry

**Type:** [Sound](../types/Sound.md) · _optional_

A sound this unit makes when it sets out to attack.
