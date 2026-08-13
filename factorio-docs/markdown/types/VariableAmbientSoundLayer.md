# VariableAmbientSoundLayer

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [composition_mode](#composition-mode) | [VariableAmbientSoundCompositionMode](../types/VariableAmbientSoundCompositionMode.md) |  |
| [control_layer](#control-layer) | [string](../types/string.md) | yes |
| [control_layer_sample_mapping](#control-layer-sample-mapping) | array[array[[uint8](../types/uint8.md)]] | yes |
| [has_end_sample](#has-end-sample) | [boolean](../types/boolean.md) | yes |
| [has_start_sample](#has-start-sample) | [boolean](../types/boolean.md) | yes |
| [name](#name) | [string](../types/string.md) |  |
| [number_of_sublayers](#number-of-sublayers) | [uint8](../types/uint8.md) | yes |
| [sample_length](#sample-length) | [RandomRange](../types/RandomRange.md) | yes |
| [sublayer_offset](#sublayer-offset) | [RandomRange](../types/RandomRange.md) ∣ [ProbabilityTable](../types/ProbabilityTable.md) | yes |
| [sublayer_starting_offset](#sublayer-starting-offset) | [RandomRange](../types/RandomRange.md) ∣ [ProbabilityTable](../types/ProbabilityTable.md) | yes |
| [variants](#variants) | array[[Sound](../types/Sound.md)] |  |

### composition_mode

**Type:** [VariableAmbientSoundCompositionMode](../types/VariableAmbientSoundCompositionMode.md)

### control_layer

**Type:** [string](../types/string.md) · _optional_

Name of a layer which controls this layer, a layer cannot control itself.

Only loaded, and mandatory if `composition_mode` is `"layer-controlled"`.

### control_layer_sample_mapping

**Type:** array[array[[uint8](../types/uint8.md)]] · _optional_

Defines a mapping between controlling layer's samples and this (controlled) layer's samples. The number of items in the mapping must be the same as the number of samples in the controlling layer. Item in the mapping with index N defines which samples of this layer can play when the sample N is playing in the controlling layer.

Only loaded, and mandatory if `composition_mode` is `"layer-controlled"`.

### has_end_sample

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the last of [Sound::variations](../types/Sound.md#variations) is played at the end of a sequence (if the sequence is long enough). The end sample counts towards the [VariableAmbientSoundLayerStateProperties::sequence_length](../types/VariableAmbientSoundLayerStateProperties.md#sequence-length).

### has_start_sample

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the first of [Sound::variations](../types/Sound.md#variations) is played at the start of a sequence. The start sample counts towards the [VariableAmbientSoundLayerStateProperties::sequence_length](../types/VariableAmbientSoundLayerStateProperties.md#sequence-length)

### name

**Type:** [string](../types/string.md)

Name has to be unique across all layers.

### number_of_sublayers

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

If greater than one, samples are composed in overlapping sub-layers, offset from each other.

If greater than one, one of `sublayer_starting_offset` or `sublayer_offset` must be defined. Both cannot be defined together.

Cannot be defined for layers with `"shuffled"` `composition_mode`.

Cannot be zero.

### sample_length

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Explicitly defines sample lengths. The whole sample is played when this is not specified.

Cannot be defined together with `sublayer_offset`.

The minimum cannot be zero.

### sublayer_offset

**Type:** [RandomRange](../types/RandomRange.md) ∣ [ProbabilityTable](../types/ProbabilityTable.md) · _optional_

Specifies offset between two sub-layers' samples.

This implicitly dictates the sample lengths as two sub-layer offsets.

Only loaded if `number_of_sublayers` is greater than one.

Cannot be defined together with `sublayer_starting_offset`.

The minimum of [RandomRange](../types/RandomRange.md) variant cannot be zero.

### sublayer_starting_offset

**Type:** [RandomRange](../types/RandomRange.md) ∣ [ProbabilityTable](../types/ProbabilityTable.md) · _optional_

Specifies starting offset of the second sub-layer.

Only loaded if `number_of_sublayers` is greater than one.

Cannot be defined together with `sublayer_offset`.

The minimum of [RandomRange](../types/RandomRange.md) variant cannot be zero.

### variants

**Type:** array[[Sound](../types/Sound.md)]

Cannot be empty.

Samples within a layer are the [Sound::variations](../types/Sound.md#variations).

Number of samples must be the same across all variants.

Samples cannot have variable volume and all samples must have the same default volume.

Samples are required to have sampling frequency of 44.1kHz. This is checked at runtime.
