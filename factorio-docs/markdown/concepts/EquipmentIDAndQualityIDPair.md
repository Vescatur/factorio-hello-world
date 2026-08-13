# EquipmentIDAndQualityIDPair

_concept_

An equipment prototype with optional quality specification.

**Definition:** table{name, quality}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [EquipmentID](../concepts/EquipmentID.md) |  |
| [quality](#quality) | [QualityID](../concepts/QualityID.md) | yes |

### name

**Type:** [EquipmentID](../concepts/EquipmentID.md)

Equipment prototype.

### quality

**Type:** [QualityID](../concepts/QualityID.md) · _optional_

Quality prototype. Normal quality will be used if not specified.
