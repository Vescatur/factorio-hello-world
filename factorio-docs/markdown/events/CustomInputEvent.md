# CustomInputEvent

_event_

Called when a [CustomInputPrototype](../prototypes/CustomInputPrototype.md) is activated.

**Example:**

```
-- This will be raised when a custom input with the name "my-potato-control" and action "lua" is pressed
script.on_event("my-potato-control", function(event)
  game.print("Keyboard shortcut pressed on tick: " ..tostring(event.tick))
end)
```

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cursor_direction](#cursor-direction) | [defines.direction](../defines/defines.md) | yes |
| [cursor_display_location](#cursor-display-location) | [GuiLocation](../concepts/GuiLocation.md) |  |
| [cursor_position](#cursor-position) | [MapPosition](../concepts/MapPosition.md) |  |
| [element](#element) | [LuaGuiElement](../classes/LuaGuiElement.md) | yes |
| [in_gui](#in-gui) | [boolean](../concepts/boolean.md) |  |
| [input_name](#input-name) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [selected_prototype](#selected-prototype) | [SelectedPrototypeData](../concepts/SelectedPrototypeData.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cursor_direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

Cursor direction.

### cursor_display_location

**Type:** [GuiLocation](../concepts/GuiLocation.md)

The mouse cursor display location when the custom input was activated.

### cursor_position

**Type:** [MapPosition](../concepts/MapPosition.md)

The mouse cursor position when the custom input was activated.

### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md) · _optional_

The GUI element under the cursor when the custom input was activated.

### in_gui

**Type:** [boolean](../concepts/boolean.md)

If the cursor was over any GUI when the custom input was activated.

### input_name

**Type:** [string](../concepts/string.md)

The prototype name of the custom input that was activated.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player that activated the custom input.

### selected_prototype

**Type:** [SelectedPrototypeData](../concepts/SelectedPrototypeData.md) · _optional_

Information about the prototype that is selected when the custom input is used. Needs to be enabled on the custom input's prototype. `nil` if none is selected.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
