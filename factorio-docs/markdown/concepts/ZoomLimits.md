# ZoomLimits

_concept_

A set of limitations for the player zoom level.

**Example:**

```
{
  closest = { zoom = 4 },
  furthest = { zoom = 1 / 16 },
  furthest_game_view = { distance = 200, max_distance = 400 }
}
```

**Definition:** table{closest, furthest, furthest_game_view}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [closest](#closest) | [ZoomSpecification](../concepts/ZoomSpecification.md) | yes |
| [furthest](#furthest) | [ZoomSpecification](../concepts/ZoomSpecification.md) | yes |
| [furthest_game_view](#furthest-game-view) | [ZoomSpecification](../concepts/ZoomSpecification.md) | yes |

### closest

**Type:** [ZoomSpecification](../concepts/ZoomSpecification.md) · _optional_

The closest zoom level that the player's current controller can have. If not defined when overwriting [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits), then the default value for the current controller as defined by the engine will be used instead. When reading from [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits), this field will contain the value previously set by a script or the default value defined by the engine.

### furthest

**Type:** [ZoomSpecification](../concepts/ZoomSpecification.md) · _optional_

The furthest zoom level that the player's current controller can have. If for any reason the `furthest` limit is closer than `closest`, then the player's zoom will be locked to the closer of the two values. If not defined when overwriting [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits), then the default value for the current controller as defined by the engine will be used instead. When reading from [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits), this field will contain the value previously set by a script or the default value defined by the engine.

### furthest_game_view

**Type:** [ZoomSpecification](../concepts/ZoomSpecification.md) · _optional_

The furthest zoom level at which the engine will render the game view. Zoom levels further than this limit will render using chart (map) view. Set this to the same value as `furthest` to force the game view at all zoom levels. Set this to some value closer than `closest` to force chart view at all zoom levels. If not defined when overwriting [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits), then the default value for the current controller as defined by the engine will be used instead. When reading from [LuaPlayer::zoom_limits](../classes/LuaPlayer.md#zoom-limits), this field will contain the value previously set by a script or the default value defined by the engine.
