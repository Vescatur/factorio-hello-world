# LuaGui

_class_

The root of the GUI. This type houses the root elements, `top`, `left`, `center`,  `goal`, and `screen`, to which other elements can be added to be displayed on screen.

Every player can have a different GUI state.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [center](#center) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [children](#children) | dictionary[[string](../concepts/string.md) → [LuaGuiElement](../classes/LuaGuiElement.md)] |  |
| [goal](#goal) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [left](#left) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [player](#player) | [LuaPlayer](../classes/LuaPlayer.md) |  |
| [relative](#relative) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [screen](#screen) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [top](#top) | [LuaGuiElement](../classes/LuaGuiElement.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### center

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_

The center part of the GUI. It is a flow element.

### children

**Read:** dictionary[[string](../concepts/string.md) → [LuaGuiElement](../classes/LuaGuiElement.md)] · _read-only_

The children GUI elements mapped by name <> element.

### goal

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_

The flow used in the objectives window. It is a flow element. The objectives window is only visible when the flow is not empty or the objective text is set.

### left

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_

The left part of the GUI. It is a flow element inside a scroll pane element.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### player

**Read:** [LuaPlayer](../classes/LuaPlayer.md) · _read-only_

The player who owns this gui.

### relative

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_

For showing a GUI somewhere relative to one of the game GUIs. It is an empty-widget element.

### screen

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_

For showing a GUI somewhere on the entire screen. It is an empty-widget element.

### top

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_

The top part of the GUI. It is a flow element inside a scroll pane element.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
