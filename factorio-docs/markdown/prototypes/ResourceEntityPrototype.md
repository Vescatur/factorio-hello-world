# ResourceEntityPrototype

_prototype_

**Prototype type string:** `type = "resource"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

A mineable/gatherable entity.

**Example:**

```
{
  type = "resource",
  name = "crude-oil",
  icon = "__base__/graphics/icons/crude-oil.png",
  icon_size = 32,
  flags = {"placeable-neutral"},
  category = "basic-fluid",
  order="a-b-a",
  infinite = true,
  highlight = true,
  minimum = 60000,
  normal = 300000,
  infinite_depletion_amount = 10,
  resource_patch_search_radius = 12,
  tree_removal_probability = 0.7,
  tree_removal_max_distance = 32 * 32,
  minable =
  {
    mining_time = 1,
    results =
    {
      {
        type = "fluid",
        name = "crude-oil",
        amount_min = 10,
        amount_max = 10,
        independent_probability = 1
      }
    }
  },
  collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
  selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
  autoplace = resource_autoplace.resource_autoplace_settings{
    name = "crude-oil",
    order = "c", -- Other resources are "b"; oil won't get placed if something else is already there.
    base_density = 8.2,
    base_spots_per_km2 = 1.8,
    random_probability = 1/48,
    random_spot_size_minimum = 1,
    random_spot_size_maximum = 1, -- don't randomize spot size
    additional_richness = 220000, -- this increases the total everywhere, so base_density needs to be decreased to compensate
    has_starting_area_placement = false,
    resource_index = resource_autoplace.resource_indexes["crude-oil"],
    regular_rq_factor_multiplier = 1
  },
  stage_counts = {0},
  stages =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
      priority = "extra-high",
      width = 75,
      height = 61,
      frame_count = 4,
      variation_count = 1
    }
  },
  map_color = {r=0.78, g=0.2, b=0.77},
  map_grid = false
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [category](#category) | [ResourceCategoryID](../types/ResourceCategoryID.md) | yes |
| [cliff_removal_probability](#cliff-removal-probability) | [double](../types/double.md) | yes |
| [draw_stateless_visualisation_under_building](#draw-stateless-visualisation-under-building) | [boolean](../types/boolean.md) | yes |
| [driving_sound](#driving-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [effect_animation_period](#effect-animation-period) | [float](../types/float.md) | yes |
| [effect_animation_period_deviation](#effect-animation-period-deviation) | [float](../types/float.md) | yes |
| [effect_darkness_multiplier](#effect-darkness-multiplier) | [float](../types/float.md) | yes |
| [highlight](#highlight) | [boolean](../types/boolean.md) | yes |
| [infinite](#infinite) | [boolean](../types/boolean.md) | yes |
| [infinite_depletion_amount](#infinite-depletion-amount) | [uint32](../types/uint32.md) | yes |
| [map_grid](#map-grid) | [boolean](../types/boolean.md) | yes |
| [max_effect_alpha](#max-effect-alpha) | [float](../types/float.md) | yes |
| [min_effect_alpha](#min-effect-alpha) | [float](../types/float.md) | yes |
| [minimum](#minimum) | [uint32](../types/uint32.md) | yes |
| [mining_visualisation_tint](#mining-visualisation-tint) | [Color](../types/Color.md) | yes |
| [normal](#normal) | [uint32](../types/uint32.md) | yes |
| [randomize_visual_position](#randomize-visual-position) | [boolean](../types/boolean.md) | yes |
| [resource_patch_search_radius](#resource-patch-search-radius) | [uint32](../types/uint32.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [stage_counts](#stage-counts) | array[[uint32](../types/uint32.md)] |  |
| [stages](#stages) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [stages_effect](#stages-effect) | [AnimationVariations](../types/AnimationVariations.md) | yes |
| [tree_removal_max_distance](#tree-removal-max-distance) | [double](../types/double.md) | yes |
| [tree_removal_probability](#tree-removal-probability) | [double](../types/double.md) | yes |
| [walking_sound](#walking-sound) | [Sound](../types/Sound.md) | yes |

### category

**Type:** [ResourceCategoryID](../types/ResourceCategoryID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'basic-solid'}`

The category for the resource. Available categories in vanilla can be found [here](https://wiki.factorio.com/Data.raw#resource-category).

### cliff_removal_probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Must be greater than or equal to `0`.

### draw_stateless_visualisation_under_building

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### driving_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Sound played when a [CarPrototype](../prototypes/CarPrototype.md) drives over this resource.

### effect_animation_period

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

How long it takes `stages_effect` to go from `min_effect_alpha` to `max_effect_alpha`.

### effect_animation_period_deviation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

How much `effect_animation_period` can deviate from its original value. Used to make the stages effect alpha change look less uniform.

### effect_darkness_multiplier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

How much the surface darkness should affect the alpha of `stages_effect`.

### highlight

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If the resource should be highlighted when holding a mining drill that can mine it (holding a pumpjack highlights crude-oil in the base game).

### infinite

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If the ore is infinitely minable, or if it will eventually run out of resource.

### infinite_depletion_amount

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Every time an infinite-type resource is decreased by mining, its current resource amount is lowered by this number.

### map_grid

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the resource should have a grid pattern on the map instead of a solid map color.

### max_effect_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Maximal alpha value of `stages_effect`.

### min_effect_alpha

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

Minimal alpha value of `stages_effect`.

### minimum

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be not 0 when `infinite = true`.

### mining_visualisation_tint

**Type:** [Color](../types/Color.md) · _optional_

Defaults to the resources map color if left unset and map color is set, otherwise defaults to white if left unset.

### normal

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be not 0 when `infinite = true`.

### randomize_visual_position

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether there should be a slight offset to graphics of the resource. Used to make patches a little less uniform in appearance.

### resource_patch_search_radius

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

When hovering over this resource in the map view: How far to search for other resource patches of this type to display as one (summing amount, white outline).

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 40}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### stage_counts

**Type:** array[[uint32](../types/uint32.md)]

Number of stages the animation has.

### stages

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

Entity's graphics, using a graphic sheet, with variation and depletion. At least one stage must be defined.

When using [AnimationVariations::sheet](../types/AnimationVariations.md#sheet), `frame_count` is the amount of frames per row in the spritesheet. `variation_count` is the amount of rows in the spritesheet. Each row in the spritesheet is one stage of the animation.

### stages_effect

**Type:** [AnimationVariations](../types/AnimationVariations.md) · _optional_

An effect that can be overlaid above the normal ore graphics. Used in the base game to make [uranium ore](https://wiki.factorio.com/Uranium_ore) glow.

### tree_removal_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be positive when `tree_removal_probability` is set.

### tree_removal_probability

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be greater than or equal to `0`.

### walking_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Sound played when the player walks over this resource.
