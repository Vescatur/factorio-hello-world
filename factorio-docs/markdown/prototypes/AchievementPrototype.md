# AchievementPrototype

_prototype_

**Prototype type string:** `type = "achievement"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

This prototype definition is used for the in-game achievements.

**Example:**

```
{
  type = "achievement",
  name = "so-long-and-thanks-for-all-the-fish",
  order = "g[secret]-a[so-long-and-thanks-for-all-the-fish]",
  icon = "__base__/graphics/achievement/so-long-and-thanks-for-all-the-fish.png",
  icon_size = 128
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allowed_without_fight](#allowed-without-fight) | [boolean](../types/boolean.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [steam_stats_name](#steam-stats-name) | [string](../types/string.md) | yes |

### allowed_without_fight

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If this is set to `false`, it is not possible to complete the achievement on the peaceful difficulty setting or when the enemy base generation settings have been changed.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

The base game uses 128px icons for achievements.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### steam_stats_name

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Unusable by mods, as this refers to unlocking the achievement through Steam.
