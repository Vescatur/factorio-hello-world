# RadiusVisualisationSpecification

_type_

Sprite to be shown around the entity when it is selected/held in the cursor.

**Example:**

```
radius_visualisation_specification =
{
  sprite =
  {
    filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
    size = 10
  },
  distance = 5,
  offset = {0, -5}
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [distance](#distance) | [double](../types/double.md) | yes |
| [distance_quality_multiplier](#distance-quality-multiplier) | dictionary[[QualityID](../types/QualityID.md) → [double](../types/double.md)] | yes |
| [draw_in_cursor](#draw-in-cursor) | [boolean](../types/boolean.md) | yes |
| [draw_on_selection](#draw-on-selection) | [boolean](../types/boolean.md) | yes |
| [offset](#offset) | [Vector](../types/Vector.md) | yes |
| [sprite](#sprite) | [Sprite](../types/Sprite.md) | yes |

### distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be greater than or equal to 0.

This distance is silently overwritten by prototypes with a custom distance: [AgriculturalTowerPrototype::radius](../prototypes/AgriculturalTowerPrototype.md#radius), [AsteroidCollectorPrototype::collection_radius](../prototypes/AsteroidCollectorPrototype.md#collection-radius), [BeaconPrototype::supply_area_distance](../prototypes/BeaconPrototype.md#supply-area-distance), [ElectricPolePrototype::supply_area_distance](../prototypes/ElectricPolePrototype.md#supply-area-distance), [MiningDrillPrototype::resource_searching_radius](../prototypes/MiningDrillPrototype.md#resource-searching-radius).

### distance_quality_multiplier

**Type:** dictionary[[QualityID](../types/QualityID.md) → [double](../types/double.md)] · _optional_

Each value must be >= 0.01.

If value is not provided for a quality, then `1` will be used as a multiplier instead.

This does not affect the visualisation of prototypes with a custom distance specification because their distance automatically scales based on quality: agricultural tower (no quality scaling), [asteroid collector](../prototypes/QualityPrototype.md#asteroid-collector-collection-radius-bonus), [beacon](../prototypes/QualityPrototype.md#beacon-supply-area-distance-bonus), cargo landing pad (no quality scaling), [electric pole](../prototypes/QualityPrototype.md#electric-pole-supply-area-distance-bonus), and [mining drill](../prototypes/QualityPrototype.md#mining-drill-mining-radius-bonus).

### draw_in_cursor

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_on_selection

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### offset

**Type:** [Vector](../types/Vector.md) · _optional_

Offset of the sprite from the position of the entity. The offset is rotated by the entity's current direction.

This offset is silently overwritten by prototypes with a custom offset: [MiningDrillPrototype::resource_searching_offset](../prototypes/MiningDrillPrototype.md#resource-searching-offset).

### sprite

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite to show.

This sprite is silently overwritten by prototypes with a custom radius picture: [AgriculturalTowerPrototype::radius_visualisation_picture](../prototypes/AgriculturalTowerPrototype.md#radius-visualisation-picture), [AsteroidCollectorPrototype::radius_visualisation_picture](../prototypes/AsteroidCollectorPrototype.md#radius-visualisation-picture), [BeaconPrototype::radius_visualisation_picture](../prototypes/BeaconPrototype.md#radius-visualisation-picture), [CargoLandingPadPrototype::radius_visualisation_picture](../prototypes/CargoLandingPadPrototype.md#radius-visualisation-picture), [ElectricPolePrototype::radius_visualisation_picture](../prototypes/ElectricPolePrototype.md#radius-visualisation-picture), [MiningDrillPrototype::radius_visualisation_picture](../prototypes/MiningDrillPrototype.md#radius-visualisation-picture).
