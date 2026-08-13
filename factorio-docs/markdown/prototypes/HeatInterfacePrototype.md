# HeatInterfacePrototype

_prototype_

**Prototype type string:** `type = "heat-interface"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

This entity produces or consumes heat. Its heat settings can be changed runtime.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [heat_buffer](#heat-buffer) | [HeatBuffer](../types/HeatBuffer.md) |  |
| [heating_radius](#heating-radius) | [float](../types/float.md) | yes |
| [picture](#picture) | [Sprite](../types/Sprite.md) | yes |

### gui_mode

**Type:** `"all"` ∣ `"none"` ∣ `"admins"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

### heat_buffer

**Type:** [HeatBuffer](../types/HeatBuffer.md)

### heating_radius

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### picture

**Type:** [Sprite](../types/Sprite.md) · _optional_
