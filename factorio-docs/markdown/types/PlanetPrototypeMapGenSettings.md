# PlanetPrototypeMapGenSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [autoplace_controls](#autoplace-controls) | dictionary[[AutoplaceControlID](../types/AutoplaceControlID.md) → [FrequencySizeRichness](../types/FrequencySizeRichness.md)] | yes |
| [autoplace_settings](#autoplace-settings) | dictionary[`"entity"` ∣ `"tile"` ∣ `"decorative"` → [AutoplaceSettings](../types/AutoplaceSettings.md)] | yes |
| [aux_climate_control](#aux-climate-control) | [boolean](../types/boolean.md) | yes |
| [cliff_settings](#cliff-settings) | [CliffPlacementSettings](../types/CliffPlacementSettings.md) | yes |
| [moisture_climate_control](#moisture-climate-control) | [boolean](../types/boolean.md) | yes |
| [property_expression_names](#property-expression-names) | dictionary[[string](../types/string.md) → [string](../types/string.md) ∣ [boolean](../types/boolean.md) ∣ [double](../types/double.md)] | yes |
| [territory_settings](#territory-settings) | [TerritorySettings](../types/TerritorySettings.md) | yes |

### autoplace_controls

**Type:** dictionary[[AutoplaceControlID](../types/AutoplaceControlID.md) → [FrequencySizeRichness](../types/FrequencySizeRichness.md)] · _optional_

### autoplace_settings

**Type:** dictionary[`"entity"` ∣ `"tile"` ∣ `"decorative"` → [AutoplaceSettings](../types/AutoplaceSettings.md)] · _optional_

Each setting in this table maps the string type to the settings for that type.

### aux_climate_control

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Used for showing the planet icon in map generator GUI next to aux climate control.

### cliff_settings

**Type:** [CliffPlacementSettings](../types/CliffPlacementSettings.md) · _optional_

### moisture_climate_control

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Used for showing the planet icon in map generator GUI next to moisture climate control.

### property_expression_names

**Type:** dictionary[[string](../types/string.md) → [string](../types/string.md) ∣ [boolean](../types/boolean.md) ∣ [double](../types/double.md)] · _optional_

Map of property name (e.g. "elevation") to name of noise expression that will provide it. Entries may be omitted. A notable usage is changing autoplace behavior of an entity based on the preset, which cannot be read from a noise expression.

### territory_settings

**Type:** [TerritorySettings](../types/TerritorySettings.md) · _optional_
