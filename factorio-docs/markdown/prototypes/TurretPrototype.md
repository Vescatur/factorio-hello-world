# TurretPrototype

_prototype_

**Prototype type string:** `type = "turret"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A turret that needs no extra ammunition. See the children for turrets that need some kind of ammunition.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alert_when_attacking](#alert-when-attacking) | [boolean](../types/boolean.md) | yes |
| [allow_turning_when_starting_attack](#allow-turning-when-starting-attack) | [boolean](../types/boolean.md) | yes |
| [attack_from_start_frame](#attack-from-start-frame) | [boolean](../types/boolean.md) | yes |
| [attack_parameters](#attack-parameters) | [AttackParameters](../types/AttackParameters.md) |  |
| [attack_target_mask](#attack-target-mask) | [TriggerTargetMask](../types/TriggerTargetMask.md) | yes |
| [attacking_animation](#attacking-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [attacking_speed](#attacking-speed) | [float](../types/float.md) | yes |
| [call_for_help_radius](#call-for-help-radius) | [double](../types/double.md) |  |
| [can_retarget_while_starting_attack](#can-retarget-while-starting-attack) | [boolean](../types/boolean.md) | yes |
| [circuit_connector](#circuit-connector) | array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_speed](#default-speed) | [float](../types/float.md) | yes |
| [default_speed_secondary](#default-speed-secondary) | [float](../types/float.md) | yes |
| [default_speed_when_killed](#default-speed-when-killed) | [float](../types/float.md) | yes |
| [default_starting_progress_when_killed](#default-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [dying_sound](#dying-sound) | [Sound](../types/Sound.md) | yes |
| [ending_attack_animation](#ending-attack-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [ending_attack_speed](#ending-attack-speed) | [float](../types/float.md) | yes |
| [ending_attack_speed_secondary](#ending-attack-speed-secondary) | [float](../types/float.md) | yes |
| [ending_attack_speed_when_killed](#ending-attack-speed-when-killed) | [float](../types/float.md) | yes |
| [ending_attack_starting_progress_when_killed](#ending-attack-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [energy_glow_animation](#energy-glow-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [energy_glow_animation_flicker_strength](#energy-glow-animation-flicker-strength) | [float](../types/float.md) | yes |
| [folded_animation](#folded-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) |  |
| [folded_animation_is_stateless](#folded-animation-is-stateless) | [boolean](../types/boolean.md) | yes |
| [folded_speed](#folded-speed) | [float](../types/float.md) | yes |
| [folded_speed_secondary](#folded-speed-secondary) | [float](../types/float.md) | yes |
| [folded_speed_when_killed](#folded-speed-when-killed) | [float](../types/float.md) | yes |
| [folded_starting_progress_when_killed](#folded-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [folded_state_corpse](#folded-state-corpse) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] | yes |
| [folding_animation](#folding-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [folding_sound](#folding-sound) | [Sound](../types/Sound.md) | yes |
| [folding_speed](#folding-speed) | [float](../types/float.md) | yes |
| [folding_speed_secondary](#folding-speed-secondary) | [float](../types/float.md) | yes |
| [folding_speed_when_killed](#folding-speed-when-killed) | [float](../types/float.md) | yes |
| [folding_starting_progress_when_killed](#folding-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [glow_light_intensity](#glow-light-intensity) | [float](../types/float.md) | yes |
| [graphics_set](#graphics-set) | [TurretGraphicsSet](../types/TurretGraphicsSet.md) |  |
| [gun_animation_render_layer](#gun-animation-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [gun_animation_secondary_draw_order](#gun-animation-secondary-draw-order) | [uint8](../types/uint8.md) | yes |
| [ignore_target_mask](#ignore-target-mask) | [TriggerTargetMask](../types/TriggerTargetMask.md) | yes |
| [integration](#integration) | [Sprite](../types/Sprite.md) | yes |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [leave_attacking_if_shoot_fails](#leave-attacking-if-shoot-fails) | [boolean](../types/boolean.md) | yes |
| [prepare_range](#prepare-range) | [double](../types/double.md) | yes |
| [prepared_alternative_animation](#prepared-alternative-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [prepared_alternative_chance](#prepared-alternative-chance) | [float](../types/float.md) | yes |
| [prepared_alternative_sound](#prepared-alternative-sound) | [Sound](../types/Sound.md) | yes |
| [prepared_alternative_speed](#prepared-alternative-speed) | [float](../types/float.md) | yes |
| [prepared_alternative_speed_secondary](#prepared-alternative-speed-secondary) | [float](../types/float.md) | yes |
| [prepared_alternative_speed_when_killed](#prepared-alternative-speed-when-killed) | [float](../types/float.md) | yes |
| [prepared_alternative_starting_progress_when_killed](#prepared-alternative-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [prepared_animation](#prepared-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [prepared_sound](#prepared-sound) | [Sound](../types/Sound.md) | yes |
| [prepared_speed](#prepared-speed) | [float](../types/float.md) | yes |
| [prepared_speed_secondary](#prepared-speed-secondary) | [float](../types/float.md) | yes |
| [prepared_speed_when_killed](#prepared-speed-when-killed) | [float](../types/float.md) | yes |
| [prepared_starting_progress_when_killed](#prepared-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [preparing_animation](#preparing-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [preparing_sound](#preparing-sound) | [Sound](../types/Sound.md) | yes |
| [preparing_speed](#preparing-speed) | [float](../types/float.md) | yes |
| [preparing_speed_secondary](#preparing-speed-secondary) | [float](../types/float.md) | yes |
| [preparing_speed_when_killed](#preparing-speed-when-killed) | [float](../types/float.md) | yes |
| [preparing_starting_progress_when_killed](#preparing-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [random_animation_offset](#random-animation-offset) | [boolean](../types/boolean.md) | yes |
| [resource_indicator_animation](#resource-indicator-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [rotating_sound](#rotating-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [rotation_speed](#rotation-speed) | [float](../types/float.md) | yes |
| [rotation_speed_secondary](#rotation-speed-secondary) | [float](../types/float.md) | yes |
| [rotation_speed_when_killed](#rotation-speed-when-killed) | [float](../types/float.md) | yes |
| [rotation_starting_progress_when_killed](#rotation-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [shoot_in_prepare_state](#shoot-in-prepare-state) | [boolean](../types/boolean.md) | yes |
| [spawn_decoration](#spawn-decoration) | array[[CreateDecorativesTriggerEffectItem](../types/CreateDecorativesTriggerEffectItem.md)] | yes |
| [spawn_decorations_on_expansion](#spawn-decorations-on-expansion) | [boolean](../types/boolean.md) | yes |
| [special_effect](#special-effect) | [TurretSpecialEffect](../types/TurretSpecialEffect.md) | yes |
| [start_attacking_only_when_can_shoot](#start-attacking-only-when-can-shoot) | [boolean](../types/boolean.md) | yes |
| [starting_attack_animation](#starting-attack-animation) | [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) | yes |
| [starting_attack_sound](#starting-attack-sound) | [Sound](../types/Sound.md) | yes |
| [starting_attack_speed](#starting-attack-speed) | [float](../types/float.md) | yes |
| [starting_attack_speed_secondary](#starting-attack-speed-secondary) | [float](../types/float.md) | yes |
| [starting_attack_speed_when_killed](#starting-attack-speed-when-killed) | [float](../types/float.md) | yes |
| [starting_attack_starting_progress_when_killed](#starting-attack-starting-progress-when-killed) | [float](../types/float.md) | yes |
| [turret_base_has_direction](#turret-base-has-direction) | [boolean](../types/boolean.md) | yes |
| [unfolds_before_dying](#unfolds-before-dying) | [boolean](../types/boolean.md) | yes |

### alert_when_attacking

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_turning_when_starting_attack

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### attack_from_start_frame

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md)

Requires ammo_type in attack_parameters unless this is a [AmmoTurretPrototype](../prototypes/AmmoTurretPrototype.md).

### attack_target_mask

**Type:** [TriggerTargetMask](../types/TriggerTargetMask.md) · _optional_ · **Default:** `all masks`

### attacking_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### attacking_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Controls the speed of the attacking_animation: `1 ÷ attacking_speed = duration of the attacking_animation`

### call_for_help_radius

**Type:** [double](../types/double.md)

### can_retarget_while_starting_attack

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### circuit_connector

**Type:** array[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

Set of [circuit connector definitions](../types/CircuitConnectorDefinition.md) for all directions used by this turret. Required amount of elements is based on other prototype values: 8 elements if building-direction-8-way flag is set, or 16 elements if building-direction-16-way flag is set, or 4 elements if turret_base_has_direction is set to true, or 1 element.

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### default_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### default_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

### default_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

### default_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### dying_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### ending_attack_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### ending_attack_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

Controls the speed of the ending_attack_animation: `1 ÷ ending_attack_speed = duration of the ending_attack_animation`

### ending_attack_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

### ending_attack_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### ending_attack_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### energy_glow_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### energy_glow_animation_flicker_strength

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

The range of the flickering of the alpha of `energy_glow_animation`. Default is range 0.2, so animation alpha can be anywhere between 0.8 and 1.0.

### folded_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md)

### folded_animation_is_stateless

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### folded_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

It's randomized whether a particular turret uses the primary or the secondary speed for its animations.

Controls the speed of the folded_animation: `1 ÷ folded_speed = duration of the folded_animation`

### folded_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

It's randomized whether a particular turret uses the primary or the secondary speed for its animations.

Controls the speed of the folded_animation: `1 ÷ folded_speed_secondary = duration of the folded_animation`

### folded_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### folded_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### folded_state_corpse

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] · _optional_

### folding_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### folding_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### folding_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

Controls the speed of the folding_animation: `1 ÷ folding_speed = duration of the folding_animation`

### folding_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

### folding_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### folding_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### glow_light_intensity

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The intensity of light in the form of `energy_glow_animation` drawn on top of `energy_glow_animation`.

### graphics_set

**Type:** [TurretGraphicsSet](../types/TurretGraphicsSet.md)

### gun_animation_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### gun_animation_secondary_draw_order

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### ignore_target_mask

**Type:** [TriggerTargetMask](../types/TriggerTargetMask.md) · _optional_ · **Default:** `no masks`

### integration

**Type:** [Sprite](../types/Sprite.md) · _optional_

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### leave_attacking_if_shoot_fails

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### prepare_range

**Type:** [double](../types/double.md) · _optional_ · **Default:** `The range defined in the `attack_parameters``

### prepared_alternative_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### prepared_alternative_chance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The chance for `prepared_alternative_animation` to be used.

### prepared_alternative_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### prepared_alternative_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

It's randomized whether a particular turret uses the primary or the secondary speed for its animations.

Controls the speed of the prepared_alternative_animation: `1 ÷ prepared_alternative_speed = duration of the prepared_alternative_animation`

### prepared_alternative_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

It's randomized whether a particular turret uses the primary or the secondary speed for its animations.

Controls the speed of the prepared_alternative_animation: `1 ÷ prepared_alternative_speed_secondary = duration of the prepared_alternative_animation`

### prepared_alternative_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### prepared_alternative_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### prepared_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### prepared_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### prepared_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

It's randomized whether a particular turret uses the primary or the secondary speed for its animations.

Controls the speed of the prepared_animation: `1 ÷ prepared_speed = duration of the prepared_animation`

### prepared_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

It's randomized whether a particular turret uses the primary or the secondary speed for its animations.

Controls the speed of the prepared_animation: `1 ÷ prepared_speed_secondary = duration of the prepared_animation`

### prepared_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### prepared_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### preparing_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### preparing_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### preparing_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

Controls the speed of the preparing_animation: `1 ÷ preparing_speed = duration of the preparing_animation`

### preparing_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

### preparing_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### preparing_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### random_animation_offset

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### resource_indicator_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### rotating_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

### rotation_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

### rotation_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### rotation_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### shoot_in_prepare_state

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### spawn_decoration

**Type:** array[[CreateDecorativesTriggerEffectItem](../types/CreateDecorativesTriggerEffectItem.md)] · _optional_

Decoratives to be created when the spawner is created by the [map generator](https://wiki.factorio.com/Map_generator). Placed when enemies expand if `spawn_decorations_on_expansion` is set to true.

### spawn_decorations_on_expansion

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether `spawn_decoration` should be spawned when this turret is created through [enemy expansion](https://wiki.factorio.com/Enemies#Expansions).

### special_effect

**Type:** [TurretSpecialEffect](../types/TurretSpecialEffect.md) · _optional_

### start_attacking_only_when_can_shoot

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When `false` the turret will enter `starting_attack` state without checking its ammo or energy levels. [FluidTurretPrototype](../prototypes/FluidTurretPrototype.md) forces this to `true`.

### starting_attack_animation

**Type:** [RotatedAnimation8Way](../types/RotatedAnimation8Way.md) · _optional_

### starting_attack_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### starting_attack_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed``

Controls the speed of the starting_attack_animation: `1 ÷ starting_attack_speed = duration of the starting_attack_animation`

### starting_attack_speed_secondary

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_secondary``

### starting_attack_speed_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_speed_when_killed``

### starting_attack_starting_progress_when_killed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `Value of `default_starting_progress_when_killed``

### turret_base_has_direction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When `true` the turret's collision box will affected by its rotation.

### unfolds_before_dying

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
