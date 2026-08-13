# NightVisionEquipmentPrototype

_prototype_

**Prototype type string:** `type = "night-vision-equipment"`

**Inherits from:** [EquipmentPrototype](../prototypes/EquipmentPrototype.md)

Used by [nightvision](https://wiki.factorio.com/Nightvision).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activate_sound](#activate-sound) | [Sound](../types/Sound.md) | yes |
| [color_lookup](#color-lookup) | [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md) |  |
| [darkness_to_turn_on](#darkness-to-turn-on) | [float](../types/float.md) | yes |
| [deactivate_sound](#deactivate-sound) | [Sound](../types/Sound.md) | yes |
| [energy_input](#energy-input) | [Energy](../types/Energy.md) |  |

### activate_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### color_lookup

**Type:** [DaytimeColorLookupTable](../types/DaytimeColorLookupTable.md)

### darkness_to_turn_on

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.5}`

Must be >= 0 and <= 1.

### deactivate_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### energy_input

**Type:** [Energy](../types/Energy.md)
