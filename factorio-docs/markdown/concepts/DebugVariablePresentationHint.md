# DebugVariablePresentationHint

_concept_

The supported subset of [DebugAdapter VariablePresentationHint](https://microsoft.github.io/debug-adapter-protocol/specification#Types_VariablePresentationHint)

**Definition:** table{attributes, kind, lazy}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [attributes](#attributes) | array[`"readOnly"`] | yes |
| [kind](#kind) | `"virtual"` | yes |
| [lazy](#lazy) | [boolean](../concepts/boolean.md) | yes |

### attributes

**Type:** array[`"readOnly"`] · _optional_

The only supported attribute is "readOnly".

### kind

**Type:** `"virtual"` · _optional_

The only supported kind is "virtual".

### lazy

**Type:** [boolean](../concepts/boolean.md) · _optional_
