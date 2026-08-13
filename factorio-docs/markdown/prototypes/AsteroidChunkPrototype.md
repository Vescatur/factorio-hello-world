# AsteroidChunkPrototype

_prototype_

**Prototype type string:** `type = "asteroid-chunk"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [dying_trigger_effect](#dying-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [graphics_set](#graphics-set) | [AsteroidGraphicsSet](../types/AsteroidGraphicsSet.md) | yes |
| [hide_from_signal_gui](#hide-from-signal-gui) | [boolean](../types/boolean.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [minable](#minable) | [MinableProperties](../types/MinableProperties.md) | yes |

### dying_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### graphics_set

**Type:** [AsteroidGraphicsSet](../types/AsteroidGraphicsSet.md) · _optional_

### hide_from_signal_gui

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `unset`

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### minable

**Type:** [MinableProperties](../types/MinableProperties.md) · _optional_
