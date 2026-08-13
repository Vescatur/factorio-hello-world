# TriggerEffectWithCooldown

_type_

A [TriggerEffect](../types/TriggerEffect.md) with cooldown conditions, used to limit the frequency of trigger effects that would otherwise fire every single tick. If multiple cooldown conditions are defined, then all cooldowns must be satisfied before the effect can be triggered.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [distance_cooldown](#distance-cooldown) | [double](../types/double.md) | yes |
| [effect](#effect) | [TriggerEffect](../types/TriggerEffect.md) |  |
| [initial_distance_cooldown](#initial-distance-cooldown) | [double](../types/double.md) | yes |
| [initial_time_cooldown](#initial-time-cooldown) | [MapTick](../types/MapTick.md) | yes |
| [time_cooldown](#time-cooldown) | [MapTick](../types/MapTick.md) | yes |

### distance_cooldown

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The travel distance between triggers that the triggerer must travel between effects. Negative values will mean there is no cooldown.

### effect

**Type:** [TriggerEffect](../types/TriggerEffect.md)

### initial_distance_cooldown

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The initial state of the distance cooldown. In other words, the distance the triggerer must travel before the first effect can be triggered. Useful for staggering multiple effects.

### initial_time_cooldown

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The initial amount of time to wait before triggering the effect for the first time.

### time_cooldown

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of ticks that elapse between triggers.
