# SpriteVariations

_type_

**Examples:**

```
-- array of sprites
pictures =
{
  {size = 64, filename = "__base__/graphics/icons/coal.png", scale = 0.5, mipmap_count = 4},
  {size = 64, filename = "__base__/graphics/icons/coal-1.png", scale = 0.5, mipmap_count = 4},
  {size = 64, filename = "__base__/graphics/icons/coal-2.png", scale = 0.5, mipmap_count = 4},
  {size = 64, filename = "__base__/graphics/icons/coal-3.png", scale = 0.5, mipmap_count = 4}
}
```

```
-- sprite sheet using "sheet"
connection_patches_connected =
{
  sheet =
  {
    filename = "__base__/graphics/entity/nuclear-reactor/reactor-connect-patches.png",
    width = 64,
    height = 64,
    variation_count = 12,
    scale = 0.5
  }
}
```

**Definition:** struct (see properties below) ∣ [SpriteSheet](../types/SpriteSheet.md) ∣ array[[Sprite](../types/Sprite.md)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [sheet](#sheet) | [SpriteSheet](../types/SpriteSheet.md) |  |

### sheet

**Type:** [SpriteSheet](../types/SpriteSheet.md)
