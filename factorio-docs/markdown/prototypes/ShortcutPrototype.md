# ShortcutPrototype

_prototype_

**Prototype type string:** `type = "shortcut"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Definition for a shortcut button in the [shortcut bar](https://wiki.factorio.com/Shortcut_bar).

This is **not** a custom keybinding (keyboard shortcut), for that see [CustomInputPrototype](../prototypes/CustomInputPrototype.md).

**Example:**

```
{
  type = "shortcut",
  name = "give-deconstruction-planner",
  order = "b[blueprints]-i[deconstruction-planner]",
  action = "spawn-item",
  localised_name = {"shortcut.make-deconstruction-planner"},
  associated_control_input = "give-deconstruction-planner",
  technology_to_unlock = "construction-robotics",
  item_to_spawn = "deconstruction-planner",
  style = "red",
  icon = "__base__/graphics/icons/shortcut-toolbar/mip/new-deconstruction-planner-x56.png",
  icon_size = 56,
  small_icon = "__base__/graphics/icons/shortcut-toolbar/mip/new-deconstruction-planner-x24.png",
  small_icon_size = 24
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | `"toggle-alt-mode"` ∣ `"undo"` ∣ `"redo"` ∣ `"paste"` ∣ `"import-string"` ∣ `"toggle-personal-roboport"` ∣ `"toggle-personal-logistic-requests"` ∣ `"toggle-equipment-movement-bonus"` ∣ `"spawn-item"` ∣ `"lua"` |  |
| [associated_control_input](#associated-control-input) | [string](../types/string.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [item_to_spawn](#item-to-spawn) | [ItemID](../types/ItemID.md) | yes |
| [order](#order) | [Order](../types/Order.md) | yes |
| [small_icon](#small-icon) | [FileName](../types/FileName.md) | yes |
| [small_icon_size](#small-icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [small_icons](#small-icons) | array[[IconData](../types/IconData.md)] | yes |
| [style](#style) | `"default"` ∣ `"blue"` ∣ `"red"` ∣ `"green"` | yes |
| [technology_to_unlock](#technology-to-unlock) | [TechnologyID](../types/TechnologyID.md) | yes |
| [toggleable](#toggleable) | [boolean](../types/boolean.md) | yes |
| [unavailable_until_unlocked](#unavailable-until-unlocked) | [boolean](../types/boolean.md) | yes |

### action

**Type:** `"toggle-alt-mode"` ∣ `"undo"` ∣ `"redo"` ∣ `"paste"` ∣ `"import-string"` ∣ `"toggle-personal-roboport"` ∣ `"toggle-personal-logistic-requests"` ∣ `"toggle-equipment-movement-bonus"` ∣ `"spawn-item"` ∣ `"lua"`

If this is `"lua"`, [on_lua_shortcut](../events/on_lua_shortcut.md) is raised when the shortcut is clicked.

### associated_control_input

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Name of a custom input or vanilla control. This is **only** used to show the keybind in the tooltip of the shortcut.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

The base game uses 32px icons for shortcuts.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### item_to_spawn

**Type:** [ItemID](../types/ItemID.md) · _optional_

The item to create when clicking on a shortcut with the action set to `"spawn-item"`. The item must have the [spawnable](../types/ItemPrototypeFlags.md#spawnable) flag set.

### order

**Type:** [Order](../types/Order.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Used to order the shortcuts in the [quick panel](https://wiki.factorio.com/Quick_panel), which replaces the shortcut bar when using a controller (game pad). It [is recommended](https://forums.factorio.com/106661) to order modded shortcuts after the vanilla shortcuts.

### small_icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file. Used in the shortcut selection popup.

Only loaded, and mandatory if `small_icons` is not defined.

### small_icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the small icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

The base game uses 24px small icons for shortcuts.

Only loaded if `small_icons` is not defined.

### small_icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### style

**Type:** `"default"` ∣ `"blue"` ∣ `"red"` ∣ `"green"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'default'}`

### technology_to_unlock

**Type:** [TechnologyID](../types/TechnologyID.md) · _optional_

The technology that must be researched before this shortcut can be used. Once a shortcut is unlocked in one save file, it is unlocked for all future save files.

### toggleable

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Must be enabled for the Factorio API to be able to set the toggled state on the shortcut button, see [LuaPlayer::set_shortcut_toggled](../classes/LuaPlayer.md#set-shortcut-toggled).

### unavailable_until_unlocked

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the shortcut will not be available until its `technology_to_unlock` is researched, even if it was already researched in a different game.
