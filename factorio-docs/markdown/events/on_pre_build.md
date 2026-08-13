# on_pre_build

_event_

Called when players uses an item to build something. Called before [on_built_entity](../events/on_built_entity.md).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [build_mode](#build-mode) | [defines.build_mode](../defines/defines.md) |  |
| [created_by_moving](#created-by-moving) | [boolean](../concepts/boolean.md) |  |
| [direction](#direction) | [defines.direction](../defines/defines.md) |  |
| [flip_horizontal](#flip-horizontal) | [boolean](../concepts/boolean.md) |  |
| [flip_vertical](#flip-vertical) | [boolean](../concepts/boolean.md) |  |
| [mirror](#mirror) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### build_mode

**Type:** [defines.build_mode](../defines/defines.md)

Build mode the item was placed with.

### created_by_moving

**Type:** [boolean](../concepts/boolean.md)

Whether the item was placed while moving.

### direction

**Type:** [defines.direction](../defines/defines.md)

The direction the item was facing when placed.

### flip_horizontal

**Type:** [boolean](../concepts/boolean.md)

Whether the blueprint was flipped horizontally. `nil` if not built by a blueprint.

### flip_vertical

**Type:** [boolean](../concepts/boolean.md)

Whether the blueprint was flipped vertically. `nil` if not built by a blueprint.

### mirror

**Type:** [boolean](../concepts/boolean.md)

If the item is mirrored (only crafting machines support this)

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the placing.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Where the item was placed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
