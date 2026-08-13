# SignalID

_concept_

**Definition:** table{name, quality, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../concepts/string.md) | yes |
| [quality](#quality) | [QualityID](../concepts/QualityID.md) | yes |
| [type](#type) | [SignalIDType](../concepts/SignalIDType.md) | yes |

### name

**Type:** [string](../concepts/string.md) · _optional_

Name of the prototype.

### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

The prototype name of the signal's quality. Defaults to `normal`.

### type

**Type:** [SignalIDType](../concepts/SignalIDType.md) · _optional_

The type of the signal. If the type is `"item"`, this will be `nil` when reading.
