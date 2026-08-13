# LuaTile

_class_

A single "square" on the map.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [double_hidden_tile](#double-hidden-tile) | [string](../concepts/string.md) | yes |
| [hidden_tile](#hidden-tile) | [string](../concepts/string.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [position](#position) | [TilePosition](../concepts/TilePosition.md) |  |
| [prototype](#prototype) | [LuaTilePrototype](../classes/LuaTilePrototype.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### double_hidden_tile

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The name of the [LuaTilePrototype](../classes/LuaTilePrototype.md) double hidden under this tile or `nil` if there is no double hidden tile.

During normal gameplay, only [non-mineable](../classes/LuaTilePrototype.md#mineable-properties) tiles can become double hidden. This can however be circumvented with [LuaSurface::set_double_hidden_tile](../classes/LuaSurface.md#set-double-hidden-tile).

### hidden_tile

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

The name of the [LuaTilePrototype](../classes/LuaTilePrototype.md) hidden under this tile, if any.

During normal gameplay, only [non-mineable](../classes/LuaTilePrototype.md#mineable-properties) or [foundation](../classes/LuaTilePrototype.md#is-foundation) tiles can become hidden. This can however be circumvented with [LuaSurface::set_hidden_tile](../classes/LuaSurface.md#set-hidden-tile).

### name

**Read:** [string](../concepts/string.md) · _read-only_

Prototype name of this tile. E.g. `"sand-3"` or `"grass-2"`.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### position

**Read:** [TilePosition](../concepts/TilePosition.md) · _read-only_

The position this tile references.

### prototype

**Read:** [LuaTilePrototype](../classes/LuaTilePrototype.md) · _read-only_

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

The surface this tile is on.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [cancel_deconstruction](#cancel-deconstruction) | Cancels deconstruction if it is scheduled, does nothing otherwise. |
| [collides_with](#collides-with) | What type of things can collide with this tile? |
| [get_tile_ghosts](#get-tile-ghosts) | Gets all tile ghosts on this tile. |
| [has_tile_ghost](#has-tile-ghost) | Does this tile have any tile ghosts on it. |
| [order_deconstruction](#order-deconstruction) | Orders deconstruction of this tile by the given force. |
| [to_be_deconstructed](#to-be-deconstructed) | Is this tile marked for deconstruction? |

### cancel_deconstruction

`cancel_deconstruction(force, player)`

Cancels deconstruction if it is scheduled, does nothing otherwise.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force who did the deconstruction order.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to if any.

#### Raises

- `on_cancelled_deconstruction` — Raised if the tile's deconstruction was successfully cancelled.

### collides_with

`collides_with(layer)`

What type of things can collide with this tile?

#### Parameters

##### layer

**Type:** [CollisionLayerID](../concepts/CollisionLayerID.md)

#### Return values

- [boolean](../concepts/boolean.md)

**Example:**

```
-- Check if the character would collide with a tile
game.player.print(tostring(game.player.surface.get_tile(1, 1).collides_with("player")))
```

### get_tile_ghosts

`get_tile_ghosts(force)`

Gets all tile ghosts on this tile.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Get tile ghosts of this force.

#### Return values

- array[[LuaEntity](../classes/LuaEntity.md)] — The tile ghosts.

### has_tile_ghost

`has_tile_ghost(force)`

Does this tile have any tile ghosts on it.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

Check for tile ghosts of this force.

#### Return values

- [boolean](../concepts/boolean.md)

### order_deconstruction

`order_deconstruction(force, player)`

Orders deconstruction of this tile by the given force.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force whose robots are supposed to do the deconstruction.

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player to set the last_user to if any.

#### Return values

- [LuaEntity](../classes/LuaEntity.md) _(optional)_ — The deconstructible tile proxy created, if any.

#### Raises

- `on_marked_for_deconstruction` — Raised if the tile was successfully marked for deconstruction.

### to_be_deconstructed

`to_be_deconstructed(force)`

Is this tile marked for deconstruction?

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md) · _optional_

The force whose robots are supposed to do the deconstruction. If not given, checks if to be deconstructed by any force.

#### Return values

- [boolean](../concepts/boolean.md)
