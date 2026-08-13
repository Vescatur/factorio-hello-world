# VariableAmbientSoundVariableSound

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alignment_samples](#alignment-samples) | [uint32](../types/uint32.md) | yes |
| [intermezzo](#intermezzo) | [Sound](../types/Sound.md) | yes |
| [layers](#layers) | array[[VariableAmbientSoundLayer](../types/VariableAmbientSoundLayer.md)] |  |
| [length_seconds](#length-seconds) | [uint32](../types/uint32.md) |  |
| [states](#states) | array[[VariableAmbientSoundState](../types/VariableAmbientSoundState.md)] |  |

### alignment_samples

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 12600}`

Number of audio signal samples (sampling frequency is 44.1kHz) defining a time grid. Music samples are aligned with this grid when queued.

### intermezzo

**Type:** [Sound](../types/Sound.md) · _optional_

### layers

**Type:** array[[VariableAmbientSoundLayer](../types/VariableAmbientSoundLayer.md)]

Cannot be empty.

### length_seconds

**Type:** [uint32](../types/uint32.md)

Cannot be zero.

### states

**Type:** array[[VariableAmbientSoundState](../types/VariableAmbientSoundState.md)]

The first state is used as the starting state and cannot be an intermezzo state.

Cannot be empty.
