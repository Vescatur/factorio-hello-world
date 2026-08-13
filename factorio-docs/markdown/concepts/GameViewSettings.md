# GameViewSettings

_concept_

Parameters that affect the look and control of the game. Updating any of the member attributes here will immediately take effect in the game engine.

**Definition:** LuaStruct{hide_tall_entities, show_alert_gui, show_controller_gui, show_crafting_queue, show_entity_info, show_entity_tooltip, show_hotkey_suggestions, show_map_view_options, show_minimap, show_pins_gui, show_quickbar, show_rail_block_visualisation, show_research_info, show_shortcut_bar, show_side_menu, show_surface_list, show_tool_bar, update_entity_selection}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [hide_tall_entities](#hide-tall-entities) | [boolean](../concepts/boolean.md) |  |
| [show_alert_gui](#show-alert-gui) | [boolean](../concepts/boolean.md) |  |
| [show_controller_gui](#show-controller-gui) | [boolean](../concepts/boolean.md) |  |
| [show_crafting_queue](#show-crafting-queue) | [boolean](../concepts/boolean.md) |  |
| [show_entity_info](#show-entity-info) | [boolean](../concepts/boolean.md) |  |
| [show_entity_tooltip](#show-entity-tooltip) | [boolean](../concepts/boolean.md) |  |
| [show_hotkey_suggestions](#show-hotkey-suggestions) | [boolean](../concepts/boolean.md) |  |
| [show_map_view_options](#show-map-view-options) | [boolean](../concepts/boolean.md) |  |
| [show_minimap](#show-minimap) | [boolean](../concepts/boolean.md) |  |
| [show_pins_gui](#show-pins-gui) | [boolean](../concepts/boolean.md) |  |
| [show_quickbar](#show-quickbar) | [boolean](../concepts/boolean.md) |  |
| [show_rail_block_visualisation](#show-rail-block-visualisation) | [boolean](../concepts/boolean.md) |  |
| [show_research_info](#show-research-info) | [boolean](../concepts/boolean.md) |  |
| [show_shortcut_bar](#show-shortcut-bar) | [boolean](../concepts/boolean.md) |  |
| [show_side_menu](#show-side-menu) | [boolean](../concepts/boolean.md) |  |
| [show_surface_list](#show-surface-list) | [boolean](../concepts/boolean.md) |  |
| [show_tool_bar](#show-tool-bar) | [boolean](../concepts/boolean.md) |  |
| [update_entity_selection](#update-entity-selection) | [boolean](../concepts/boolean.md) |  |

### hide_tall_entities

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Makes tall entities translucent and unselectable.

### show_alert_gui

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Show the flashing alert icons next to the player's toolbar.

### show_controller_gui

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Show the controller GUI elements. This includes the toolbar, the selected tool slot, the armour slot, and the gun and ammunition slots.

### show_crafting_queue

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the crafting queue.

### show_entity_info

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Show overlay icons on entities. Also known as "alt-mode".

### show_entity_tooltip

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the tooltip that is displayed when selecting an entity.

### show_hotkey_suggestions

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the mouse and keyboard/controller button hints in the bottom left corner if they are enabled in the interface settings.

### show_map_view_options

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the view options when map is opened.

### show_minimap

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Show the chart in the upper right-hand corner of the screen.

### show_pins_gui

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the pins GUI on the right side of the screen.

### show_quickbar

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides quickbar of shortcuts.

### show_rail_block_visualisation

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When `true` (`false` is default), the rails will always show the rail block visualisation.

### show_research_info

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Show research progress and name in the upper right-hand corner of the screen.

### show_shortcut_bar

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the shortcut bar.

### show_side_menu

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the buttons row.

### show_surface_list

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the surface list while in Remote View.

### show_tool_bar

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Shows or hides the tool window with the weapons and armor.

### update_entity_selection

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When `true` (the default), mousing over an entity will select it. Otherwise, moving the mouse won't update entity selection.
