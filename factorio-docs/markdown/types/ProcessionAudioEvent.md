# ProcessionAudioEvent

_type_

Controls sounds during procession.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [audio](#audio) | [ProcessionAudio](../types/ProcessionAudio.md) | yes |
| [loop_id](#loop-id) | [uint32](../types/uint32.md) | yes |
| [type](#type) | [ProcessionAudioEventType](../types/ProcessionAudioEventType.md) |  |
| [usage](#usage) | [ProcessionAudioUsage](../types/ProcessionAudioUsage.md) | yes |

### audio

**Type:** [ProcessionAudio](../types/ProcessionAudio.md) · _optional_

Has to be defined unless the type is "stop-looped-sound".

### loop_id

**Type:** [uint32](../types/uint32.md) · _optional_

Has to be defined unless the type is "play-sound".

### type

**Type:** [ProcessionAudioEventType](../types/ProcessionAudioEventType.md)

### usage

**Type:** [ProcessionAudioUsage](../types/ProcessionAudioUsage.md) · _optional_

Has to be defined unless the type is "stop-looped-sound".
