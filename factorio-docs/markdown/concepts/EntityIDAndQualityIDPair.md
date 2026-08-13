# EntityIDAndQualityIDPair

_concept_

An entity prototype with optional quality specification.

**Definition:** table{name, quality}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [EntityID](../concepts/EntityID.md) |  |
| [quality](#quality) | [QualityID](../concepts/QualityID.md) | yes |

### name

**Type:** [EntityID](../concepts/EntityID.md)

Entity prototype.

### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Quality prototype. Normal quality will be used if not specified.
