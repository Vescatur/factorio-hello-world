# BeamTriggerDelivery

_type_

**Inherits from:** [TriggerDeliveryItem](../types/TriggerDeliveryItem.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [add_to_shooter](#add-to-shooter) | [boolean](../types/boolean.md) | yes |
| [beam](#beam) | [EntityID](../types/EntityID.md) |  |
| [destroy_with_source_or_target](#destroy-with-source-or-target) | [boolean](../types/boolean.md) | yes |
| [duration](#duration) | [uint32](../types/uint32.md) | yes |
| [max_length](#max-length) | [uint32](../types/uint32.md) | yes |
| [source_offset](#source-offset) | [Vector](../types/Vector.md) | yes |
| [type](#type) | `"beam"` |  |

### add_to_shooter

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### beam

**Type:** [EntityID](../types/EntityID.md)

Name of a [BeamPrototype](../prototypes/BeamPrototype.md).

### destroy_with_source_or_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### max_length

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### source_offset

**Type:** [Vector](../types/Vector.md) · _optional_

### type

**Type:** `"beam"`
