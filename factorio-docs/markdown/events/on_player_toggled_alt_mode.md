# on_player_toggled_alt_mode

_event_

Called when a player toggles alt mode, also known as "show entity info".

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [alt_mode](#alt-mode) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### alt_mode

**Type:** [boolean](../concepts/boolean.md)

The new alt mode value. This value is a shortcut for accessing [GameViewSettings::show_entity_info](../concepts/GameViewSettings.md#show-entity-info) on the player.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
