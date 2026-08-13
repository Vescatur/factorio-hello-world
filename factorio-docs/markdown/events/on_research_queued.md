# on_research_queued

_event_

Called when research is queued.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [research](#research) | [LuaTechnology](../classes/LuaTechnology.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### force

**Type:** [LuaForce](../classes/LuaForce.md)

The force whose research was queued.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player who queued the research if any.

### research

**Type:** [LuaTechnology](../classes/LuaTechnology.md)

The technology queued

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
