# HeatSetting

_concept_

The settings used by a heat-interface type entity.

**Definition:** table{mode, temperature}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [mode](#mode) | [HeatSettingMode](../concepts/HeatSettingMode.md) | yes |
| [temperature](#temperature) | [double](../concepts/double.md) | yes |

### mode

**Type:** [HeatSettingMode](../concepts/HeatSettingMode.md) · _optional_

Defaults to `"at-least"`.

### temperature

**Type:** [double](../concepts/double.md) · _optional_

The target temperature. Defaults to the minimum temperature of the heat buffer.
