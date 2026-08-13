# LuaPin

_class_

A pin owned by a player.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [alert_positions](#alert-positions) | array[[MapPosition](../concepts/MapPosition.md)] |  |
| [alert_type](#alert-type) | [defines.alert_type](../defines/defines.md) | yes |
| [always_visible](#always-visible) | [boolean](../concepts/boolean.md) |  |
| [chart_tag](#chart-tag) | [LuaCustomChartTag](../classes/LuaCustomChartTag.md) | yes |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [label](#label) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [owner](#owner) | [LuaPlayer](../classes/LuaPlayer.md) |  |
| [player](#player) | [LuaPlayer](../classes/LuaPlayer.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [preview_distance](#preview-distance) | [uint16](../concepts/uint16.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) | yes |
| [targets](#targets) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### alert_positions

**Read:** array[[MapPosition](../concepts/MapPosition.md)] · **Write:** array[[MapPosition](../concepts/MapPosition.md)]

The alert positions if this pin is configured to show alert data.

### alert_type

**Read:** [defines.alert_type](../defines/defines.md) · **Write:** [defines.alert_type](../defines/defines.md) · _optional_

The type of alert this pin is for (if configured to be about alerts).

### always_visible

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### chart_tag

**Read:** [LuaCustomChartTag](../classes/LuaCustomChartTag.md) · **Write:** [LuaCustomChartTag](../classes/LuaCustomChartTag.md) · _optional_

The custom chart tag - if this pin specificaly binds to a chart tag.

The chart tag must be on the same force as the owning player.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The index of this pin (unique to this player).

Note that this index has no corelation to the position of the pin within [LuaPlayer::get_pins](../classes/LuaPlayer.md#get-pins)

### label

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The label for this pin - if any. This will be an empty string if there is no label set.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### owner

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · _read-only_

The player that this pin belongs to.

### player

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · **Write:** [LuaPlayer](../classes/LuaPlayer.md) · _optional_

The player that this pin is bound to.

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md) · _optional_

The position if this pin specifically binds to a surface and position.

If writing, and this pin was not bound to a specific surface and position, the default surface of nauvis is used.

### preview_distance

**Read:** [uint16](../concepts/uint16.md) · **Write:** [uint16](../concepts/uint16.md)

The radius (in tiles) that is shown in the tooltip for this pin.

### surface_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

The surface index if this pin specifically binds to a surface and position.

If writing, and this pin was not bound to a specific surface and position, the default position of (0,0) is used.

### targets

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · **Write:** array[[LuaEntity](../classes/LuaEntity.md)]

The targets of this pin - if any.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [destroy](#destroy) | Destroys this pin. |
| [get_pin_center](#get-pin-center) | The center of this pin if it can be computed. |

### destroy

`destroy()`

Destroys this pin.

### get_pin_center

`get_pin_center()`

The center of this pin if it can be computed.

#### Return values

- [MapPosition](../concepts/MapPosition.md) _(optional)_
