# EnemyEvolutionMapSettings

_concept_

These values represent a percentual increase in evolution. This means a value of `0.1` would increase evolution by 10%.

**Definition:** table{destroy_factor, enabled, pollution_factor, time_factor}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [destroy_factor](#destroy-factor) | [double](../concepts/double.md) |  |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [pollution_factor](#pollution-factor) | [double](../concepts/double.md) |  |
| [time_factor](#time-factor) | [double](../concepts/double.md) |  |

### destroy_factor

**Type:** [double](../concepts/double.md)

The amount evolution progresses for every destroyed spawner. Defaults to `0.002`.

### enabled

**Type:** [boolean](../concepts/boolean.md)

Whether enemy evolution is enabled at all.

### pollution_factor

**Type:** [double](../concepts/double.md)

The amount evolution progresses for every unit of pollution. Defaults to `0.0000009`.

### time_factor

**Type:** [double](../concepts/double.md)

The amount evolution naturally progresses by every second. Defaults to `0.000004`.
