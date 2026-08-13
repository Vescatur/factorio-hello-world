# VariableAmbientSoundLayerStateProperties

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [enabled](#enabled) | [boolean](../types/boolean.md) | yes |
| [end_pause](#end-pause) | [RandomRange](../types/RandomRange.md) | yes |
| [number_of_repetitions](#number-of-repetitions) | [RandomRange](../types/RandomRange.md) ∣ [ProbabilityTable](../types/ProbabilityTable.md) | yes |
| [pause_between_repetitions](#pause-between-repetitions) | [RandomRange](../types/RandomRange.md) | yes |
| [pause_between_samples](#pause-between-samples) | [RandomRange](../types/RandomRange.md) | yes |
| [sequence_length](#sequence-length) | [RandomRange](../types/RandomRange.md) | yes |
| [silence_instead_of_sample_probability](#silence-instead-of-sample-probability) | [float](../types/float.md) | yes |
| [start_pause](#start-pause) | [RandomRange](../types/RandomRange.md) | yes |
| [variant](#variant) | [uint8](../types/uint8.md) | yes |

### enabled

**Type:** [boolean](../types/boolean.md) · _optional_

### end_pause

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Pause before a layer finishes playing. The last repetition and consequently the layer being finished is not counted until the pause finishes.

### number_of_repetitions

**Type:** [RandomRange](../types/RandomRange.md) ∣ [ProbabilityTable](../types/ProbabilityTable.md) · _optional_

The number of times a layer repeats itself until it's considered finished. If it's not defined, the layer never finishes on its own. What counts as repetition depends on the [VariableAmbientSoundCompositionMode](../types/VariableAmbientSoundCompositionMode.md).

Each sample played is counted as a repetition of `"randomized"` layer.

Repetition of `"semi-randomized"` layer is counted when its sequence is finished.

Repetition of `"shuffled"` layer is counted when all samples play once.

Each sample played is counted as a repetition of `"layer-controlled"` layer.

If `number_of_repetitions` of [VariableAmbientSoundLayer::control_layer](../types/VariableAmbientSoundLayer.md#control-layer) of `"layer-controlled"` layer is smaller than `number_of_repetitions` of the controlled layer, `number_of_repetitions` of the control layer is used for the purposes of `pause_between_repetitions` and `end_pause`.

Cannot be zero.

### pause_between_repetitions

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Pause between each repetition of a layer. The repetition is not counted until the pause finishes.

### pause_between_samples

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Pause between individual samples within a sequence.

Cannot be defined for `"randomized"` layers without defining `sequence_length` as well. Alternatively, use `pause_between_repetitions` instead.

Cannot be defined for layers with `sublayer_offset` defined.

### sequence_length

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Number of samples in a sequence.

The minimum cannot be zero.

Mandatory for layers with `"semi-randomized"` [VariableAmbientSoundCompositionMode](../types/VariableAmbientSoundCompositionMode.md).

Applicable for layers with `"randomized"` [VariableAmbientSoundCompositionMode](../types/VariableAmbientSoundCompositionMode.md).

Cannot be defined for layers with `"shuffled"` [VariableAmbientSoundCompositionMode](../types/VariableAmbientSoundCompositionMode.md).

### silence_instead_of_sample_probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

A sample replaced by silence still counts as played for the purposes of sequence count, repetition count, pauses, etc.

Must be in the `[0.0, 1.0]` interval.

### start_pause

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Pause before a layer starts playing.

### variant

**Type:** [uint8](../types/uint8.md) · _optional_

Index of a layer's variant.

Cannot be zero.
