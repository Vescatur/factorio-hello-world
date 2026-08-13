# TrainStopFilter

_concept_

**Definition:** table{force, is_connected_to_rail, is_disabled, is_full, limit_set_by_control_behavior, station_name, surface, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [ForceID](../concepts/ForceID.md) | yes |
| [is_connected_to_rail](#is-connected-to-rail) | [boolean](../concepts/boolean.md) | yes |
| [is_disabled](#is-disabled) | [boolean](../concepts/boolean.md) | yes |
| [is_full](#is-full) | [boolean](../concepts/boolean.md) | yes |
| [limit_set_by_control_behavior](#limit-set-by-control-behavior) | [boolean](../concepts/boolean.md) | yes |
| [station_name](#station-name) | [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] | yes |
| [surface](#surface) | [SurfaceIdentification](../concepts/SurfaceIdentification.md) | yes |
| [type](#type) | [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] | yes |

### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

ForceID the train stop must have to pass

### is_connected_to_rail

**Type:** [boolean](../concepts/boolean.md) · _optional_

Checks if train stop has a rail next to it.

### is_disabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

If train stop is disabled by a control behavior

### is_full

**Type:** [boolean](../concepts/boolean.md) · _optional_

Checks if train stop is full (trains count >= trains limit or disabled) or not full.

### limit_set_by_control_behavior

**Type:** [boolean](../concepts/boolean.md) · _optional_

If train stop has limit set by control behavior

### station_name

**Type:** [string](../concepts/string.md) ∣ array[[string](../concepts/string.md)] · _optional_

Train stop must belong to given station name to pass

### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Surface the train stop must be on in order to pass

### type

**Type:** [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] · _optional_

If given, only train stops of this type will pass
