# LuaChunkIterator

_class_

A chunk iterator can be used for iterating chunks coordinates of a surface.

The returned type is a [ChunkPositionAndArea](../concepts/ChunkPositionAndArea.md) containing the chunk coordinates and its area.

**Example:**

```
for chunk in some_surface.get_chunks() do
  game.player.print("x: " .. chunk.x .. ", y: " .. chunk.y)
  game.player.print("area: " .. serpent.line(chunk.area))
end
```

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Operators

### call

`call()`

Gets the next chunk position if the iterator is not yet done and increments the it.

#### Return values

- [ChunkPositionAndArea](../concepts/ChunkPositionAndArea.md) _(optional)_
