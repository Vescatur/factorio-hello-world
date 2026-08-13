# SelectionToolPrototype

_prototype_

**Prototype type string:** `type = "selection-tool"`

**Inherits from:** [ItemWithLabelPrototype](../prototypes/ItemWithLabelPrototype.md)

Used in the base game as a base for the blueprint item and the deconstruction item.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alt_reverse_select](#alt-reverse-select) | [SelectionModeData](../types/SelectionModeData.md) | yes |
| [alt_select](#alt-select) | [SelectionModeData](../types/SelectionModeData.md) |  |
| [always_include_tiles](#always-include-tiles) | [boolean](../types/boolean.md) | yes |
| [mouse_cursor](#mouse-cursor) | [MouseCursorID](../types/MouseCursorID.md) | yes |
| [reverse_select](#reverse-select) | [SelectionModeData](../types/SelectionModeData.md) | yes |
| [select](#select) | [SelectionModeData](../types/SelectionModeData.md) |  |
| [skip_fog_of_war](#skip-fog-of-war) | [boolean](../types/boolean.md) | yes |
| [super_forced_select](#super-forced-select) | [SelectionModeData](../types/SelectionModeData.md) | yes |

### alt_reverse_select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _optional_

Settings for how the selection tool alt-reverse-selects things in-game (using SHIFT + Right mouse button).

### alt_select

**Type:** [SelectionModeData](../types/SelectionModeData.md)

### always_include_tiles

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If tiles should be included in the selection regardless of entities also being in the selection. This is a visual only setting.

### mouse_cursor

**Type:** [MouseCursorID](../types/MouseCursorID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'selection-tool-cursor'}`

### reverse_select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _optional_

### select

**Type:** [SelectionModeData](../types/SelectionModeData.md)

### skip_fog_of_war

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### super_forced_select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _optional_
