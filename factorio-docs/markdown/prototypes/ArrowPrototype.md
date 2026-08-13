# ArrowPrototype

_prototype_

**Prototype type string:** `type = "arrow"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The arrows used for example in the campaign, they are literally just arrows.

**Example:**

```
{
  type = "arrow",
  name = "orange-arrow-with-circle",
  flags = { "placeable-off-grid", "not-on-map" },
  blinking = true,
  arrow_picture =
  {
    filename = "__core__/graphics/arrows/gui-arrow-medium.png",
    priority = "low",
    width = 58,
    height = 62
  },
  circle_picture =
  {
    filename = "__core__/graphics/arrows/gui-arrow-circle.png",
    priority = "low",
    width = 50,
    height = 50
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [arrow_picture](#arrow-picture) | [Sprite](../types/Sprite.md) |  |
| [blinking](#blinking) | [boolean](../types/boolean.md) | yes |
| [circle_picture](#circle-picture) | [Sprite](../types/Sprite.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |

### arrow_picture

**Type:** [Sprite](../types/Sprite.md)

### blinking

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### circle_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.
