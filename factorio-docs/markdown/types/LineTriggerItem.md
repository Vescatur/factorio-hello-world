# LineTriggerItem

_type_

**Inherits from:** [TriggerItem](../types/TriggerItem.md)

**Example:**

```
action =
{
  type = "line",
  range = 25,
  width = 0.5,

  range_effects =
  {
    type = "create-explosion",
    entity_name = "railgun-beam"
  },

  action_delivery =
  {
    type = "instant",
    target_effects =
    {
      type = "damage",
      damage = { amount = 100, type = "physical"}
    }
  }
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [range](#range) | [double](../types/double.md) |  |
| [range_effects](#range-effects) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [type](#type) | `"line"` |  |
| [width](#width) | [double](../types/double.md) |  |

### range

**Type:** [double](../types/double.md)

### range_effects

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### type

**Type:** `"line"`

### width

**Type:** [double](../types/double.md)
