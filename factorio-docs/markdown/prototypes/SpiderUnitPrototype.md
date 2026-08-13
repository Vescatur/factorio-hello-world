# SpiderUnitPrototype

_prototype_

**Prototype type string:** `type = "spider-unit"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [absorptions_to_join_attack](#absorptions-to-join-attack) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [float](../types/float.md)] | yes |
| [ai_settings](#ai-settings) | [UnitAISettings](../types/UnitAISettings.md) | yes |
| [attack_parameters](#attack-parameters) | [AttackParameters](../types/AttackParameters.md) |  |
| [buildable_entities](#buildable-entities) | array[[EntityID](../types/EntityID.md)] | yes |
| [distraction_cooldown](#distraction-cooldown) | [uint32](../types/uint32.md) |  |
| [dying_sound](#dying-sound) | [Sound](../types/Sound.md) | yes |
| [graphics_set](#graphics-set) | [SpiderTorsoGraphicsSet](../types/SpiderTorsoGraphicsSet.md) | yes |
| [height](#height) | [float](../types/float.md) |  |
| [max_pursue_distance](#max-pursue-distance) | [double](../types/double.md) | yes |
| [min_pursue_time](#min-pursue-time) | [uint32](../types/uint32.md) | yes |
| [radar_range](#radar-range) | [uint32](../types/uint32.md) | yes |
| [spawning_time_modifier](#spawning-time-modifier) | [double](../types/double.md) | yes |
| [spider_engine](#spider-engine) | [SpiderEngineSpecification](../types/SpiderEngineSpecification.md) |  |
| [steering](#steering) | [SteeringSettings](../types/SteeringSettings.md) | yes |
| [torso_bob_speed](#torso-bob-speed) | [float](../types/float.md) | yes |
| [torso_rotation_speed](#torso-rotation-speed) | [float](../types/float.md) | yes |
| [vision_distance](#vision-distance) | [double](../types/double.md) |  |
| [warcry](#warcry) | [Sound](../types/Sound.md) | yes |

### absorptions_to_join_attack

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [float](../types/float.md)] · _optional_

### ai_settings

**Type:** [UnitAISettings](../types/UnitAISettings.md) · _optional_

### attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md)

### buildable_entities

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

A list of entity prototypes that this spider unit can build when given the build base command.

If empty or not specified, the spider unit cannot build anything.

### distraction_cooldown

**Type:** [uint32](../types/uint32.md)

### dying_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### graphics_set

**Type:** [SpiderTorsoGraphicsSet](../types/SpiderTorsoGraphicsSet.md) · _optional_

### height

**Type:** [float](../types/float.md)

The height of the spider affects the shooting height and the drawing of the graphics and lights.

### max_pursue_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 50}`

### min_pursue_time

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 600}`

### radar_range

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

In chunks. The radius of how many chunks this spider unit charts around itself.

### spawning_time_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### spider_engine

**Type:** [SpiderEngineSpecification](../types/SpiderEngineSpecification.md)

### steering

**Type:** [SteeringSettings](../types/SteeringSettings.md) · _optional_

### torso_bob_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Cannot be negative.

### torso_rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

The orientation of the torso of the spider affects the shooting direction and the drawing of the graphics and lights.

### vision_distance

**Type:** [double](../types/double.md)

Must be less than or equal to 100.

### warcry

**Type:** [Sound](../types/Sound.md) · _optional_

A sound the spider unit makes when it sets out to attack.
