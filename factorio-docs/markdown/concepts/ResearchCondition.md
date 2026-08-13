# ResearchCondition

_concept_

**Definition:** table{condition, count, name}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [condition](#condition) | [CircuitCondition](../concepts/CircuitCondition.md) | yes |
| [count](#count) | [uint32](../concepts/uint32.md) | yes |
| [name](#name) | [string](../concepts/string.md) | yes |

### condition

**Type:** [CircuitCondition](../concepts/CircuitCondition.md) · _optional_

### count

**Type:** [uint32](../concepts/uint32.md) · _optional_

The technology level to research (only applicable for infinite technologies) defaults to 0.

### name

**Type:** [string](../concepts/string.md) · _optional_

The technology to research when the condition passes.
