# ElemID

_concept_

**Definition:** table{name, quality, signal_type, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../concepts/string.md) |  |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [signal_type](#signal-type) | [SignalIDType](../concepts/SignalIDType.md) | yes |
| [type](#type) | [ElemType](../concepts/ElemType.md) |  |

### name

**Type:** [string](../concepts/string.md)

Name of a prototype as defined by `type`.

### quality

**Type:** [string](../concepts/string.md) · _optional_

Name of a quality prototype if `type` uses quality.

### signal_type

**Type:** [SignalIDType](../concepts/SignalIDType.md) · _optional_

Only loaded, and mandatory if `type` is `"signal"`.

### type

**Type:** [ElemType](../concepts/ElemType.md)
