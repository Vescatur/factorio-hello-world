# SegmentedUnitPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "segmented-unit"`

**Inherits from:** [SegmentPrototype](../prototypes/SegmentPrototype.md)

Entity composed of multiple segment entities that trail behind the head.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [acceleration_rate](#acceleration-rate) | [double](../types/double.md) |  |
| [attack_parameters](#attack-parameters) | [AttackParameters](../types/AttackParameters.md) | yes |
| [attacking_speed](#attacking-speed) | [double](../types/double.md) |  |
| [enraged_duration](#enraged-duration) | [MapTick](../types/MapTick.md) |  |
| [enraged_speed](#enraged-speed) | [double](../types/double.md) |  |
| [hurt_roar](#hurt-roar) | [Sound](../types/Sound.md) | yes |
| [hurt_thresholds](#hurt-thresholds) | array[[float](../types/float.md)] | yes |
| [investigating_speed](#investigating-speed) | [double](../types/double.md) |  |
| [patrolling_speed](#patrolling-speed) | [double](../types/double.md) |  |
| [patrolling_turn_radius](#patrolling-turn-radius) | [double](../types/double.md) | yes |
| [revenge_attack_parameters](#revenge-attack-parameters) | [AttackParameters](../types/AttackParameters.md) | yes |
| [roar](#roar) | [Sound](../types/Sound.md) | yes |
| [roar_probability](#roar-probability) | [float](../types/float.md) | yes |
| [segment_engine](#segment-engine) | [SegmentEngineSpecification](../types/SegmentEngineSpecification.md) |  |
| [territory_radius](#territory-radius) | [uint32](../types/uint32.md) |  |
| [ticks_per_scan](#ticks-per-scan) | [uint32](../types/uint32.md) | yes |
| [turn_radius](#turn-radius) | [double](../types/double.md) |  |
| [turn_smoothing](#turn-smoothing) | [double](../types/double.md) | yes |
| [vision_distance](#vision-distance) | [double](../types/double.md) |  |

### acceleration_rate

**Type:** [double](../types/double.md)

The acceleration rate when moving from one state to another. Cannot be negative.

### attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md) · _optional_

Attack parameters for when a segmented unit is attacking something.

### attacking_speed

**Type:** [double](../types/double.md)

The movement speed while attacking, in tiles per tick. Cannot be negative.

### enraged_duration

**Type:** [MapTick](../types/MapTick.md)

The number of ticks to remain enraged after last taking damage.

### enraged_speed

**Type:** [double](../types/double.md)

The movement speed while enraged, in tiles per tick. Cannot be negative.

### hurt_roar

**Type:** [Sound](../types/Sound.md) · _optional_

Sound which plays when health ratio drops below any of `hurt_thresholds`.

### hurt_thresholds

**Type:** array[[float](../types/float.md)] · _optional_

Only loaded, and mandatory if `hurt_roar` is defined.

### investigating_speed

**Type:** [double](../types/double.md)

The movement speed while investigating, in tiles per tick. Cannot be negative.

### patrolling_speed

**Type:** [double](../types/double.md)

The movement speed while patrolling, in tiles per tick. Cannot be negative.

### patrolling_turn_radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Value of `turn_radius``

Cannot be negative.

### revenge_attack_parameters

**Type:** [AttackParameters](../types/AttackParameters.md) · _optional_

Attack parameters for when a segmented unit is attacking something in retaliation because the target first attacked it.

### roar

**Type:** [Sound](../types/Sound.md) · _optional_

### roar_probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.00277777785}`

The default is 1.0f / (6.0f * 60.0f), average pause between roars is 6 seconds.

### segment_engine

**Type:** [SegmentEngineSpecification](../types/SegmentEngineSpecification.md)

Specification of the segment engine, which should contain a list of the segments that compose the entity's body.

### territory_radius

**Type:** [uint32](../types/uint32.md)

The territory radius in chunks. The chunk in which the entity spawned is included.

### ticks_per_scan

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 120}`

The number of ticks between territory scans. Greater values means longer time between scans, which means a slower reaction time. Cannot be `0`.

### turn_radius

**Type:** [double](../types/double.md)

Turn radius, in tiles. Cannot be negative.

### turn_smoothing

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Attempts to smooth out tight turns by limiting how quickly the unit can change turning directions. 0 means no turn smoothing, 1 means no turning whatsoever. Must be between 0 and 1.

### vision_distance

**Type:** [double](../types/double.md)

Vision distance, affects scanning radius for enemies to attack. Must be non-negative. Max 100.
