# MapGenSettings

_concept_

When reading MapGenSettings, all properties will always be present, but they can be omitted when writing.

**Examples:**

```
-- Assuming a NamedNoiseExpression with the name "my-alternate-grass1-probability" is defined...
local surface = game.player.surface
local mgs = surface.map_gen_settings
mgs.property_expression_names["tile:grass1:probability"] = "my-alternate-grass1-probability"
surface.map_gen_settings = mgs
-- ...would override the probability of grass1 being placed at any given point on the current surface.
```

```
-- To make there be no deep water on (newly generated chunks) a surface
local surface = game.player.surface
local mgs = surface.map_gen_settings
mgs.property_expression_names["tile:deepwater:probability"] = -1000
surface.map_gen_settings = mgs
-- This does not require a NamedNoiseExpression to be defined, since literal numbers (and strings naming literal
-- numbers, e.g. `"123"`) are understood to stand for constant value expressions.
```

**Definition:** table{autoplace_controls, autoplace_settings, cliff_settings, default_enable_all_autoplace_controls, height, no_enemies_mode, peaceful_mode, property_expression_names, seed, starting_area, starting_points, territory_settings, width}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [autoplace_controls](#autoplace-controls) | dictionary[[string](../concepts/string.md) → [AutoplaceControl](../concepts/AutoplaceControl.md)] | yes |
| [autoplace_settings](#autoplace-settings) | dictionary[`"entity"` ∣ `"tile"` ∣ `"decorative"` → [AutoplaceSettings](../concepts/AutoplaceSettings.md)] | yes |
| [cliff_settings](#cliff-settings) | [CliffPlacementSettings](../concepts/CliffPlacementSettings.md) | yes |
| [default_enable_all_autoplace_controls](#default-enable-all-autoplace-controls) | [boolean](../concepts/boolean.md) | yes |
| [height](#height) | [uint32](../concepts/uint32.md) | yes |
| [no_enemies_mode](#no-enemies-mode) | [boolean](../concepts/boolean.md) | yes |
| [peaceful_mode](#peaceful-mode) | [boolean](../concepts/boolean.md) | yes |
| [property_expression_names](#property-expression-names) | [PropertyExpressionNames](../concepts/PropertyExpressionNames.md) | yes |
| [seed](#seed) | [uint32](../concepts/uint32.md) | yes |
| [starting_area](#starting-area) | [MapGenSize](../concepts/MapGenSize.md) | yes |
| [starting_points](#starting-points) | array[[MapPosition](../concepts/MapPosition.md)] | yes |
| [territory_settings](#territory-settings) | [TerritorySettings](../concepts/TerritorySettings.md) | yes |
| [width](#width) | [uint32](../concepts/uint32.md) | yes |

### autoplace_controls

**Type:** dictionary[[string](../concepts/string.md) → [AutoplaceControl](../concepts/AutoplaceControl.md)] · _optional_

Indexed by autoplace control prototype name.

### autoplace_settings

**Type:** dictionary[`"entity"` ∣ `"tile"` ∣ `"decorative"` → [AutoplaceSettings](../concepts/AutoplaceSettings.md)] · _optional_

Each setting in this dictionary maps the string type to the settings for that type.

### cliff_settings

**Type:** [CliffPlacementSettings](../concepts/CliffPlacementSettings.md) · _optional_

Map generation settings for entities of the type "cliff".

### default_enable_all_autoplace_controls

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether undefined `autoplace_controls` should fall back to the default controls or not. Defaults to `true`.

### height

**Type:** [uint32](../concepts/uint32.md) · _optional_

Height in tiles. If `0`, the map has 'infinite' height, with the actual limitation being one million tiles in each direction from the center.

### no_enemies_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether enemy creatures will not naturally spawn from spawners, map gen, or trigger effects.

### peaceful_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether enemy creatures will not attack unless the player first attacks them.

### property_expression_names

**Type:** [PropertyExpressionNames](../concepts/PropertyExpressionNames.md) · _optional_

Overrides for tile property value generators.

### seed

**Type:** [uint32](../concepts/uint32.md) · _optional_

) The random seed used to generated this map.

### starting_area

**Type:** [MapGenSize](../concepts/MapGenSize.md) · _optional_

Size of the starting area. Defaults to `1`.

### starting_points

**Type:** array[[MapPosition](../concepts/MapPosition.md)] · _optional_

Positions of the starting areas.

### territory_settings

**Type:** [TerritorySettings](../concepts/TerritorySettings.md) · _optional_

### width

**Type:** [uint32](../concepts/uint32.md) · _optional_

) Width in tiles. If `0`, the map has 'infinite' width, with the actual limitation being one million tiles in each direction from the center.
