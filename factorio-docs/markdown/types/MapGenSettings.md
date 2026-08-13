# MapGenSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [autoplace_controls](#autoplace-controls) | dictionary[[AutoplaceControlID](../types/AutoplaceControlID.md) → [FrequencySizeRichness](../types/FrequencySizeRichness.md)] | yes |
| [autoplace_settings](#autoplace-settings) | dictionary[`"entity"` ∣ `"tile"` ∣ `"decorative"` → [AutoplaceSettings](../types/AutoplaceSettings.md)] | yes |
| [cliff_settings](#cliff-settings) | [CliffPlacementSettings](../types/CliffPlacementSettings.md) | yes |
| [default_enable_all_autoplace_controls](#default-enable-all-autoplace-controls) | [boolean](../types/boolean.md) | yes |
| [height](#height) | [uint32](../types/uint32.md) | yes |
| [no_enemies_mode](#no-enemies-mode) | [boolean](../types/boolean.md) | yes |
| [peaceful_mode](#peaceful-mode) | [boolean](../types/boolean.md) | yes |
| [property_expression_names](#property-expression-names) | dictionary[[string](../types/string.md) → [string](../types/string.md) ∣ [boolean](../types/boolean.md) ∣ [double](../types/double.md)] | yes |
| [seed](#seed) | [uint32](../types/uint32.md) | yes |
| [starting_area](#starting-area) | [MapGenSize](../types/MapGenSize.md) | yes |
| [starting_points](#starting-points) | array[[MapPosition](../types/MapPosition.md)] | yes |
| [territory_settings](#territory-settings) | [TerritorySettings](../types/TerritorySettings.md) | yes |
| [width](#width) | [uint32](../types/uint32.md) | yes |

### autoplace_controls

**Type:** dictionary[[AutoplaceControlID](../types/AutoplaceControlID.md) → [FrequencySizeRichness](../types/FrequencySizeRichness.md)] · _optional_

### autoplace_settings

**Type:** dictionary[`"entity"` ∣ `"tile"` ∣ `"decorative"` → [AutoplaceSettings](../types/AutoplaceSettings.md)] · _optional_

Each setting in this table maps the string type to the settings for that type.

### cliff_settings

**Type:** [CliffPlacementSettings](../types/CliffPlacementSettings.md) · _optional_

### default_enable_all_autoplace_controls

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether undefined `autoplace_controls` should fall back to the default controls or not.

### height

**Type:** [uint32](../types/uint32.md) · _optional_

Height of the map in tiles. Silently limited to 2 000 000, ie. +/- 1 million tiles from the center in both directions.

### no_enemies_mode

**Type:** [boolean](../types/boolean.md) · _optional_

If true, enemy creatures will not naturally spawn from spawners, map gen, or trigger effects.

### peaceful_mode

**Type:** [boolean](../types/boolean.md) · _optional_

If true, enemy creatures will not attack unless the player first attacks them.

### property_expression_names

**Type:** dictionary[[string](../types/string.md) → [string](../types/string.md) ∣ [boolean](../types/boolean.md) ∣ [double](../types/double.md)] · _optional_

Map of property name (`"elevation"`, etc) to name of noise expression that will provide it. Entries may be omitted. A notable usage is changing autoplace behavior of an entity based on the preset, which cannot be read from a noise expression.

### seed

**Type:** [uint32](../types/uint32.md) · _optional_

Read by the game, but not used or set in the GUI.

### starting_area

**Type:** [MapGenSize](../types/MapGenSize.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Size of the starting area. The starting area only effects enemy placement, and has no effect on resources.

### starting_points

**Type:** array[[MapPosition](../types/MapPosition.md)] · _optional_

Array of the positions of the starting areas.

### territory_settings

**Type:** [TerritorySettings](../types/TerritorySettings.md) · _optional_

### width

**Type:** [uint32](../types/uint32.md) · _optional_

Width of the map in tiles. Silently limited to 2 000 000, ie. +/- 1 million tiles from the center in both directions.
