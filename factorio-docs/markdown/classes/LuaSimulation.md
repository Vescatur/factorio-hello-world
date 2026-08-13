# LuaSimulation

_class_

Functions for use during simulations. This object cannot be saved, and cannot be used outside of a simulation.

The simulation object instance can be obtained from [LuaGameScript::simulation](../classes/LuaGameScript.md#simulation).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [active_quickbars](#active-quickbars) | [uint8](../concepts/uint8.md) |  |
| [camera_alt_info](#camera-alt-info) | [boolean](../concepts/boolean.md) |  |
| [camera_player](#camera-player) | [PlayerIdentification](../concepts/PlayerIdentification.md) |  |
| [camera_player_cursor_direction](#camera-player-cursor-direction) | [defines.direction](../defines/defines.md) |  |
| [camera_player_cursor_position](#camera-player-cursor-position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [camera_position](#camera-position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [camera_surface_index](#camera-surface-index) | [uint32](../concepts/uint32.md) | yes |
| [camera_zoom](#camera-zoom) | [double](../concepts/double.md) |  |
| [gui_tooltip_interval](#gui-tooltip-interval) | [double](../concepts/double.md) |  |
| [hide_cursor](#hide-cursor) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [smart_belt_building](#smart-belt-building) | [boolean](../concepts/boolean.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### active_quickbars

**Write:** [uint8](../concepts/uint8.md)

### camera_alt_info

**Write:** [boolean](../concepts/boolean.md)

### camera_player

**Write:** [PlayerIdentification](../concepts/PlayerIdentification.md)

### camera_player_cursor_direction

**Write:** [defines.direction](../defines/defines.md)

### camera_player_cursor_position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md) · _optional_

### camera_position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md) · _optional_

### camera_surface_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

### camera_zoom

**Write:** [double](../concepts/double.md)

### gui_tooltip_interval

**Write:** [double](../concepts/double.md)

### hide_cursor

**Write:** [boolean](../concepts/boolean.md)

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### smart_belt_building

**Write:** [boolean](../concepts/boolean.md) · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [activate_rail_planner](#activate-rail-planner) | Activate the rail planner at the given position. |
| [control_down](#control-down) | Send a control press event at the current cursor position. |
| [control_press](#control-press) | Send a control down and up event at the current cursor position. This is equivalent to calling LuaSimulation::control_down, then LuaSimulation::control_up. |
| [control_up](#control-up) | Send a control release event at the current cursor position. |
| [create_test_player](#create-test-player) |  |
| [deactivate_rail_planner](#deactivate-rail-planner) | Deactivate the rail planner. |
| [get_slot_position](#get-slot-position) |  |
| [get_widget_position](#get-widget-position) |  |
| [mouse_click](#mouse-click) | Send a left mouse button click event at its current position. This is equivalent to calling LuaSimulation::mouse_down, then LuaSimulation::mouse_up. |
| [mouse_down](#mouse-down) | Send a left mouse button-down event at its current position. |
| [mouse_up](#mouse-up) | Send a left mouse button-up event at its current position. |
| [move_cursor](#move-cursor) | Move the cursor towards the given position at the given speed. |
| [scroll_clipboard_backwards](#scroll-clipboard-backwards) | Scroll the clipboard backwards by one entry. |
| [scroll_clipboard_forwards](#scroll-clipboard-forwards) | Scroll the clipboard forwards by one entry. |
| [write](#write) | Write text as if it was typed by a player. Overwrites existing text by selecting it first. |

### activate_rail_planner

`activate_rail_planner({build_mode, ghost_mode, position})`

Activate the rail planner at the given position.

#### Parameters

##### build_mode

**Type:** [defines.build_mode](../defines/defines.md) · _optional_

Defaults to [normal](../defines/defines.md).

##### ghost_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

### control_down

`control_down({control, notify})`

Send a control press event at the current cursor position.

#### Parameters

##### control

**Type:** [string](../concepts/string.md)

The name of the control input to press.

##### notify

**Type:** [boolean](../concepts/boolean.md)

Whether to show flying text of the activated control.

### control_press

`control_press({control, notify})`

Send a control down and up event at the current cursor position. This is equivalent to calling [LuaSimulation::control_down](../classes/LuaSimulation.md#control-down), then [LuaSimulation::control_up](../classes/LuaSimulation.md#control-up).

#### Parameters

##### control

**Type:** [string](../concepts/string.md)

The name of the control input to press and release.

##### notify

**Type:** [boolean](../concepts/boolean.md)

Whether to show flying text of the activated control.

### control_up

`control_up({control})`

Send a control release event at the current cursor position.

#### Parameters

##### control

**Type:** [string](../concepts/string.md)

The name of the control input to release.

### create_test_player

`create_test_player({name})`

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

The name of the new player.

#### Return values

- [LuaPlayer](../classes/LuaPlayer.md) — The created player.

### deactivate_rail_planner

`deactivate_rail_planner()`

Deactivate the rail planner.

### get_slot_position

`get_slot_position({inventory, inventory_index, slot_index})`

#### Parameters

##### inventory

**Type:** `"character"` ∣ `"entity"` · _optional_

Defaults to `"character"`.

##### inventory_index

**Type:** [InventoryIndex](../concepts/InventoryIndex.md)

##### slot_index

**Type:** [ItemStackIndex](../concepts/ItemStackIndex.md)

This index is 0-based, unlike other inventory indices.

#### Return values

- [MapPosition](../concepts/MapPosition.md) _(optional)_ — Position of the GUI slot on the screen, if successfully found.

### get_widget_position

`get_widget_position({data, data2, type})`

#### Parameters

##### data

**Type:** [string](../concepts/string.md) · _optional_

##### data2

**Type:** [string](../concepts/string.md) · _optional_

##### type

**Type:** [SimulationWidgetType](../concepts/SimulationWidgetType.md)

#### Return values

- [MapPosition](../concepts/MapPosition.md) _(optional)_ — Center of the GUI widget on the screen, if successfully found.

### mouse_click

`mouse_click()`

Send a left mouse button click event at its current position. This is equivalent to calling [LuaSimulation::mouse_down](../classes/LuaSimulation.md#mouse-down), then [LuaSimulation::mouse_up](../classes/LuaSimulation.md#mouse-up).

### mouse_down

`mouse_down()`

Send a left mouse button-down event at its current position.

### mouse_up

`mouse_up()`

Send a left mouse button-up event at its current position.

### move_cursor

`move_cursor({position, speed})`

Move the cursor towards the given position at the given speed.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

##### speed

**Type:** [double](../concepts/double.md) · _optional_

Defaults to `0.2`.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the cursor will reach the target position with this move.

### scroll_clipboard_backwards

`scroll_clipboard_backwards()`

Scroll the clipboard backwards by one entry.

### scroll_clipboard_forwards

`scroll_clipboard_forwards()`

Scroll the clipboard forwards by one entry.

### write

`write({text})`

Write text as if it was typed by a player. Overwrites existing text by selecting it first.

#### Parameters

##### text

**Type:** [string](../concepts/string.md) · _optional_

The text to write. Does nothing if no text is provided.
