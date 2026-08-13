# TechnologyPrototype

_prototype_

**Prototype type string:** `type = "technology"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A [technology](https://wiki.factorio.com/Technologies).

**Example:**

```
{
  type = "technology",
  name = "steel-processing",
  icon_size = 256,
  icon = "__base__/graphics/technology/steel-processing.png",
  effects =
  {
    {
      type = "unlock-recipe",
      recipe = "steel-plate"
    },
    {
      type = "unlock-recipe",
      recipe = "steel-chest"
    }
  },
  unit =
  {
    count = 50,
    ingredients = {{"automation-science-pack", 1}},
    time = 5
  },
  order = "c-a"
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allows_productivity](#allows-productivity) | [boolean](../types/boolean.md) | yes |
| [effects](#effects) | array[[Modifier](../types/Modifier.md)] | yes |
| [enabled](#enabled) | [boolean](../types/boolean.md) | yes |
| [essential](#essential) | [boolean](../types/boolean.md) | yes |
| [hidden](#hidden) | [boolean](../types/boolean.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [ignore_tech_cost_multiplier](#ignore-tech-cost-multiplier) | [boolean](../types/boolean.md) | yes |
| [max_level](#max-level) | [uint32](../types/uint32.md) ∣ `"infinite"` | yes |
| [name](#name) | [string](../types/string.md) |  |
| [prerequisites](#prerequisites) | array[[TechnologyID](../types/TechnologyID.md)] | yes |
| [research_trigger](#research-trigger) | [TechnologyTrigger](../types/TechnologyTrigger.md) | yes |
| [show_levels_info](#show-levels-info) | [boolean](../types/boolean.md) | yes |
| [unit](#unit) | [TechnologyUnit](../types/TechnologyUnit.md) | yes |
| [upgrade](#upgrade) | [boolean](../types/boolean.md) | yes |
| [visible_when_disabled](#visible-when-disabled) | [boolean](../types/boolean.md) | yes |

### allows_productivity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### effects

**Type:** array[[Modifier](../types/Modifier.md)] · _optional_

List of effects of the technology (applied when the technology is researched).

**Example:**

```
{
  {
    type  = "unlock-recipe",
    recipe = "land-mine"
  }
}
```

### enabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

This can be `false` to disable the technology at the start of the game, or `true` to leave it enabled.

Changes to this property do not affect existing save files, as the enabled state is saved in the save file and not reloaded from the prototype.

### essential

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the technology should be shown in the technology tree GUI when "Show only essential technologies" is enabled.

### hidden

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Hides the technology from the tech screen.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

The base game uses 256px icons for technologies.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### ignore_tech_cost_multiplier

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Controls whether the technology cost ignores the tech cost multiplier set in the [DifficultySettings](../concepts/DifficultySettings.md). E.g. `4` for the default expensive difficulty.

### max_level

**Type:** [uint32](../types/uint32.md) ∣ `"infinite"` · _optional_

`"infinite"` for infinite technologies, otherwise `uint32`.

Defaults to the same level as the technology, which is `0` for non-upgrades, and the level of the upgrade for upgrades.

### name

**Type:** [string](../types/string.md) · _overrides parent_

If this name ends with `-<number>`, that number is ignored for localization purposes. E.g. if the name is `technology-3`, the game looks for the `technology-name.technology` localization. The technology tree will also show the number on the technology icon.

### prerequisites

**Type:** array[[TechnologyID](../types/TechnologyID.md)] · _optional_

List of technologies needed to be researched before this one can be researched.

**Example:**

```
prerequisites = {"explosives", "military-2"}
```

### research_trigger

**Type:** [TechnologyTrigger](../types/TechnologyTrigger.md) · _optional_

Mandatory if `unit` is not defined.

### show_levels_info

**Type:** [boolean](../types/boolean.md) · _optional_

Can be used to enable or disable showing levels info in technology slot.

### unit

**Type:** [TechnologyUnit](../types/TechnologyUnit.md) · _optional_

Determines the cost in items and time of the technology.

Mandatory if `research_trigger` is not defined.

### upgrade

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set to true, and the technology contains several levels, only the relevant one is displayed in the technology screen.

**Example:**

```
{
  type = "technology",
  name = "physical-projectile-damage-2",
  [...]
  upgrade = true
}
```

### visible_when_disabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Controls whether the technology is shown in the tech GUI when it is not `enabled`.

Changes to this property do not affect existing save files, as the visible_when_disabled state is saved in the save file and not reloaded from the prototype.
