# MineEntityTechnologyTrigger

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [entities](#entities) | array[[EntityID](../types/EntityID.md)] |  |
| [type](#type) | `"mine-entity"` |  |

### entities

**Type:** array[[EntityID](../types/EntityID.md)]

Must contain at least 1 element. The trigger is considered fulfilled if at least one of these entities is mined.

### type

**Type:** `"mine-entity"`
