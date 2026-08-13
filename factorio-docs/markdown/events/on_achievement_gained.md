# on_achievement_gained

_event_

Called when an achievement is gained.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [achievement](#achievement) | [LuaAchievementPrototype](../classes/LuaAchievementPrototype.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### achievement

**Type:** [LuaAchievementPrototype](../classes/LuaAchievementPrototype.md)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who gained the achievement.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
