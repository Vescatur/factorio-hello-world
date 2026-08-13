# on_tick

_event_

It is fired once every tick. Since this event is fired every tick, its handler shouldn't include performance heavy code.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
