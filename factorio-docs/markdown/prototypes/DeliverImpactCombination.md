# DeliverImpactCombination

_prototype_

**Prototype type string:** `type = "deliver-impact-combination"`

**Example:**

```
{
  type = "deliver-impact-combination",
  name = "bullet-organic",
  deliver_category = "bullet",
  impact_category = "organic",
  trigger_effect_item =
  {
    type = "play-sound",
    sound =
    {
      category = "weapon",
      variations = sound_variations("__base__/sound/bullets/bullet-impact-organic", 5, 0.3),
      aggregation = {max_count = 4, remove = true, count_already_playing = true}
    }
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [deliver_category](#deliver-category) | [string](../types/string.md) |  |
| [impact_category](#impact-category) | [string](../types/string.md) |  |
| [name](#name) | [string](../types/string.md) |  |
| [trigger_effect_item](#trigger-effect-item) | [TriggerEffect](../types/TriggerEffect.md) |  |
| [type](#type) | `"deliver-impact-combination"` |  |

### deliver_category

**Type:** [string](../types/string.md)

### impact_category

**Type:** [string](../types/string.md)

### name

**Type:** [string](../types/string.md)

Name of the deliver impact combination.

### trigger_effect_item

**Type:** [TriggerEffect](../types/TriggerEffect.md)

### type

**Type:** `"deliver-impact-combination"`
