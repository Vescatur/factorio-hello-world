# on_runtime_mod_setting_changed

_event_

Called when a runtime mod setting is changed by a player.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [setting](#setting) | [string](../concepts/string.md) |  |
| [setting_type](#setting-type) | `"runtime-global"` ∣ `"runtime-per-user"` |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If the `setting_type` is `"global"` and it was changed through the mod settings GUI, this is the index of the player that changed the global setting. If the `setting_type` is `"runtime-per-user"` and it changed a current setting of the player, this is the index of the player whose setting was changed. In all other cases, this is `nil`.

### setting

**Type:** [string](../concepts/string.md)

The prototype name of the setting that was changed.

### setting_type

**Type:** `"runtime-global"` ∣ `"runtime-per-user"`

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
