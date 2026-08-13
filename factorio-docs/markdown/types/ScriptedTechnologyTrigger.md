# ScriptedTechnologyTrigger

_type_

Triggered only by calling [LuaForce::script_trigger_research](../classes/LuaForce.md#script-trigger-research). Can be used to show custom scripted triggers in the technology GUI.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [trigger_description](#trigger-description) | [LocalisedString](../types/LocalisedString.md) | yes |
| [type](#type) | `"scripted"` |  |

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### trigger_description

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_

### type

**Type:** `"scripted"`
