# on_research_cancelled

_event_

Called when research is cancelled.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [research](#research) | dictionary[[string](../concepts/string.md) → [uint32](../concepts/uint32.md)] |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### force

**Type:** [LuaForce](../classes/LuaForce.md)

The force whose research was cancelled.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player who cancelled the research if any.

### research

**Type:** dictionary[[string](../concepts/string.md) → [uint32](../concepts/uint32.md)]

A mapping of technology name to how many times it was cancelled.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
