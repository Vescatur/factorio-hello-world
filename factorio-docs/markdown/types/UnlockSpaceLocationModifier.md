# UnlockSpaceLocationModifier

_type_

**Inherits from:** [BaseModifier](../types/BaseModifier.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [space_location](#space-location) | [SpaceLocationID](../types/SpaceLocationID.md) |  |
| [type](#type) | `"unlock-space-location"` |  |
| [use_icon_overlay_constant](#use-icon-overlay-constant) | [boolean](../types/boolean.md) | yes |

### space_location

**Type:** [SpaceLocationID](../types/SpaceLocationID.md)

### type

**Type:** `"unlock-space-location"`

### use_icon_overlay_constant

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `false`, do not draw the small "constant" icon over the technology effect icon.
