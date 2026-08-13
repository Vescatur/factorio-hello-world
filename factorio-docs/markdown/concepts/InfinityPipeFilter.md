# InfinityPipeFilter

_concept_

A single filter used by an infinity-pipe type entity.

**Definition:** table{mode, name, percentage, temperature}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [mode](#mode) | `"at-least"` ∣ `"at-most"` ∣ `"exactly"` ∣ `"add"` ∣ `"remove"` | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [percentage](#percentage) | [double](../concepts/double.md) | yes |
| [temperature](#temperature) | [double](../concepts/double.md) | yes |

### mode

**Type:** `"at-least"` ∣ `"at-most"` ∣ `"exactly"` ∣ `"add"` ∣ `"remove"` · _optional_

Defaults to `"at-least"`.

### name

**Type:** [string](../concepts/string.md)

Name of the fluid.

### percentage

**Type:** [double](../concepts/double.md) · _optional_

The fill percentage the pipe (for example `0.5` for 50%). Can't be negative.

### temperature

**Type:** [double](../concepts/double.md) · _optional_

The temperature of the fluid. Defaults to the default/minimum temperature of the fluid.
