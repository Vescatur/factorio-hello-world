# LuaGuiElement

_class_

An element of a custom GUI. This type is used to represent [any kind](../concepts/GuiElementType.md) of a GUI element - labels, buttons and frames are all instances of this type. Just like [LuaEntity](../classes/LuaEntity.md), different kinds of elements support different attributes; attempting to access an attribute on an element that doesn't support it (for instance, trying to access the `column_count` of a `textfield`) will result in a runtime error.

For information on all supported GUI elements, see [GuiElementType](../concepts/GuiElementType.md).

Each GUI element allows access to its children by having them as attributes. Thus, one can use the `parent.child` syntax to refer to children. Lua also supports the `parent["child"]` syntax to refer to the same element. This can be used in cases where the child has a name that isn't a valid Lua identifier.

**Examples:**

```
-- This will add a label called "greeting" to the top flow.
-- Immediately after, it will change its text to illustrate accessing child elements.
game.player.gui.top.add{type="label", name="greeting", caption="Hi"}
game.player.gui.top.greeting.caption = "Hello there!"
game.player.gui.top["greeting"].caption = "Actually, never mind, I don't like your face"
```

```
-- This will add a tabbed-pane and 2 tabs with contents.
local tabbed_pane = game.player.gui.top.add{type="tabbed-pane"}
local tab1 = tabbed_pane.add{type="tab", caption="Tab 1"}
local tab2 = tabbed_pane.add{type="tab", caption="Tab 2"}
local label1 = tabbed_pane.add{type="label", caption="Label 1"}
local label2 = tabbed_pane.add{type="label", caption="Label 2"}
tabbed_pane.add_tab(tab1, label1)
tabbed_pane.add_tab(tab2, label2)
```

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [allow_decimal](#allow-decimal) | [boolean](../concepts/boolean.md) |  |
| [allow_negative](#allow-negative) | [boolean](../concepts/boolean.md) |  |
| [allow_none_state](#allow-none-state) | [boolean](../concepts/boolean.md) |  |
| [anchor](#anchor) | [GuiAnchor](../concepts/GuiAnchor.md) | yes |
| [auto_center](#auto-center) | [boolean](../concepts/boolean.md) |  |
| [auto_toggle](#auto-toggle) | [boolean](../concepts/boolean.md) |  |
| [badge_text](#badge-text) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [caption](#caption) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [children](#children) | array[[LuaGuiElement](../classes/LuaGuiElement.md)] |  |
| [children_names](#children-names) | array[[string](../concepts/string.md)] |  |
| [clicked_sprite](#clicked-sprite) | [SpritePath](../concepts/SpritePath.md) |  |
| [column_count](#column-count) | [uint32](../concepts/uint32.md) |  |
| [direction](#direction) | [GuiDirection](../concepts/GuiDirection.md) |  |
| [drag_target](#drag-target) | [LuaGuiElement](../classes/LuaGuiElement.md) | yes |
| [draw_horizontal_line_after_headers](#draw-horizontal-line-after-headers) | [boolean](../concepts/boolean.md) |  |
| [draw_horizontal_lines](#draw-horizontal-lines) | [boolean](../concepts/boolean.md) |  |
| [draw_vertical_lines](#draw-vertical-lines) | [boolean](../concepts/boolean.md) |  |
| [elem_filters](#elem-filters) | [PrototypeFilter](../concepts/PrototypeFilter.md) | yes |
| [elem_tooltip](#elem-tooltip) | [ElemID](../concepts/ElemID.md) | yes |
| [elem_type](#elem-type) | [ElemType](../concepts/ElemType.md) |  |
| [elem_value](#elem-value) | [string](../concepts/string.md) ∣ [SignalID](../concepts/SignalID.md) ∣ [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) | yes |
| [empty_slot_info](#empty-slot-info) | [EmptySlotInfo](../concepts/EmptySlotInfo.md) | yes |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [force](#force) | [string](../concepts/string.md) | yes |
| [game_controller_interaction](#game-controller-interaction) | [defines.game_controller_interaction](../defines/defines.md) |  |
| [gui](#gui) | [LuaGui](../classes/LuaGui.md) |  |
| [handle_cursor_split](#handle-cursor-split) | [boolean](../concepts/boolean.md) |  |
| [handle_cursor_transfer](#handle-cursor-transfer) | [boolean](../concepts/boolean.md) |  |
| [handle_open_item](#handle-open-item) | [boolean](../concepts/boolean.md) |  |
| [handle_open_mod_item](#handle-open-mod-item) | [boolean](../concepts/boolean.md) |  |
| [handle_send_stack_to_trash](#handle-send-stack-to-trash) | [boolean](../concepts/boolean.md) |  |
| [handle_send_stacks_to_trash](#handle-send-stacks-to-trash) | [boolean](../concepts/boolean.md) |  |
| [horizontal_scroll_policy](#horizontal-scroll-policy) | [ScrollPolicy](../concepts/ScrollPolicy.md) |  |
| [hovered_sprite](#hovered-sprite) | [SpritePath](../concepts/SpritePath.md) |  |
| [icon_selector](#icon-selector) | [boolean](../concepts/boolean.md) |  |
| [ignored_by_interaction](#ignored-by-interaction) | [boolean](../concepts/boolean.md) |  |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [inventory](#inventory) | [LuaInventory](../classes/LuaInventory.md) | yes |
| [is_password](#is-password) | [boolean](../concepts/boolean.md) |  |
| [items](#items) | array[[LocalisedString](../concepts/LocalisedString.md)] |  |
| [left_label_caption](#left-label-caption) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [left_label_tooltip](#left-label-tooltip) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [location](#location) | [GuiLocation](../concepts/GuiLocation.md) | yes |
| [locked](#locked) | [boolean](../concepts/boolean.md) |  |
| [lose_focus_on_confirm](#lose-focus-on-confirm) | [boolean](../concepts/boolean.md) |  |
| [minimap_player_index](#minimap-player-index) | [uint32](../concepts/uint32.md) |  |
| [mouse_button_filter](#mouse-button-filter) | [ActiveMouseButtonFlags](../concepts/ActiveMouseButtonFlags.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [number](#number) | [double](../concepts/double.md) | yes |
| [numeric](#numeric) | [boolean](../concepts/boolean.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [parent](#parent) | [LuaGuiElement](../classes/LuaGuiElement.md) | yes |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [raise_hover_events](#raise-hover-events) | [boolean](../concepts/boolean.md) |  |
| [read_only](#read-only) | [boolean](../concepts/boolean.md) |  |
| [resize_to_sprite](#resize-to-sprite) | [boolean](../concepts/boolean.md) |  |
| [right_label_caption](#right-label-caption) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [right_label_tooltip](#right-label-tooltip) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [selectable](#selectable) | [boolean](../concepts/boolean.md) |  |
| [selected_index](#selected-index) | [uint32](../concepts/uint32.md) |  |
| [selected_tab_index](#selected-tab-index) | [uint32](../concepts/uint32.md) | yes |
| [show_percent_for_small_numbers](#show-percent-for-small-numbers) | [boolean](../concepts/boolean.md) |  |
| [slider_value](#slider-value) | [double](../concepts/double.md) |  |
| [slots_per_row](#slots-per-row) | [uint8](../concepts/uint8.md) | yes |
| [sprite](#sprite) | [SpritePath](../concepts/SpritePath.md) |  |
| [state](#state) | [boolean](../concepts/boolean.md) |  |
| [style](#style) | [LuaStyle](../classes/LuaStyle.md) ∣ [string](../concepts/string.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [switch_state](#switch-state) | [SwitchState](../concepts/SwitchState.md) |  |
| [tabs](#tabs) | array[[TabAndContent](../concepts/TabAndContent.md)] |  |
| [tags](#tags) | [Tags](../concepts/Tags.md) |  |
| [text](#text) | [string](../concepts/string.md) |  |
| [toggled](#toggled) | [boolean](../concepts/boolean.md) |  |
| [tooltip](#tooltip) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [type](#type) | [GuiElementType](../concepts/GuiElementType.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [value](#value) | [double](../concepts/double.md) |  |
| [vertical_centering](#vertical-centering) | [boolean](../concepts/boolean.md) |  |
| [vertical_scroll_policy](#vertical-scroll-policy) | [ScrollPolicy](../concepts/ScrollPolicy.md) |  |
| [visible](#visible) | [boolean](../concepts/boolean.md) |  |
| [word_wrap](#word-wrap) | [boolean](../concepts/boolean.md) |  |
| [zoom](#zoom) | [double](../concepts/double.md) |  |

### allow_decimal

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this textfield (when in numeric mode) allows decimal numbers.

### allow_negative

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this textfield (when in numeric mode) allows negative numbers.

### allow_none_state

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the `"none"` state is allowed for this switch.

This can't be set to false if the current switch_state is 'none'.

### anchor

**Read:** [GuiAnchor](../concepts/GuiAnchor.md) · **Write:** [GuiAnchor](../concepts/GuiAnchor.md) · _optional_

The anchor for this relative widget, if any. Setting `nil` clears the anchor.

### auto_center

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this frame auto-centers on window resize when stored in [LuaGui::screen](../classes/LuaGui.md#screen).

### auto_toggle

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this button will automatically toggle when clicked.

### badge_text

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The text to display after the normal tab text (designed to work with numbers)

### caption

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The text displayed on this element. For frames, this is the "heading". For other elements, like buttons or labels, this is the content.

Whilst this attribute may be used on all elements without producing an error, it doesn't make sense for tables and flows as they won't display it.

### children

**Read:** array[[LuaGuiElement](../classes/LuaGuiElement.md)] · _read-only_

The child-elements of this GUI element.

### children_names

**Read:** array[[string](../concepts/string.md)] · _read-only_

Names of all the children of this element. These are the identifiers that can be used to access the child as an attribute of this element.

### clicked_sprite

**Read:** [SpritePath](../concepts/SpritePath.md) · **Write:** [SpritePath](../concepts/SpritePath.md)

The sprite to display on this sprite-button when it is clicked.

### column_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of columns in this table.

### direction

**Read:** [GuiDirection](../concepts/GuiDirection.md) · _read-only_

Direction of this element's layout.

### drag_target

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · **Write:** [LuaGuiElement](../classes/LuaGuiElement.md) · _optional_

The `frame` that is being moved when dragging this GUI element, if any. This element needs to be a child of the `drag_target` at some level.

Only top-level elements in [LuaGui::screen](../classes/LuaGui.md#screen) can be `drag_target`s.

**Example:**

```
-- This creates a frame that contains a dragging handle which can move the frame.
local frame = player.gui.screen.add{type="frame", direction="vertical"}
local dragger = frame.add{type="empty-widget", style="draggable_space"}
dragger.style.size = {128, 24}
dragger.drag_target = frame
```

### draw_horizontal_line_after_headers

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this table should draw a horizontal grid line below the first table row.

### draw_horizontal_lines

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this table should draw horizontal grid lines.

### draw_vertical_lines

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this table should draw vertical grid lines.

### elem_filters

**Read:** [PrototypeFilter](../concepts/PrototypeFilter.md) · **Write:** [PrototypeFilter](../concepts/PrototypeFilter.md) · _optional_

The elem filters of this choose-elem-button, if any. The compatible type of filter is determined by `elem_type`.

Writing to this field does not change or clear the currently selected element.

**Examples:**

```
-- This will configure a choose-elem-button of type "entity" to only show items of type "furnace".
button.elem_filters = {{filter = "type", type = "furnace"}}
```

```
-- Then, there are some types of filters that work on a specific kind of attribute. The following will configure a
--   choose-elem-button of type "entity" to only show entities that have their `hidden` property set to `true`.
button.elem_filters = {{filter = "hidden"}}
```

```
-- Lastly, these filters can be combined at will, taking care to specify how they should be combined (either "and" or "or").
--   The following will filter for any entities that are "furnaces" and that are not "hidden".
button.elem_filters = {{filter = "type", type = "furnace"}, {filter = "hidden", invert = true, mode = "and"}}
```

### elem_tooltip

**Read:** [ElemID](../concepts/ElemID.md) · **Write:** [ElemID](../concepts/ElemID.md) · _optional_

The element tooltip to display when hovering over this element, or `nil`.

### elem_type

**Read:** [ElemType](../concepts/ElemType.md) · _read-only_

The elem type of this choose-elem-button.

### elem_value

**Read:** [string](../concepts/string.md) ∣ [SignalID](../concepts/SignalID.md) ∣ [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) · **Write:** [string](../concepts/string.md) ∣ [SignalID](../concepts/SignalID.md) ∣ [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) · _optional_

The elem value of this choose-elem-button, if any.

The `"signal"` type operates with [SignalID](../concepts/SignalID.md).

The `"with-quality"` types operate with [PrototypeWithQuality](../concepts/PrototypeWithQuality.md).

The remaining types use strings.

### empty_slot_info

**Read:** [EmptySlotInfo](../concepts/EmptySlotInfo.md) · **Write:** [EmptySlotInfo](../concepts/EmptySlotInfo.md) · _optional_

### enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this GUI element is enabled. Disabled GUI elements don't trigger events when clicked.

### entity

**Read:** [LuaEntity](../classes/LuaEntity.md) · **Write:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity associated with this entity-preview, camera, minimap, if any.

### force

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The force this minimap is using, if any.

### game_controller_interaction

**Read:** [defines.game_controller_interaction](../defines/defines.md) · **Write:** [defines.game_controller_interaction](../defines/defines.md)

How this element should interact with game controllers.

### gui

**Read:** [LuaGui](../classes/LuaGui.md) · _read-only_

The GUI this element is a child of.

### handle_cursor_split

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### handle_cursor_transfer

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### handle_open_item

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### handle_open_mod_item

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### handle_send_stack_to_trash

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### handle_send_stacks_to_trash

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### horizontal_scroll_policy

**Read:** [ScrollPolicy](../concepts/ScrollPolicy.md) · **Write:** [ScrollPolicy](../concepts/ScrollPolicy.md)

Policy of the horizontal scroll bar.

### hovered_sprite

**Read:** [SpritePath](../concepts/SpritePath.md) · **Write:** [SpritePath](../concepts/SpritePath.md)

The sprite to display on this sprite-button when it is hovered.

### icon_selector

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether this textfield or text-box was created with an icon selector.

### ignored_by_interaction

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this GUI element is ignored by interaction. This makes clicks on this element 'go through' to the GUI element or even the game surface below it.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The index of this GUI element (unique amongst the GUI elements of a LuaPlayer).

### inventory

**Read:** [LuaInventory](../classes/LuaInventory.md) · **Write:** [LuaInventory](../classes/LuaInventory.md) · _optional_

The inventory target for this custom inventory widget.

### is_password

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this textfield displays as a password field, which renders all characters as `*`.

### items

**Read:** array[[LocalisedString](../concepts/LocalisedString.md)] · **Write:** array[[LocalisedString](../concepts/LocalisedString.md)]

The items in this dropdown or listbox.

### left_label_caption

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The text shown for the left switch label.

### left_label_tooltip

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The tooltip shown on the left switch label.

### location

**Read:** [GuiLocation](../concepts/GuiLocation.md) · **Write:** [GuiLocation](../concepts/GuiLocation.md) · _optional_

The location of this widget when stored in [LuaGui::screen](../classes/LuaGui.md#screen). `nil` if not set or not in [LuaGui::screen](../classes/LuaGui.md#screen).

### locked

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this choose-elem-button can be changed by the player.

### lose_focus_on_confirm

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this textfield loses focus after [defines.events.on_gui_confirmed](../defines/defines.md) is fired.

### minimap_player_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The player index this minimap is using.

### mouse_button_filter

**Read:** [ActiveMouseButtonFlags](../concepts/ActiveMouseButtonFlags.md) · **Write:** [MouseButtonFlags](../concepts/MouseButtonFlags.md)

The mouse button filters for this button or sprite-button.

### name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The name of this element. `""` if no name was set.

**Example:**

```
game.player.gui.top.greeting.name == "greeting"
```

### number

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md) · _optional_

The number to be shown in the bottom right corner of this sprite-button, or `nil` to show nothing.

### numeric

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this textfield is limited to only numeric characters.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### parent

**Read:** [LuaGuiElement](../classes/LuaGuiElement.md) · _read-only_ · _optional_

The direct parent of this element. `nil` if this is a top-level element.

### player_index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Index into [LuaGameScript::players](../classes/LuaGameScript.md#players) specifying the player who owns this element.

### position

**Read:** [MapPosition](../concepts/MapPosition.md) · **Write:** [MapPosition](../concepts/MapPosition.md)

The position this camera or minimap is focused on, if any.

### quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · **Write:** [QualityID](../concepts/QualityID.md) · _optional_

The quality to be shown in the bottom left corner of this sprite-button, or `nil` to show nothing.

### raise_hover_events

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this element will raise [on_gui_hover](../events/on_gui_hover.md) and [on_gui_leave](../events/on_gui_leave.md).

### read_only

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this text-box is read-only. Defaults to `false`.

### resize_to_sprite

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the sprite widget should resize according to the sprite in it. Defaults to `true`.

### right_label_caption

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The text shown for the right switch label.

### right_label_tooltip

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The tooltip shown on the right switch label.

### selectable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the contents of this text-box are selectable. Defaults to `true`.

### selected_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The selected index for this dropdown or listbox. Returns `0` if none is selected.

### selected_tab_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md) · _optional_

The selected tab index for this tabbed pane, if any.

### show_percent_for_small_numbers

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Related to the number to be shown in the bottom right corner of this sprite-button. When set to `true`, numbers that are non-zero and smaller than one are shown as a percentage rather than the value. For example, `0.5` will be shown as `50%` instead.

### slider_value

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The value of this slider element.

### slots_per_row

**Read:** [uint8](../concepts/uint8.md) · **Write:** [uint8](../concepts/uint8.md) · _optional_

### sprite

**Read:** [SpritePath](../concepts/SpritePath.md) · **Write:** [SpritePath](../concepts/SpritePath.md)

The sprite to display on this sprite-button or sprite in the default state.

### state

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Is this checkbox or radiobutton checked?

### style

**Read:** [LuaStyle](../classes/LuaStyle.md) ∣ [string](../concepts/string.md) · **Write:** [LuaStyle](../classes/LuaStyle.md) ∣ [string](../concepts/string.md)

The style of this element. When read, this evaluates to a [LuaStyle](../classes/LuaStyle.md). For writing, it only accepts a string that specifies the textual identifier (prototype name) of the desired style.

When writing, this clears all custom values set through [LuaStyle](../classes/LuaStyle.md).

### surface_index

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The surface index this camera or minimap is using.

### switch_state

**Read:** [SwitchState](../concepts/SwitchState.md) · **Write:** [SwitchState](../concepts/SwitchState.md)

The switch state for this switch.

If [LuaGuiElement::allow_none_state](../classes/LuaGuiElement.md#allow-none-state) is false this can't be set to `"none"`.

### tabs

**Read:** array[[TabAndContent](../concepts/TabAndContent.md)] · _read-only_

The tabs and contents being shown in this tabbed-pane.

### tags

**Read:** [Tags](../concepts/Tags.md) · **Write:** [Tags](../concepts/Tags.md)

The tags associated with this LuaGuiElement.

### text

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

The text contained in this textfield or text-box.

### toggled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this button is currently toggled. When a button is toggled, it will use the `selected_graphical_set` and `selected_font_color` defined in its style.

### tooltip

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

The text to display when hovering over this element. Writing `""` or `nil` will disable the tooltip.

### type

**Read:** [GuiElementType](../concepts/GuiElementType.md) · _read-only_

The type of this GUI element.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### value

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

How much this progress bar is filled. It is a value in the range `[0, 1]`.

### vertical_centering

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether the content of this table should be vertically centered. Overrides [LuaStyle::column_alignments](../classes/LuaStyle.md#column-alignments). Defaults to `true`.

### vertical_scroll_policy

**Read:** [ScrollPolicy](../concepts/ScrollPolicy.md) · **Write:** [ScrollPolicy](../concepts/ScrollPolicy.md)

Policy of the vertical scroll bar.

### visible

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Sets whether this GUI element is visible or completely hidden, taking no space in the layout.

### word_wrap

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether this text-box will word-wrap automatically. Defaults to `false`.

### zoom

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The zoom this camera or minimap is using. This value must be positive.

## Methods

| Method | Summary |
| --- | --- |
| [add](#add) | Add a new child element to this GuiElement. |
| [add_item](#add-item) | Inserts a string at the end or at the given index of this dropdown or listbox. |
| [add_tab](#add-tab) | Adds the given tab and content widgets to this tabbed pane as a new tab. |
| [bring_to_front](#bring-to-front) | Moves this GUI element to the "front" so it will draw over other elements. |
| [clear](#clear) | Remove children of this element. Any LuaGuiElement objects referring to the destroyed elements become invalid after this operation. |
| [clear_items](#clear-items) | Removes the items in this dropdown or listbox. |
| [close_dropdown](#close-dropdown) | Closes the dropdown list if this is a dropdown and it is open. |
| [destroy](#destroy) | Remove this element, along with its children. Any LuaGuiElement objects referring to the destroyed elements become invalid after this operation. |
| [focus](#focus) | Focuses this GUI element if possible. |
| [force_auto_center](#force-auto-center) | Forces this frame to re-auto-center. Only works on frames stored directly in LuaGui::screen. |
| [get_index_in_parent](#get-index-in-parent) | Gets the index that this element has in its parent element. |
| [get_item](#get-item) | Gets the item at the given index from this dropdown or listbox. |
| [get_mod](#get-mod) | The mod that owns this Gui element or `nil` if it's owned by the scenario script. |
| [get_slider_discrete_values](#get-slider-discrete-values) | Returns whether this slider only allows discrete values. |
| [get_slider_maximum](#get-slider-maximum) | Gets this sliders maximum value. |
| [get_slider_minimum](#get-slider-minimum) | Gets this sliders minimum value. |
| [get_slider_value_step](#get-slider-value-step) | Gets the minimum distance this slider can move. |
| [remove_item](#remove-item) | Removes the item at the given index from this dropdown or listbox. |
| [remove_tab](#remove-tab) | Removes the given tab and its associated content from this tabbed pane. |
| [scroll_to_bottom](#scroll-to-bottom) | Scrolls this scroll bar to the bottom. |
| [scroll_to_element](#scroll-to-element) | Scrolls this scroll bar such that the specified GUI element is visible to the player. |
| [scroll_to_item](#scroll-to-item) | Scrolls the scroll bar such that the specified listbox item is visible to the player. |
| [scroll_to_left](#scroll-to-left) | Scrolls this scroll bar to the left. |
| [scroll_to_right](#scroll-to-right) | Scrolls this scroll bar to the right. |
| [scroll_to_top](#scroll-to-top) | Scrolls this scroll bar to the top. |
| [select](#select) | Selects a range of text in this textbox. |
| [select_all](#select-all) | Selects all the text in this textbox. |
| [set_item](#set-item) | Sets the given string at the given index in this dropdown or listbox. |
| [set_slider_discrete_values](#set-slider-discrete-values) | Sets whether this slider only allows discrete values. |
| [set_slider_minimum_maximum](#set-slider-minimum-maximum) | Sets this sliders minimum and maximum values. The minimum can't be >= the maximum. |
| [set_slider_value_step](#set-slider-value-step) | Sets the minimum distance this slider can move. The minimum distance can't be > (max - min). |
| [swap_children](#swap-children) | Swaps the children at the given indices in this element. |

### add

`add({anchor, caption, elem_tooltip, enabled, game_controller_interaction, ignored_by_interaction, index, locked, name, raise_hover_events, style, tags, tooltip, type, visible})`

Add a new child element to this GuiElement.

#### Parameters

##### anchor

**Type:** [GuiAnchor](../concepts/GuiAnchor.md) · _optional_

Where to position the child element when in the `relative` element.

##### caption

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

Text displayed on the child element. For frames, this is their title. For other elements, like buttons or labels, this is the content. Whilst this attribute may be used on all elements, it doesn't make sense for tables and flows as they won't display it.

##### elem_tooltip

**Type:** [ElemID](../concepts/ElemID.md) · _optional_

Elem tooltip of the child element. Will be displayed above `tooltip`.

##### enabled

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the child element is enabled. Defaults to `true`.

##### game_controller_interaction

**Type:** [defines.game_controller_interaction](../defines/defines.md) · _optional_

How the element should interact with game controllers. Defaults to [defines.game_controller_interaction.normal](../defines/defines.md).

##### ignored_by_interaction

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the child element is ignored by interaction. Defaults to `false`.

##### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

Location in its parent that the child element should slot into. By default, the child will be appended onto the end.

##### locked

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the child element is locked. Defaults to `false`.

##### name

**Type:** [string](../concepts/string.md) · _optional_

Name of the child element. It must be unique within the parent element.

##### raise_hover_events

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether this element will raise [on_gui_hover](../events/on_gui_hover.md) and [on_gui_leave](../events/on_gui_leave.md). Defaults to `false`.

##### style

**Type:** [string](../concepts/string.md) · _optional_

The name of the style prototype to apply to the new element.

##### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

[Tags](../concepts/Tags.md) associated with the child element.

##### tooltip

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

Tooltip of the child element.

##### type

**Type:** [GuiElementType](../concepts/GuiElementType.md)

The kind of element to add, which potentially has its own attributes as listed below.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the child element is visible. Defaults to `true`.

#### Variant parameter groups

Other attributes may be specified depending on `type`:

##### button

###### auto_toggle

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the button will automatically toggle when clicked. Defaults to `false`.

###### mouse_button_filter

**Type:** [MouseButtonFlags](../concepts/MouseButtonFlags.md) · _optional_

Which mouse buttons the button responds to. Defaults to `"left-and-right"`.

###### toggled

**Type:** [boolean](../concepts/boolean.md) · _optional_

The initial toggled state of the button. Defaults to `false`.

##### camera

###### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position the camera centers on.

###### surface_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The surface that the camera will render. Defaults to the player's current surface.

###### zoom

**Type:** [double](../concepts/double.md) · _optional_

The initial camera zoom. Defaults to `0.75`.

##### checkbox

###### state

**Type:** [boolean](../concepts/boolean.md)

The initial checked-state of the checkbox.

##### choose-elem-button

###### achievement

**Type:** [string](../concepts/string.md) · _optional_

If type is `"achievement"` - the default value for the button.

###### asteroid-chunk

**Type:** [string](../concepts/string.md) · _optional_

If type is `"asteroid-chunk"` - the default value for the button.

###### decorative

**Type:** [string](../concepts/string.md) · _optional_

If type is `"decorative"` - the default value for the button.

###### elem_filters

**Type:** [PrototypeFilter](../concepts/PrototypeFilter.md) · _optional_

Filters describing what to show in the selection window. The applicable filter depends on the `elem_type`.

###### elem_type

**Type:** [ElemType](../concepts/ElemType.md)

The type of the button.

###### entity

**Type:** [string](../concepts/string.md) · _optional_

If type is `"entity"` - the default value for the button.

###### entity-with-quality

**Type:** [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) · _optional_

If type is `"entity-with-quality"` - the default value for the button.

###### equipment

**Type:** [string](../concepts/string.md) · _optional_

If type is `"equipment"` - the default value for the button.

###### equipment-with-quality

**Type:** [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) · _optional_

If type is `"equipment-with-quality"` - the default value for the button.

###### fluid

**Type:** [string](../concepts/string.md) · _optional_

If type is `"fluid"` - the default value for the button.

###### item

**Type:** [string](../concepts/string.md) · _optional_

If type is `"item"` - the default value for the button.

###### item-group

**Type:** [string](../concepts/string.md) · _optional_

If type is `"item-group"` - the default value for the button.

###### item-with-quality

**Type:** [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) · _optional_

If type is `"item-with-quality"` - the default value for the button.

###### recipe

**Type:** [string](../concepts/string.md) · _optional_

If type is `"recipe"` - the default value for the button.

###### recipe-with-quality

**Type:** [PrototypeWithQuality](../concepts/PrototypeWithQuality.md) · _optional_

If type is `"recipe-with-quality"` - the default value for the button.

###### signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

If type is `"signal"` - the default value for the button.

###### space-location

**Type:** [string](../concepts/string.md) · _optional_

If type is `"space-location"` - the default value for the button.

###### technology

**Type:** [string](../concepts/string.md) · _optional_

If type is `"technology"` - the default value for the button.

###### tile

**Type:** [string](../concepts/string.md) · _optional_

If type is `"tile"` - the default value for the button.

##### drop-down

###### items

**Type:** array[[LocalisedString](../concepts/LocalisedString.md)] · _optional_

The initial items in the dropdown.

###### selected_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the initially selected item. Defaults to 0.

##### flow

###### direction

**Type:** [GuiDirection](../concepts/GuiDirection.md) · _optional_

The initial direction of the flow's layout. Defaults to `"horizontal"`.

##### frame

###### direction

**Type:** [GuiDirection](../concepts/GuiDirection.md) · _optional_

The initial direction of the frame's layout. Defaults to `"horizontal"`.

##### inventory

###### empty_slot_info

**Type:** [EmptySlotInfo](../concepts/EmptySlotInfo.md) · _optional_

###### handle_cursor_split

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### handle_cursor_transfer

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### handle_open_item

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### handle_open_mod_item

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### handle_send_stack_to_trash

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### handle_send_stacks_to_trash

**Type:** [boolean](../concepts/boolean.md) · _optional_

###### slots_per_row

**Type:** [uint8](../concepts/uint8.md) · _optional_

##### line

###### direction

**Type:** [GuiDirection](../concepts/GuiDirection.md) · _optional_

The initial direction of the line. Defaults to `"horizontal"`.

##### list-box

###### items

**Type:** array[[LocalisedString](../concepts/LocalisedString.md)] · _optional_

The initial items in the listbox.

###### selected_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index of the initially selected item. Defaults to 0.

##### minimap

###### chart_player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player index the map should use. Defaults to the current player.

###### force

**Type:** [string](../concepts/string.md) · _optional_

The force this minimap should use. Defaults to the player's current force.

###### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

The position the minimap centers on. Defaults to the player's current position.

###### surface_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The surface the camera will render. Defaults to the player's current surface.

###### zoom

**Type:** [double](../concepts/double.md) · _optional_

The initial camera zoom. Defaults to `0.75`.

##### progressbar

###### value

**Type:** [double](../concepts/double.md) · _optional_

The initial value of the progressbar, in the range `[0, 1]`. Defaults to `0`.

##### radiobutton

###### state

**Type:** [boolean](../concepts/boolean.md)

The initial checked-state of the radiobutton.

##### scroll-pane

###### horizontal_scroll_policy

**Type:** [ScrollPolicy](../concepts/ScrollPolicy.md) · _optional_

Policy of the horizontal scroll bar. Defaults to `"auto"`.

###### vertical_scroll_policy

**Type:** [ScrollPolicy](../concepts/ScrollPolicy.md) · _optional_

Policy of the vertical scroll bar. Defaults to `"auto"`.

##### slider

###### discrete_values

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

###### maximum_value

**Type:** [double](../concepts/double.md) · _optional_

The maximum value for the slider. Defaults to `30`.

###### minimum_value

**Type:** [double](../concepts/double.md) · _optional_

The minimum value for the slider. Defaults to `0`.

###### value

**Type:** [double](../concepts/double.md) · _optional_

The initial value for the slider. Defaults to `minimum_value`.

###### value_step

**Type:** [double](../concepts/double.md) · _optional_

The minimum value the slider can move. Defaults to `1`.

##### sprite

###### resize_to_sprite

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the widget should resize according to the sprite in it. Defaults to `true`.

###### sprite

**Type:** [SpritePath](../concepts/SpritePath.md) · _optional_

Path to the image to display.

##### sprite-button

###### auto_toggle

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the button will automatically toggle when clicked. Defaults to `false`.

###### clicked_sprite

**Type:** [SpritePath](../concepts/SpritePath.md) · _optional_

Path to the image to display on the button when it is clicked.

###### hovered_sprite

**Type:** [SpritePath](../concepts/SpritePath.md) · _optional_

Path to the image to display on the button when it is hovered.

###### mouse_button_filter

**Type:** [MouseButtonFlags](../concepts/MouseButtonFlags.md) · _optional_

The mouse buttons that the button responds to. Defaults to `"left-and-right"`.

###### number

**Type:** [double](../concepts/double.md) · _optional_

The number shown on the button.

###### quality

**Type:** [string](../concepts/string.md) · _optional_

The name of the quality shown on the button.

###### show_percent_for_small_numbers

**Type:** [boolean](../concepts/boolean.md) · _optional_

Formats small numbers as percentages. Defaults to `false`.

###### sprite

**Type:** [SpritePath](../concepts/SpritePath.md) · _optional_

Path to the image to display on the button.

###### toggled

**Type:** [boolean](../concepts/boolean.md) · _optional_

The initial toggled state of the button. Defaults to `false`.

##### switch

###### allow_none_state

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the switch can be set to a middle state. Defaults to `false`.

###### left_label_caption

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

###### left_label_tooltip

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

###### right_label_caption

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

###### right_label_tooltip

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

###### switch_state

**Type:** [SwitchState](../concepts/SwitchState.md) · _optional_

If set to "none", `allow_none_state` must be `true`. Defaults to `"left"`.

##### tab

###### badge_text

**Type:** [LocalisedString](../concepts/LocalisedString.md) · _optional_

The text to display after the normal tab text (designed to work with numbers).

##### table

###### column_count

**Type:** [uint32](../concepts/uint32.md)

Number of columns. This can't be changed after the table is created.

###### draw_horizontal_line_after_headers

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the table should draw a single horizontal grid line after the headers. Defaults to `false`.

###### draw_horizontal_lines

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the table should draw horizontal grid lines. Defaults to `false`.

###### draw_vertical_lines

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the table should draw vertical grid lines. Defaults to `false`.

###### vertical_centering

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether the content of the table should be vertically centered. Defaults to `true`.

##### text-box

###### icon_selector

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to add the rich text icon selector to the text box. This attribute can't be changed after creating the widget. Defaults to `false`.

###### text

**Type:** [string](../concepts/string.md) · _optional_

The initial text contained in the text-box.

##### textfield

###### allow_decimal

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### allow_negative

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### icon_selector

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to add the rich text icon selector to the text field. This attribute can't be changed after creating the widget. Defaults to `false`.

###### is_password

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### lose_focus_on_confirm

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### numeric

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

###### text

**Type:** [string](../concepts/string.md) · _optional_

The initial text contained in the textfield.

#### Return values

- [LuaGuiElement](../classes/LuaGuiElement.md) — The GUI element that was added.

### add_item

`add_item(index, string)`

Inserts a string at the end or at the given index of this dropdown or listbox.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The index at which to insert the item.

##### string

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The text to insert.

### add_tab

`add_tab(content, tab)`

Adds the given tab and content widgets to this tabbed pane as a new tab.

#### Parameters

##### content

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The content to show when this tab is selected. Can be any type of GUI element.

##### tab

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The tab to add, must be a GUI element of type "tab".

### bring_to_front

`bring_to_front()`

Moves this GUI element to the "front" so it will draw over other elements.

Only works for elements in [LuaGui::screen](../classes/LuaGui.md#screen).

### clear

`clear()`

Remove children of this element. Any [LuaGuiElement](../classes/LuaGuiElement.md) objects referring to the destroyed elements become invalid after this operation.

**Example:**

```
game.player.gui.top.clear()
```

### clear_items

`clear_items()`

Removes the items in this dropdown or listbox.

### close_dropdown

`close_dropdown()`

Closes the dropdown list if this is a dropdown and it is open.

### destroy

`destroy()`

Remove this element, along with its children. Any [LuaGuiElement](../classes/LuaGuiElement.md) objects referring to the destroyed elements become invalid after this operation.

The top-level GUI elements - [LuaGui::top](../classes/LuaGui.md#top), [LuaGui::left](../classes/LuaGui.md#left), [LuaGui::center](../classes/LuaGui.md#center) and [LuaGui::screen](../classes/LuaGui.md#screen) - can't be destroyed.

**Example:**

```
game.player.gui.top.greeting.destroy()
```

### focus

`focus()`

Focuses this GUI element if possible.

### force_auto_center

`force_auto_center()`

Forces this frame to re-auto-center. Only works on frames stored directly in [LuaGui::screen](../classes/LuaGui.md#screen).

#### Raises

- `on_gui_location_changed` — 

### get_index_in_parent

`get_index_in_parent()`

Gets the index that this element has in its parent element.

This iterates through the children of the parent of this element, meaning this has a non-free cost to get, but is faster than doing the equivalent in Lua.

#### Return values

- [uint32](../concepts/uint32.md)

### get_item

`get_item(index)`

Gets the item at the given index from this dropdown or listbox.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index to get

#### Return values

- [LocalisedString](../concepts/LocalisedString.md)

### get_mod

`get_mod()`

The mod that owns this Gui element or `nil` if it's owned by the scenario script.

This has a not-super-expensive, but non-free cost to get.

#### Return values

- [string](../concepts/string.md) _(optional)_

### get_slider_discrete_values

`get_slider_discrete_values()`

Returns whether this slider only allows discrete values.

#### Return values

- [boolean](../concepts/boolean.md)

### get_slider_maximum

`get_slider_maximum()`

Gets this sliders maximum value.

#### Return values

- [double](../concepts/double.md)

### get_slider_minimum

`get_slider_minimum()`

Gets this sliders minimum value.

#### Return values

- [double](../concepts/double.md)

### get_slider_value_step

`get_slider_value_step()`

Gets the minimum distance this slider can move.

#### Return values

- [double](../concepts/double.md)

### remove_item

`remove_item(index)`

Removes the item at the given index from this dropdown or listbox.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index

### remove_tab

`remove_tab(tab)`

Removes the given tab and its associated content from this tabbed pane.

Removing a tab does not destroy the tab or the tab contents. It just removes them from the view.

#### Parameters

##### tab

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md) · _optional_

The tab to remove or `nil` to remove all tabs.

### scroll_to_bottom

`scroll_to_bottom()`

Scrolls this scroll bar to the bottom.

### scroll_to_element

`scroll_to_element(element, scroll_mode)`

Scrolls this scroll bar such that the specified GUI element is visible to the player.

#### Parameters

##### element

**Type:** [LuaGuiElement](../classes/LuaGuiElement.md)

The element to scroll to.

##### scroll_mode

**Type:** `"in-view"` ∣ `"top-third"` · _optional_

Where the element should be positioned in the scroll-pane. Defaults to `"in-view"`.

### scroll_to_item

`scroll_to_item(index, scroll_mode)`

Scrolls the scroll bar such that the specified listbox item is visible to the player.

#### Parameters

##### index

**Type:** [int32](../concepts/int32.md)

The item index to scroll to.

##### scroll_mode

**Type:** `"in-view"` ∣ `"top-third"` · _optional_

Where the item should be positioned in the list-box. Defaults to `"in-view"`.

### scroll_to_left

`scroll_to_left()`

Scrolls this scroll bar to the left.

### scroll_to_right

`scroll_to_right()`

Scrolls this scroll bar to the right.

### scroll_to_top

`scroll_to_top()`

Scrolls this scroll bar to the top.

### select

`select(end_index, start_index)`

Selects a range of text in this textbox.

#### Parameters

##### end_index

**Type:** [int32](../concepts/int32.md)

The index of the last character to select

##### start_index

**Type:** [int32](../concepts/int32.md)

The index of the first character to select

**Examples:**

```
-- Select the characters "amp" from "example":
textbox.select(3, 5)
```

```
-- Move the cursor to the start of the text box:
textbox.select(1, 0)
```

### select_all

`select_all()`

Selects all the text in this textbox.

### set_item

`set_item(index, string)`

Sets the given string at the given index in this dropdown or listbox.

#### Parameters

##### index

**Type:** [uint32](../concepts/uint32.md)

The index whose text to replace.

##### string

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The text to set at the given index.

### set_slider_discrete_values

`set_slider_discrete_values(value)`

Sets whether this slider only allows discrete values.

#### Parameters

##### value

**Type:** [boolean](../concepts/boolean.md)

### set_slider_minimum_maximum

`set_slider_minimum_maximum(maximum, minimum)`

Sets this sliders minimum and maximum values. The minimum can't be >= the maximum.

#### Parameters

##### maximum

**Type:** [double](../concepts/double.md)

##### minimum

**Type:** [double](../concepts/double.md)

### set_slider_value_step

`set_slider_value_step(value)`

Sets the minimum distance this slider can move. The minimum distance can't be > (max - min).

#### Parameters

##### value

**Type:** [double](../concepts/double.md)

### swap_children

`swap_children(index_1, index_2)`

Swaps the children at the given indices in this element.

#### Parameters

##### index_1

**Type:** [uint32](../concepts/uint32.md)

The index of the first child.

##### index_2

**Type:** [uint32](../concepts/uint32.md)

The index of the second child.

## Operators

### index

`index()`

The indexing operator. Gets children by name.
