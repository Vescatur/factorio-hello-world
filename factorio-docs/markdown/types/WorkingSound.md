# WorkingSound

_type_

**Inherits from:** [MainSound](../types/MainSound.md)

This type is used to produce sound from in-game entities when they are working/idle.

**Examples:**

```
-- refinery
working_sound =
{
  sound = {filename = "__base__/sound/oil-refinery.ogg"},
  idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
}
```

```
-- roboport
working_sound =
{
  sound = {filename = "__base__/sound/roboport-working.ogg", volume = 0.6, audible_distance_modifier = 0.5},
  max_sounds_per_prototype = 3,
  probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
}
```

**Definition:** struct (see properties below) ∣ [Sound](../types/Sound.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activate_sound](#activate-sound) | [Sound](../types/Sound.md) | yes |
| [deactivate_sound](#deactivate-sound) | [Sound](../types/Sound.md) | yes |
| [extra_sounds_ignore_limit](#extra-sounds-ignore-limit) | [boolean](../types/boolean.md) | yes |
| [idle_sound](#idle-sound) | [Sound](../types/Sound.md) | yes |
| [main_sounds](#main-sounds) | [MainSound](../types/MainSound.md) ∣ array[[MainSound](../types/MainSound.md)] | yes |
| [max_sounds_per_prototype](#max-sounds-per-prototype) | [uint8](../types/uint8.md) | yes |
| [persistent](#persistent) | [boolean](../types/boolean.md) | yes |
| [sound_accents](#sound-accents) | [SoundAccent](../types/SoundAccent.md) ∣ array[[SoundAccent](../types/SoundAccent.md)] | yes |
| [use_doppler_shift](#use-doppler-shift) | [boolean](../types/boolean.md) | yes |

### activate_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Might not work with all entities that use working_sound.

Unused when `persistent` is `true`.

### deactivate_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Might not work with all entities that use working_sound.

Unused when `persistent` is `true`.

### extra_sounds_ignore_limit

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, entities playing their extra sound don't count towards `max_sounds_per_prototype` limit. 'extra sound' refers to `idle_sound`, `activate_sound` or `deactivate_sound`.

Unused when `persistent` is `true`.

### idle_sound

**Type:** [Sound](../types/Sound.md) · _optional_

The sound to be played when the entity is idle. Might not work with all entities that use working_sound.

Unused when `persistent` is `true`.

### main_sounds

**Type:** [MainSound](../types/MainSound.md) ∣ array[[MainSound](../types/MainSound.md)] · _optional_

If this property is defined, all properties inherited from MainSound (and not overridden here) are ignored.

### max_sounds_per_prototype

**Type:** [uint8](../types/uint8.md) · _optional_

Sets a maximum limit on how many entities of the same prototype will play their working sound.

Inactive entities without an `idle_sound` don't count towards this limit.

Entities with their working sound fading out don't count towards this limit.

Unused when `persistent` is `true`.

### persistent

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When `true`, working sounds for all entities of the same prototype are combined into one.

### sound_accents

**Type:** [SoundAccent](../types/SoundAccent.md) ∣ array[[SoundAccent](../types/SoundAccent.md)] · _optional_

Unused when `persistent` is `true`.

### use_doppler_shift

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`
