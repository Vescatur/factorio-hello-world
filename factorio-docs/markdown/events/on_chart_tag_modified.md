# on_chart_tag_modified

_event_

Called when a chart tag is modified by a player or by script.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [old_icon](#old-icon) | [SignalID](../concepts/SignalID.md) |  |
| [old_player_index](#old-player-index) | [uint32](../concepts/uint32.md) | yes |
| [old_position](#old-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [old_surface](#old-surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [old_text](#old-text) | [string](../concepts/string.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tag](#tag) | [LuaCustomChartTag](../classes/LuaCustomChartTag.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### force

**Type:** [LuaForce](../classes/LuaForce.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### old_icon

**Type:** [SignalID](../concepts/SignalID.md)

### old_player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

### old_position

**Type:** [MapPosition](../concepts/MapPosition.md)

### old_surface

**Type:** [LuaSurface](../classes/LuaSurface.md)

### old_text

**Type:** [string](../concepts/string.md)

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

### tag

**Type:** [LuaCustomChartTag](../classes/LuaCustomChartTag.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
