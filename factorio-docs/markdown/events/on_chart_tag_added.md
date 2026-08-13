# on_chart_tag_added

_event_

Called when a chart tag is created.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tag](#tag) | [LuaCustomChartTag](../classes/LuaCustomChartTag.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### force

**Type:** [LuaForce](../classes/LuaForce.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

### tag

**Type:** [LuaCustomChartTag](../classes/LuaCustomChartTag.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
