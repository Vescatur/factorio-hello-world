# TrainFilter

_concept_

**Definition:** table{force, group, has_passenger, is_manual, is_moving, max_stocks, min_stocks, stock, surface, train_id}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [ForceID](../concepts/ForceID.md) | yes |
| [group](#group) | [string](../concepts/string.md) | yes |
| [has_passenger](#has-passenger) | [boolean](../concepts/boolean.md) | yes |
| [is_manual](#is-manual) | [boolean](../concepts/boolean.md) | yes |
| [is_moving](#is-moving) | [boolean](../concepts/boolean.md) | yes |
| [max_stocks](#max-stocks) | [uint32](../concepts/uint32.md) | yes |
| [min_stocks](#min-stocks) | [uint32](../concepts/uint32.md) | yes |
| [stock](#stock) | [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] | yes |
| [surface](#surface) | [SurfaceIdentification](../concepts/SurfaceIdentification.md) | yes |
| [train_id](#train-id) | [uint32](../concepts/uint32.md) | yes |

### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Train must contain at least one rolling stock of this force to pass

### group

**Type:** [string](../concepts/string.md) · _optional_

Train must belong to a group of a given name.

### has_passenger

**Type:** [boolean](../concepts/boolean.md) · _optional_

Checks if train has a passenger.

### is_manual

**Type:** [boolean](../concepts/boolean.md) · _optional_

Checks if train is in manual controller.

### is_moving

**Type:** [boolean](../concepts/boolean.md) · _optional_

Checks if train is moving (has speed != 0) or not moving.

### max_stocks

**Type:** [uint32](../concepts/uint32.md) · _optional_

Train must have at most that many stocks to pass

### min_stocks

**Type:** [uint32](../concepts/uint32.md) · _optional_

Train must have at least that many stocks to pass

### stock

**Type:** [EntityID](../concepts/EntityID.md) ∣ array[[EntityID](../concepts/EntityID.md)] · _optional_

Train must contain a rolling stock of any of provided prototype to pass

### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Surface the train must be on in order to pass

### train_id

**Type:** [uint32](../concepts/uint32.md) · _optional_

Train ID filter
