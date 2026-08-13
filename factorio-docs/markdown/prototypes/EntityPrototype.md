# EntityPrototype

_prototype_ · **abstract**

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Abstract base of all entities in the game. Entity is nearly everything that can be on the map (except tiles).

For in game script access to entity, take a look at [LuaEntity](../classes/LuaEntity.md).

**Example:**

```
{
  type = "container",
  name = "wooden-chest",
  icon = "__base__/graphics/icons/wooden-chest.png",
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 1, result = "wooden-chest" },
  max_health = 100,
  corpse = "small-remnants",
  collision_box = { {-0.35, -0.35}, {0.35, 0.35} },
  fast_replaceable_group = "container",
  selection_box = { {-0.5, -0.5}, {0.5, 0.5} },
  inventory_size = 16,
  open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
  close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
  picture =
  {
    filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
    priority = "extra-high",
    width = 46,
    height = 33,
    shift = {0.25, 0.015625}
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [additional_pastable_entities](#additional-pastable-entities) | array[[EntityID](../types/EntityID.md)] | yes |
| [alert_icon_scale](#alert-icon-scale) | [float](../types/float.md) | yes |
| [alert_icon_shift](#alert-icon-shift) | [Vector](../types/Vector.md) | yes |
| [allow_copy_paste](#allow-copy-paste) | [boolean](../types/boolean.md) | yes |
| [ambient_sounds](#ambient-sounds) | [WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md) ∣ array[[WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md)] | yes |
| [ambient_sounds_group](#ambient-sounds-group) | [EntityID](../types/EntityID.md) | yes |
| [autoplace](#autoplace) | [AutoplaceSpecification](../types/AutoplaceSpecification.md) | yes |
| [build_grid_size](#build-grid-size) | [uint8](../types/uint8.md) | yes |
| [build_sound](#build-sound) | [Sound](../types/Sound.md) | yes |
| [close_sound](#close-sound) | [Sound](../types/Sound.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [collision_mask](#collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [created_effect](#created-effect) | [Trigger](../types/Trigger.md) | yes |
| [created_smoke](#created-smoke) | [CreateTrivialSmokeEffectItem](../types/CreateTrivialSmokeEffectItem.md) | yes |
| [deconstruction_alternative](#deconstruction-alternative) | [EntityID](../types/EntityID.md) | yes |
| [diagonal_tile_grid_size](#diagonal-tile-grid-size) | [TilePosition](../types/TilePosition.md) | yes |
| [draw_stateless_visualisations_in_ghost](#draw-stateless-visualisations-in-ghost) | [boolean](../types/boolean.md) | yes |
| [drawing_box_vertical_extension](#drawing-box-vertical-extension) | [double](../types/double.md) | yes |
| [emissions_per_second](#emissions-per-second) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] | yes |
| [enemy_map_color](#enemy-map-color) | [Color](../types/Color.md) | yes |
| [fast_replaceable_group](#fast-replaceable-group) | [string](../types/string.md) | yes |
| [flags](#flags) | [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) | yes |
| [friendly_map_color](#friendly-map-color) | [Color](../types/Color.md) | yes |
| [heating_energy](#heating-energy) | [Energy](../types/Energy.md) | yes |
| [hit_visualization_box](#hit-visualization-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_draw_specification](#icon-draw-specification) | [IconDrawSpecification](../types/IconDrawSpecification.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [icons_positioning](#icons-positioning) | array[[IconSequencePositioning](../types/IconSequencePositioning.md)] | yes |
| [impact_category](#impact-category) | [string](../types/string.md) | yes |
| [map_color](#map-color) | [Color](../types/Color.md) | yes |
| [map_generator_bounding_box](#map-generator-bounding-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [minable](#minable) | [MinableProperties](../types/MinableProperties.md) | yes |
| [mined_sound](#mined-sound) | [Sound](../types/Sound.md) | yes |
| [mining_sound](#mining-sound) | [Sound](../types/Sound.md) | yes |
| [next_upgrade](#next-upgrade) | [EntityID](../types/EntityID.md) | yes |
| [open_sound](#open-sound) | [Sound](../types/Sound.md) | yes |
| [order](#order) | [Order](../types/Order.md) | yes |
| [placeable_by](#placeable-by) | [ItemToPlace](../types/ItemToPlace.md) ∣ array[[ItemToPlace](../types/ItemToPlace.md)] | yes |
| [placeable_position_visualization](#placeable-position-visualization) | [Sprite](../types/Sprite.md) | yes |
| [protected_from_tile_building](#protected-from-tile-building) | [boolean](../types/boolean.md) | yes |
| [radius_visualisation_specification](#radius-visualisation-specification) | [RadiusVisualisationSpecification](../types/RadiusVisualisationSpecification.md) | yes |
| [remains_when_mined](#remains-when-mined) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] | yes |
| [remove_decoratives](#remove-decoratives) | `"automatic"` ∣ `"true"` ∣ `"false"` | yes |
| [rotated_sound](#rotated-sound) | [Sound](../types/Sound.md) | yes |
| [selectable_in_game](#selectable-in-game) | [boolean](../types/boolean.md) | yes |
| [selection_box](#selection-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shooting_cursor_size](#shooting-cursor-size) | [double](../types/double.md) | yes |
| [show_fluid_visualization_when_in_cursor](#show-fluid-visualization-when-in-cursor) | [boolean](../types/boolean.md) | yes |
| [stateless_visualisation](#stateless-visualisation) | [StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)] | yes |
| [sticker_box](#sticker-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [surface_conditions](#surface-conditions) | array[[SurfaceCondition](../types/SurfaceCondition.md)] | yes |
| [tall](#tall) | [boolean](../types/boolean.md) | yes |
| [tile_buildability_rules](#tile-buildability-rules) | array[[TileBuildabilityRule](../types/TileBuildabilityRule.md)] | yes |
| [tile_height](#tile-height) | [int32](../types/int32.md) | yes |
| [tile_width](#tile-width) | [int32](../types/int32.md) | yes |
| [trigger_target_mask](#trigger-target-mask) | [TriggerTargetMask](../types/TriggerTargetMask.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |
| [working_sound](#working-sound) | [WorkingSound](../types/WorkingSound.md) | yes |

### additional_pastable_entities

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

Names of the entity prototypes this entity prototype can be pasted on to in addition to the standard supported types.

This is used to allow copying between types that aren't compatible on the C++ code side, by allowing mods to receive the [on_entity_settings_pasted](../events/on_entity_settings_pasted.md) event for the given entity and do the setting pasting via script.

**Example:**

```
additional_pastable_entities = {"steel-chest", "iron-chest"}
```

### alert_icon_scale

**Type:** [float](../types/float.md) · _optional_

### alert_icon_shift

**Type:** [Vector](../types/Vector.md) · _optional_

### allow_copy_paste

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### ambient_sounds

**Type:** [WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md) ∣ array[[WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md)] · _optional_

### ambient_sounds_group

**Type:** [EntityID](../types/EntityID.md) · _optional_

### autoplace

**Type:** [AutoplaceSpecification](../types/AutoplaceSpecification.md) · _optional_ · **Default:** `nil (entity is not autoplacable)`

Used to specify the rules for placing this entity during map generation.

### build_grid_size

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Supported values are 1 (for 1x1 grid) and 2 (for 2x2 grid, like rails).

Internally forced to be `2` for [RailPrototype](../prototypes/RailPrototype.md), [RailRemnantsPrototype](../prototypes/RailRemnantsPrototype.md), [TrainStopPrototype](../prototypes/TrainStopPrototype.md), [RailSupportPrototype](../prototypes/RailSupportPrototype.md) and [CargoBayPrototype](../prototypes/CargoBayPrototype.md).

Internally forced to be `256` for [SpacePlatformHubPrototype](../prototypes/SpacePlatformHubPrototype.md).

### build_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### close_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Specification of the entity collision boundaries. Empty collision box means no collision and is used for smoke, projectiles, particles, explosions etc.

The `{0,0}` coordinate in the collision box will match the entity position. It should be near the center of the collision box, to keep correct entity drawing order. The bounding box must include the `{0,0}` coordinate.

Note, that for buildings, it is customary to leave 0.1 wide border between the edge of the tile and the edge of the building, this lets the player move between the building and electric poles/inserters etc.

**Example:**

```
collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
```

### collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by the entity type.

### created_effect

**Type:** [Trigger](../types/Trigger.md) · _optional_

The effect/trigger that happens when the entity is placed.

### created_smoke

**Type:** [CreateTrivialSmokeEffectItem](../types/CreateTrivialSmokeEffectItem.md) · _optional_ · **Default:** `The "smoke-building"-smoke`

The smoke that is shown when the entity is placed.

### deconstruction_alternative

**Type:** [EntityID](../types/EntityID.md) · _optional_

Used to merge multiple entities into one entry in the deconstruction planner.

### diagonal_tile_grid_size

**Type:** [TilePosition](../types/TilePosition.md) · _optional_

### draw_stateless_visualisations_in_ghost

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### drawing_box_vertical_extension

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

Specification of extra vertical space needed to see the whole entity in GUIs. This is used to calculate the correct zoom and positioning in the entity info gui, for example in the entity tooltip.

**Example:**

```
drawing_box_vertical_extension = 0.5
```

### emissions_per_second

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] · _optional_

Amount of emissions created (positive number) or cleaned (negative number) every second by the entity. This is passive and currently used just for trees and fires. This is independent of the [emissions of energy sources](../types/BaseEnergySource.md#emissions-per-minute) used by machines, which are created actively depending on the power consumption.

### enemy_map_color

**Type:** [Color](../types/Color.md) · _optional_

### fast_replaceable_group

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

This allows you to replace an entity that's already placed, with a different one in your inventory. For example, replacing a burner inserter with a fast inserter. The replacement entity can be a different rotation to the replaced entity and you can replace an entity with the same type.

This is simply a string, so any string can be used here. The entity that should be replaced simply has to use the same string here.

Entities with the same fast replaceable group can be configured as upgrades for each other in the upgrade planner. Refer to the [upgrade planner prototype's page](../prototypes/UpgradeItemPrototype.md) the full requirements for entities to be shown in the upgrade planner.

### flags

**Type:** [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) · _optional_

### friendly_map_color

**Type:** [Color](../types/Color.md) · _optional_

### heating_energy

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': '0W'}`

This entity can freeze if heating_energy is larger than zero.

### hit_visualization_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Where beams should hit the entity. Useful if the bounding box only covers part of the entity (e.g. feet of the character) and beams only hitting there would look weird.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Either this or `icons` is mandatory for entities that have at least one of these flags active: `"placeable-neutral"`, `"placeable-player`", `"placeable-enemy"`.

Only loaded if `icons` is not defined.

**Example:**

```
icon = "__base__/graphics/icons/wooden-chest.png"
```

### icon_draw_specification

**Type:** [IconDrawSpecification](../types/IconDrawSpecification.md) · _optional_

Used to specify where and how the alt-mode icons should be drawn.

**Example:**

```
icon_draw_specification = {shift = {0, 0.5}, scale = 0.75, scale_for_many = 0.5, render_layer = "entity-info-icon"}
```

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

This will be used in the electric network statistics, editor building selection, and the bonus gui. Can't be an empty array.

Either this or `icon` is mandatory for entities that have at least one of these flags active: `"placeable-neutral"`, `"placeable-player`", `"placeable-enemy"`.

### icons_positioning

**Type:** array[[IconSequencePositioning](../types/IconSequencePositioning.md)] · _optional_

**Example:**

```
icons_positioning =
{
  {inventory_index = defines.inventory.lab_modules, shift = {0, 0.9}},
  {inventory_index = defines.inventory.lab_input, shift = {0, 0.0}, max_icons_per_row = 6, separation_multiplier = 0.9}
}
```

### impact_category

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'default'}`

Name of a [ImpactCategory](../prototypes/ImpactCategory.md).

### map_color

**Type:** [Color](../types/Color.md) · _optional_

### map_generator_bounding_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · **Default:** `The value of collision_box.`

Used instead of the collision box during map generation. Allows space entities differently during map generation, for example if the box is bigger, the entities will be placed farther apart.

### minable

**Type:** [MinableProperties](../types/MinableProperties.md) · _optional_ · **Default:** `not minable`

The item given to the player when they mine the entity and other properties relevant to mining this entity.

**Example:**

```
minable = {mining_time = 0.2, result = "boiler"}
```

### mined_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### mining_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### next_upgrade

**Type:** [EntityID](../types/EntityID.md) · _optional_

Name of the entity that will be automatically selected as the upgrade of this entity when using the [upgrade planner](../prototypes/UpgradeItemPrototype.md) without configuration.

This entity may not have "not-upgradable" flag set and must be minable. This entity mining result must not contain item product with [hidden](../prototypes/ItemPrototype.md#hidden) set to `true`. Mining results with no item products are allowed. This entity may not be a [RollingStockPrototype](../prototypes/RollingStockPrototype.md).

The upgrade target entity needs to have the same bounding box, collision mask, and fast replaceable group as this entity. The upgrade target entity must have least 1 item that builds it that isn't hidden.

**Example:**

```
next_upgrade = "fast-inserter"
```

### open_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### order

**Type:** [Order](../types/Order.md) · _optional_ · _overrides parent_

Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters.

The order string is taken from the items in `placeable_by` if they exist, or from an item that has its [place_result](../prototypes/ItemPrototype.md#place-result) set to this entity.

### placeable_by

**Type:** [ItemToPlace](../types/ItemToPlace.md) ∣ array[[ItemToPlace](../types/ItemToPlace.md)] · _optional_

Item that when placed creates this entity. Determines which item is picked when "Q" (smart pipette) is used on this entity. Determines which item and item amount is needed in a blueprint of this entity and to revive a ghost of this entity.

The item count specified here can't be larger than the stack size of that item.

**Example:**

```
placeable_by = {item = "rail", count = 4}
```

### placeable_position_visualization

**Type:** [Sprite](../types/Sprite.md) · _optional_

### protected_from_tile_building

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, this entity prototype should be included during tile collision checks with tiles that have [TilePrototype::check_collision_with_entities](../prototypes/TilePrototype.md#check-collision-with-entities) set to true.

### radius_visualisation_specification

**Type:** [RadiusVisualisationSpecification](../types/RadiusVisualisationSpecification.md) · _optional_

**Example:**

```
radius_visualisation_specification =
{
  sprite =
  {
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
    size = 10
  },
  distance = 6
}
```

### remains_when_mined

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] · _optional_

The entity that remains when this one is mined, deconstructed or fast-replaced. The entity wont actually be spawned if it would collide with the entity that is in the process of being mined.

### remove_decoratives

**Type:** `"automatic"` ∣ `"true"` ∣ `"false"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'automatic'}`

Whether this entity should remove decoratives that collide with it when this entity is built. When set to "automatic", if the entity type is considered [a building](../classes/LuaEntityPrototype.md#is-building) (e.g. an assembling machine or a wall) it will remove decoratives.

### rotated_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### selectable_in_game

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### selection_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Specification of the entity selection area. When empty the entity will have no selection area (and thus is not selectable).

The selection box is usually a little bit bigger than the collision box. For tileable entities (like buildings) it should match the tile size of the building.

**Example:**

```
selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
```

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 50}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shooting_cursor_size

**Type:** [double](../types/double.md) · _optional_

The cursor size used when shooting at this entity.

### show_fluid_visualization_when_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When this is true, fluid pipelines will be visualized when this entity is held in the cursor.

### stateless_visualisation

**Type:** [StatelessVisualisation](../types/StatelessVisualisation.md) ∣ array[[StatelessVisualisation](../types/StatelessVisualisation.md)] · _optional_

### sticker_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · **Default:** `The value of collision_box.`

Used to specify the area where the [sticker](../prototypes/StickerPrototype.md) animation can appear for entities that can have stickers on them.

**Example:**

```
sticker_box = {{-0.5, -0.5}, {0.5, 0.5}}
```

### surface_conditions

**Type:** array[[SurfaceCondition](../types/SurfaceCondition.md)] · _optional_

### tall

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When this is true, this entity prototype will be translucent and unselectable when "Hide tall entities" mode is active.

Rail signals are always treated as 'tall' when built attached to elevated rails.

### tile_buildability_rules

**Type:** array[[TileBuildabilityRule](../types/TileBuildabilityRule.md)] · _optional_

### tile_height

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `calculated by the collision box height rounded up.`

### tile_width

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `calculated by the collision box width rounded up.`

Used to determine how the center of the entity should be positioned when building (unless the off-grid [flag](../types/EntityPrototypeFlags.md) is specified).

When the tile width is odd, the center will be in the center of the tile, when it is even, the center is on the tile transition.

### trigger_target_mask

**Type:** [TriggerTargetMask](../types/TriggerTargetMask.md) · _optional_

Defaults to the mask from [UtilityConstants::default_trigger_target_mask_by_type](../prototypes/UtilityConstants.md#default-trigger-target-mask-by-type).

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

May also be defined inside `graphics_set` instead of directly in the entity prototype. This is useful for entities that use a `graphics_set` property to define their graphics, because then all graphics can be defined in one place.

[Currently only renders](https://forums.factorio.com/100703) for [EntityWithHealthPrototype](../prototypes/EntityWithHealthPrototype.md) and [CorpsePrototype](../prototypes/CorpsePrototype.md).

### working_sound

**Type:** [WorkingSound](../types/WorkingSound.md) · _optional_

Will also work on entities that don't actually do work.
