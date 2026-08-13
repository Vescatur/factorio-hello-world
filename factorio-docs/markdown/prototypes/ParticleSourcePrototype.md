# ParticleSourcePrototype

_prototype_

**Prototype type string:** `type = "particle-source"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Creates particles.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [height](#height) | [float](../types/float.md) |  |
| [height_deviation](#height-deviation) | [float](../types/float.md) | yes |
| [horizontal_speed](#horizontal-speed) | [float](../types/float.md) |  |
| [horizontal_speed_deviation](#horizontal-speed-deviation) | [float](../types/float.md) | yes |
| [particle](#particle) | [ParticleID](../types/ParticleID.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [smoke](#smoke) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [time_before_start](#time-before-start) | [float](../types/float.md) |  |
| [time_before_start_deviation](#time-before-start-deviation) | [float](../types/float.md) | yes |
| [time_to_live](#time-to-live) | [float](../types/float.md) |  |
| [time_to_live_deviation](#time-to-live-deviation) | [float](../types/float.md) | yes |
| [vertical_speed](#vertical-speed) | [float](../types/float.md) |  |
| [vertical_speed_deviation](#vertical-speed-deviation) | [float](../types/float.md) | yes |

### height

**Type:** [float](../types/float.md)

### height_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### horizontal_speed

**Type:** [float](../types/float.md)

### horizontal_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### particle

**Type:** [ParticleID](../types/ParticleID.md) · _optional_

Mandatory if `smoke` is not defined.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### smoke

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

Mandatory if `particle` is not defined.

### time_before_start

**Type:** [float](../types/float.md)

### time_before_start_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### time_to_live

**Type:** [float](../types/float.md)

### time_to_live_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### vertical_speed

**Type:** [float](../types/float.md)

### vertical_speed_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
