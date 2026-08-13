# on_player_display_density_scale_changed

_event_

Called when the display density scale changes for a given player. The display density scale is the scale value automatically applied based on the player's display DPI. This is only relevant on platforms that support high-density displays.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_scale](#old-scale) | [double](../concepts/double.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_scale

**Type:** [double](../concepts/double.md)

The old display scale

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
