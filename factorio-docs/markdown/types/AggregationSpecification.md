# AggregationSpecification

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count_already_playing](#count-already-playing) | [boolean](../types/boolean.md) | yes |
| [max_count](#max-count) | [uint32](../types/uint32.md) |  |
| [priority](#priority) | `"closest"` ∣ `"farthest"` ∣ `"newest"` ∣ `"oldest"` | yes |
| [progress_threshold](#progress-threshold) | [float](../types/float.md) | yes |
| [remove](#remove) | [boolean](../types/boolean.md) |  |
| [volume_reduction_rate](#volume-reduction-rate) | [float](../types/float.md) | yes |

### count_already_playing

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, already playing sounds are taken into account when checking `max_count`.

### max_count

**Type:** [uint32](../types/uint32.md)

### priority

**Type:** `"closest"` ∣ `"farthest"` ∣ `"newest"` ∣ `"oldest"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'closest'}`

### progress_threshold

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

If `count_already_playing` is `true`, this will determine maximum progress when instance is counted toward playing sounds.

### remove

**Type:** [boolean](../types/boolean.md)

If `false`, the volume of sound instances above `max_count` is calculated according to the formula `volume = (x + 1) ^ (-volume_reduction_rate)`, where `x` is the order number of an instance above the threshold.

If `true`, sound instances above `max_count` are removed.

### volume_reduction_rate

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2.0}`

Has to be greater than or equal to 0.0.
