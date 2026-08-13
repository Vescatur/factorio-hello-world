# SpiderLegSpecification

_concept_

**Definition:** table{ground_position, leg, leg_hit_the_ground_trigger, leg_hit_the_ground_when_attacking_trigger, mount_position, walking_group}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [ground_position](#ground-position) | [Vector](../concepts/Vector.md) |  |
| [leg](#leg) | [string](../concepts/string.md) |  |
| [leg_hit_the_ground_trigger](#leg-hit-the-ground-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [leg_hit_the_ground_when_attacking_trigger](#leg-hit-the-ground-when-attacking-trigger) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] | yes |
| [mount_position](#mount-position) | [Vector](../concepts/Vector.md) |  |
| [walking_group](#walking-group) | [uint8](../concepts/uint8.md) |  |

### ground_position

**Type:** [Vector](../concepts/Vector.md)

### leg

**Type:** [string](../concepts/string.md)

Name of the spider leg prototype.

### leg_hit_the_ground_trigger

**Type:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _optional_

### leg_hit_the_ground_when_attacking_trigger

**Type:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] · _optional_

### mount_position

**Type:** [Vector](../concepts/Vector.md)

### walking_group

**Type:** [uint8](../concepts/uint8.md)
