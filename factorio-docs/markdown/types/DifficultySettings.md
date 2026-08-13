# DifficultySettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [spoil_time_modifier](#spoil-time-modifier) | [double](../types/double.md) | yes |
| [technology_price_multiplier](#technology-price-multiplier) | [double](../types/double.md) | yes |

### spoil_time_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.01 and <= 100.

### technology_price_multiplier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be >= 0.001 and <= 100000.
