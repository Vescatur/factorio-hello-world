# SelectionModeData

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [border_color](#border-color) | [Color](../types/Color.md) |  |
| [chart_color](#chart-color) | [Color](../types/Color.md) | yes |
| [count_button_color](#count-button-color) | [Color](../types/Color.md) | yes |
| [cursor_box_type](#cursor-box-type) | [CursorBoxType](../types/CursorBoxType.md) |  |
| [ended_sound](#ended-sound) | [Sound](../types/Sound.md) | yes |
| [entity_filter_mode](#entity-filter-mode) | `"whitelist"` ∣ `"blacklist"` | yes |
| [entity_filters](#entity-filters) | array[[EntityID](../types/EntityID.md)] | yes |
| [entity_type_filters](#entity-type-filters) | array[[string](../types/string.md)] | yes |
| [ignore_cannot_select_entities](#ignore-cannot-select-entities) | [boolean](../types/boolean.md) | yes |
| [ignore_cannot_select_tiles](#ignore-cannot-select-tiles) | [boolean](../types/boolean.md) | yes |
| [mode](#mode) | [SelectionModeFlags](../types/SelectionModeFlags.md) |  |
| [play_ended_sound_when_nothing_selected](#play-ended-sound-when-nothing-selected) | [boolean](../types/boolean.md) | yes |
| [started_sound](#started-sound) | [Sound](../types/Sound.md) | yes |
| [tile_filter_mode](#tile-filter-mode) | `"whitelist"` ∣ `"blacklist"` | yes |
| [tile_filters](#tile-filters) | array[[TileID](../types/TileID.md)] | yes |

### border_color

**Type:** [Color](../types/Color.md)

### chart_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of border_color`

### count_button_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Value of border_color`

### cursor_box_type

**Type:** [CursorBoxType](../types/CursorBoxType.md)

### ended_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### entity_filter_mode

**Type:** `"whitelist"` ∣ `"blacklist"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'whitelist'}`

### entity_filters

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

### entity_type_filters

**Type:** array[[string](../types/string.md)] · _optional_

### ignore_cannot_select_entities

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is `false`, using any of the mode flags `"blueprint"`, `"deconstruct"`, `"cancel-deconstruct"`, `"upgrade"`, `"cancel-upgrade"` or `"downgrade"` without also specifying another flag that selects entities will result in an error, because the selection tool cannot select any entities and this is likely undesired behavior.

Setting this to `true` disables this error.

### ignore_cannot_select_tiles

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is `false`, using any of the mode flags `"blueprint"` or `"deconstruct"` without also specifying any flag that selects tiles will result in an error, because the selection tool cannot select any tiles and this is likely undesired behavior.

Setting this to `true` disables this error.

### mode

**Type:** [SelectionModeFlags](../types/SelectionModeFlags.md)

### play_ended_sound_when_nothing_selected

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### started_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### tile_filter_mode

**Type:** `"whitelist"` ∣ `"blacklist"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'whitelist'}`

### tile_filters

**Type:** array[[TileID](../types/TileID.md)] · _optional_
