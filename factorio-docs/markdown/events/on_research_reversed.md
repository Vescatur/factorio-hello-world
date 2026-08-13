# on_research_reversed

_event_

Called when a research is reversed (unresearched).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [by_script](#by-script) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [research](#research) | [LuaTechnology](../classes/LuaTechnology.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### by_script

**Type:** [boolean](../concepts/boolean.md)

If the technology was un-researched by script.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### research

**Type:** [LuaTechnology](../classes/LuaTechnology.md)

The technology un-researched

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
