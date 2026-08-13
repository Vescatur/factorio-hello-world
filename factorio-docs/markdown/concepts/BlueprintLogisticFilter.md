# BlueprintLogisticFilter

_concept_

**Definition:** table{comparator, count, import_from, index, max_count, minimum_delivery_count, name, quality, request_from, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [comparator](#comparator) | [ComparatorString](../concepts/ComparatorString.md) | yes |
| [count](#count) | [int32](../concepts/int32.md) |  |
| [import_from](#import-from) | [string](../concepts/string.md) | yes |
| [index](#index) | [LogisticFilterIndex](../concepts/LogisticFilterIndex.md) |  |
| [max_count](#max-count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [minimum_delivery_count](#minimum-delivery-count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [name](#name) | [string](../concepts/string.md) | yes |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [request_from](#request-from) | [RequestFromLocation](../concepts/RequestFromLocation.md) | yes |
| [type](#type) | [SignalIDType](../concepts/SignalIDType.md) | yes |

### comparator

**Type:** [ComparatorString](../concepts/ComparatorString.md) · _optional_

The comparator for quality. `nil` if any quality.

### count

**Type:** [int32](../concepts/int32.md)

### import_from

**Type:** [string](../concepts/string.md) · _optional_

### index

**Type:** [LogisticFilterIndex](../concepts/LogisticFilterIndex.md)

### max_count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

### minimum_delivery_count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

Defaults to `0`.

### name

**Type:** [string](../concepts/string.md) · _optional_

Name of the logistic filter.

### quality

**Type:** [string](../concepts/string.md) · _optional_

The prototype name of the quality. `nil` for any quality.

### request_from

**Type:** [RequestFromLocation](../concepts/RequestFromLocation.md) · _optional_

From which sources items should be requested for space platforms. Defaults to `"planet"`.

### type

**Type:** [SignalIDType](../concepts/SignalIDType.md) · _optional_

The type of the logistic filter.
