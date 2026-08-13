# ClusterTriggerItem

_type_

**Inherits from:** [TriggerItem](../types/TriggerItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cluster_count](#cluster-count) | [uint32](../types/uint32.md) |  |
| [distance](#distance) | [float](../types/float.md) |  |
| [distance_deviation](#distance-deviation) | [float](../types/float.md) | yes |
| [type](#type) | `"cluster"` |  |

### cluster_count

**Type:** [uint32](../types/uint32.md)

Must be at least `2`.

### distance

**Type:** [float](../types/float.md)

### distance_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### type

**Type:** `"cluster"`
