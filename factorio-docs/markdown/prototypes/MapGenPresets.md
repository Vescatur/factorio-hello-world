# MapGenPresets

_prototype_

**Prototype type string:** `type = "map-gen-presets"`

The available map gen presets.

**Example:**

```
{
  type = "map-gen-presets",
  name = "default",
  ["marathon"] =
  {
    order = "c",
    basic_settings =
    {
      property_expression_names = {},
    },
    advanced_settings =
    {
      difficulty_settings =
      {
        technology_price_multiplier = 4
      }
    }
  },
  ["island"] =
  {
    order = "h",
    basic_settings =
    {
      property_expression_names =
      {
        elevation = "elevation_island",
        moisture = "moisture_basic",
        aux = "aux_basic",
        cliffiness = "cliffiness_basic",
        cliff_elevation = "cliff_elevation_from_elevation",
        trees_forest_path_cutout = 1
      },
      cliff_settings =
      {
        cliff_smoothing = 1
      },
      autoplace_controls =
      {
        ["trees"] =
        {
          frequency = 1,
          size = 0.5
        }
      }
    }
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../types/string.md) |  |
| [type](#type) | `"map-gen-presets"` |  |

### name

**Type:** [string](../types/string.md)

Name of the map gen presets. Base game uses "default".

### type

**Type:** `"map-gen-presets"`
