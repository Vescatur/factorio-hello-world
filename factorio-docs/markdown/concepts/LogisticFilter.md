# LogisticFilter

_concept_

**Definition:** table{import_from, max, min, minimum_delivery_count, request_from, value}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [import_from](#import-from) | [SpaceLocationID](../concepts/SpaceLocationID.md) | yes |
| [max](#max) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [min](#min) | [int32](../concepts/int32.md) | yes |
| [minimum_delivery_count](#minimum-delivery-count) | [ItemCountType](../concepts/ItemCountType.md) | yes |
| [request_from](#request-from) | [RequestFromLocation](../concepts/RequestFromLocation.md) | yes |
| [value](#value) | [SignalFilter](../concepts/SignalFilter.md) | yes |

### import_from

**Type:** [SpaceLocationID](../concepts/SpaceLocationID.md) · _optional_

The space location to import from.

### max

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

The maximum amount to keep in inventory. `nil` for infinite.

### min

**Type:** [int32](../concepts/int32.md) · _optional_

The minimum amount to satisfy. If `min` is non-zero, and `value` is present, then the quality condition inside `value` does not allow quality ranges.

### minimum_delivery_count

**Type:** [ItemCountType](../concepts/ItemCountType.md) · _optional_

The minimum count that will be delivered to a space platform. `nil` if unchanged from the default.

### request_from

**Type:** [RequestFromLocation](../concepts/RequestFromLocation.md) · _optional_

From which sources items should be requested for space platforms. Defaults to `"planet"`.

### value

**Type:** [SignalFilter](../concepts/SignalFilter.md) · _optional_

The item filter to put into the slot.
