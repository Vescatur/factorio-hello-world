# MapGenPreset

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [advanced_settings](#advanced-settings) | [AdvancedMapGenSettings](../types/AdvancedMapGenSettings.md) | yes |
| [basic_settings](#basic-settings) | [MapGenSettings](../types/MapGenSettings.md) | yes |
| [default](#default) | [boolean](../types/boolean.md) | yes |
| [order](#order) | [Order](../types/Order.md) |  |

### advanced_settings

**Type:** [AdvancedMapGenSettings](../types/AdvancedMapGenSettings.md) · _optional_

If any setting is not set, it will use the default values.

### basic_settings

**Type:** [MapGenSettings](../types/MapGenSettings.md) · _optional_

If any setting is not set, it will use the default values.

### default

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this is the default preset. If `true`, this preset may not have any other properties besides this and order.

If no MapGenPreset has `default = true`, the preset selector will have a blank preset label, with default settings. The "blank" preset goes away when another preset is selected.

### order

**Type:** [Order](../types/Order.md)

Specifies the ordering in the [map generator GUI](https://wiki.factorio.com/Map_generator).
