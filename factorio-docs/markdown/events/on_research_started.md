# on_research_started

_event_

Called when a technology research starts.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [last_research](#last-research) | [LuaTechnology](../classes/LuaTechnology.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [research](#research) | [LuaTechnology](../classes/LuaTechnology.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### last_research

**Type:** [LuaTechnology](../classes/LuaTechnology.md) · _optional_

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### research

**Type:** [LuaTechnology](../classes/LuaTechnology.md)

The technology being researched

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
