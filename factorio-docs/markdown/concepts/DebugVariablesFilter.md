# DebugVariablesFilter

_concept_

**Definition:** table{count, filter, start}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [int32](../concepts/int32.md) | yes |
| [filter](#filter) | `"indexed"` ∣ `"named"` ∣ `"all"` | yes |
| [start](#start) | [int32](../concepts/int32.md) | yes |

### count

**Type:** [int32](../concepts/int32.md) · _optional_

When `filter` is "indexed", the size of the requested page.

### filter

**Type:** `"indexed"` ∣ `"named"` ∣ `"all"` · _optional_

The kind of filter applied to this request. Default "all".

### start

**Type:** [int32](../concepts/int32.md) · _optional_

When `filter` is "indexed", the index to start at.
