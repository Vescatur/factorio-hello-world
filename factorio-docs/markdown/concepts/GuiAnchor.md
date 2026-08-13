# GuiAnchor

_concept_

**Definition:** table{ghost_mode, gui, name, names, position, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [ghost_mode](#ghost-mode) | `"both"` ∣ `"only_ghosts"` ∣ `"only_real"` | yes |
| [gui](#gui) | [defines.relative_gui_type](../defines/defines.md) |  |
| [name](#name) | [string](../concepts/string.md) | yes |
| [names](#names) | array[[string](../concepts/string.md)] | yes |
| [position](#position) | [defines.relative_gui_position](../defines/defines.md) |  |
| [type](#type) | [string](../concepts/string.md) | yes |

### ghost_mode

**Type:** `"both"` ∣ `"only_ghosts"` ∣ `"only_real"` · _optional_

Defaults to `"only_real"`.

### gui

**Type:** [defines.relative_gui_type](../defines/defines.md)

### name

**Type:** [string](../concepts/string.md) · _optional_

If provided, only anchors the GUI element when the opened thing matches the name. `name` takes precedence over `names`.

### names

**Type:** array[[string](../concepts/string.md)] · _optional_

If provided, only anchors the GUI element when the opened thing matches one of the names. When reading an anchor, `names` is always populated.

### position

**Type:** [defines.relative_gui_position](../defines/defines.md)

### type

**Type:** [string](../concepts/string.md) · _optional_

If provided, only anchors the GUI element when the opened things type matches the type.
