# AutoplaceControl

_prototype_

**Prototype type string:** `type = "autoplace-control"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A setting in the map creation GUI. Used by the [autoplace system](../types/AutoplaceSpecification.md#control).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [can_be_disabled](#can-be-disabled) | [boolean](../types/boolean.md) | yes |
| [category](#category) | `"resource"` ∣ `"terrain"` ∣ `"cliff"` ∣ `"enemy"` |  |
| [hidden](#hidden) | [boolean](../types/boolean.md) | yes |
| [related_to_fight_achievements](#related-to-fight-achievements) | [boolean](../types/boolean.md) | yes |
| [richness](#richness) | [boolean](../types/boolean.md) | yes |

### can_be_disabled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether there is an "enable" checkbox for the autoplace control in the map generator GUI. If this is false, the autoplace control cannot be disabled from the GUI.

### category

**Type:** `"resource"` ∣ `"terrain"` ∣ `"cliff"` ∣ `"enemy"`

Controls in what tab the autoplace is shown in the map generator GUI.

### hidden

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Hides the autoplace control from the map generation screen.

### related_to_fight_achievements

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this settings being lower than default disables fight related achievements.

### richness

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Sets whether this control's richness can be changed. The map generator GUI will only show the richness slider when the `category` is `"resource"`.

If the autoplace control is used to generate ores, you probably want this to be true.
