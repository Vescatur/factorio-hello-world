# TriggerEffectWithCooldown

_concept_

**Definition:** table{distance_cooldown, effect, initial_distance_cooldown, initial_time_cooldown, time_cooldown}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [distance_cooldown](#distance-cooldown) | [double](../concepts/double.md) |  |
| [effect](#effect) | array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)] |  |
| [initial_distance_cooldown](#initial-distance-cooldown) | [double](../concepts/double.md) |  |
| [initial_time_cooldown](#initial-time-cooldown) | [MapTick](../concepts/MapTick.md) |  |
| [time_cooldown](#time-cooldown) | [MapTick](../concepts/MapTick.md) |  |

### distance_cooldown

**Type:** [double](../concepts/double.md)

The travel distance between triggers that the triggerer must travel between effects.

### effect

**Type:** array[[TriggerEffectItem](../concepts/TriggerEffectItem.md)]

### initial_distance_cooldown

**Type:** [double](../concepts/double.md)

The travel distance between triggers that the triggerer must travel between effects.

### initial_time_cooldown

**Type:** [MapTick](../concepts/MapTick.md)

The initial amount of time to wait before triggering the effect for the first time.

### time_cooldown

**Type:** [MapTick](../concepts/MapTick.md)

The number of ticks that elapse between triggers.
