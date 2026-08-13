# BuildEntityTipTrigger

_type_

**Inherits from:** [CountBasedTipTrigger](../types/CountBasedTipTrigger.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [build_by_dragging](#build-by-dragging) | [boolean](../types/boolean.md) | yes |
| [build_in_line](#build-in-line) | [boolean](../types/boolean.md) | yes |
| [consecutive](#consecutive) | [boolean](../types/boolean.md) | yes |
| [entity](#entity) | [EntityID](../types/EntityID.md) | yes |
| [linear_power_pole_line](#linear-power-pole-line) | [boolean](../types/boolean.md) | yes |
| [match_type_only](#match-type-only) | [boolean](../types/boolean.md) | yes |
| [quality](#quality) | [QualityID](../types/QualityID.md) | yes |
| [type](#type) | `"build-entity"` |  |

### build_by_dragging

**Type:** [boolean](../types/boolean.md) · _optional_

### build_in_line

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### consecutive

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Building is considered consecutive when the built entity is the same as the last built entity.

### entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

### linear_power_pole_line

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### match_type_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### quality

**Type:** [QualityID](../types/QualityID.md) · _optional_

### type

**Type:** `"build-entity"`
