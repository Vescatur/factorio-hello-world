# ProcessionAudio

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [catalogue_id](#catalogue-id) | [uint32](../types/uint32.md) | yes |
| [looped_sound](#looped-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |
| [type](#type) | [ProcessionAudioType](../types/ProcessionAudioType.md) |  |

### catalogue_id

**Type:** [uint32](../types/uint32.md) · _optional_

Mandatory if `type` is `"pod_catalogue"` or `type` is `"location_catalogue"`.

### looped_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Mandatory if `type` is `"looped-sound"`.

### sound

**Type:** [Sound](../types/Sound.md) · _optional_

Mandatory if `type` is `"sound"`.

### type

**Type:** [ProcessionAudioType](../types/ProcessionAudioType.md)
