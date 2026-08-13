# VirtualSignalPrototype

_prototype_

**Prototype type string:** `type = "virtual-signal"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A [virtual signal](https://wiki.factorio.com/Circuit_network#Virtual_signals).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file that is used to represent this virtual signal.

Only loaded, and mandatory if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

The icon that is used to represent this virtual signal. Can't be an empty array.
