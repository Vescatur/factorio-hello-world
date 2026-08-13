# on_pre_scenario_finished

_event_

Called just before the scenario finishes.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_won](#player-won) | [boolean](../concepts/boolean.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_won

**Type:** [boolean](../concepts/boolean.md)

If a player won

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
