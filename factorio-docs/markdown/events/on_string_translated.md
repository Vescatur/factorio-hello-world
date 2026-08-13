# on_string_translated

_event_

Called when a translation request generated through [LuaPlayer::request_translation](../classes/LuaPlayer.md#request-translation) or [LuaPlayer::request_translations](../classes/LuaPlayer.md#request-translations) has been completed.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [id](#id) | [uint32](../concepts/uint32.md) |  |
| [localised_string](#localised-string) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [result](#result) | [string](../concepts/string.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [translated](#translated) | [boolean](../concepts/boolean.md) |  |

### id

**Type:** [uint32](../concepts/uint32.md)

The unique id for this translation request.

### localised_string

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The localised string being translated.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player whose locale was used for the translation.

### result

**Type:** [string](../concepts/string.md)

The translated `localised_string`.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### translated

**Type:** [boolean](../concepts/boolean.md)

Whether the requested localised string was valid and could be translated.
