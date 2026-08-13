# LuaCustomChartTag

_class_

A custom tag that shows on the map view.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [icon](#icon) | [SignalID](../concepts/SignalID.md) | yes |
| [last_user](#last-user) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [tag_number](#tag-number) | [uint32](../concepts/uint32.md) |  |
| [text](#text) | [string](../concepts/string.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force this tag belongs to.

### icon

**Read:** [SignalID](../concepts/SignalID.md) · **Write:** [SignalID](../concepts/SignalID.md) · _optional_

This tag's icon, if it has one. Writing `nil` removes it.

### last_user

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · **Write:** [PlayerIdentification](../concepts/PlayerIdentification.md) · _optional_

The player who last edited this tag.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md)

The position of this tag.

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · **Write:** [LuaSurface](../classes/LuaSurface.md)

The surface this tag belongs to.

### tag_number

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The unique ID for this tag on this force.

### text

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [destroy](#destroy) | Destroys this tag. |

### destroy

`destroy()`

Destroys this tag.
