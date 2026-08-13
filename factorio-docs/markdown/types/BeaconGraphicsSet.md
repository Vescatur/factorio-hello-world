# BeaconGraphicsSet

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation_layer](#animation-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [animation_list](#animation-list) | array[[AnimationElement](../types/AnimationElement.md)] | yes |
| [animation_progress](#animation-progress) | [float](../types/float.md) | yes |
| [apply_module_tint](#apply-module-tint) | [ModuleTint](../types/ModuleTint.md) | yes |
| [base_layer](#base-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [draw_animation_when_idle](#draw-animation-when-idle) | [boolean](../types/boolean.md) | yes |
| [draw_light_when_idle](#draw-light-when-idle) | [boolean](../types/boolean.md) | yes |
| [frozen_patch](#frozen-patch) | [Sprite](../types/Sprite.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [module_icons_suppressed](#module-icons-suppressed) | [boolean](../types/boolean.md) | yes |
| [module_tint_mode](#module-tint-mode) | `"single-module"` ∣ `"mix"` | yes |
| [module_visualisations](#module-visualisations) | array[[BeaconModuleVisualizations](../types/BeaconModuleVisualizations.md)] | yes |
| [no_modules_tint](#no-modules-tint) | [Color](../types/Color.md) | yes |
| [random_animation_offset](#random-animation-offset) | [boolean](../types/boolean.md) | yes |
| [reset_animation_when_frozen](#reset-animation-when-frozen) | [boolean](../types/boolean.md) | yes |
| [top_layer](#top-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [water_reflection](#water-reflection) | [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) | yes |

### animation_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### animation_list

**Type:** array[[AnimationElement](../types/AnimationElement.md)] · _optional_

### animation_progress

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### apply_module_tint

**Type:** [ModuleTint](../types/ModuleTint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'none'}`

Which tint set in [ModulePrototype::beacon_tint](../prototypes/ModulePrototype.md#beacon-tint) should be applied to elements of the `animation_list`, if any.

### base_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### draw_animation_when_idle

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_light_when_idle

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### frozen_patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### module_icons_suppressed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### module_tint_mode

**Type:** `"single-module"` ∣ `"mix"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'single-module'}`

### module_visualisations

**Type:** array[[BeaconModuleVisualizations](../types/BeaconModuleVisualizations.md)] · _optional_

The visualisations available for displaying the modules in the beacon. The visualisation is chosen based on art style, see [BeaconModuleVisualizations::art_style](../types/BeaconModuleVisualizations.md#art-style) and [ModulePrototype::art_style](../prototypes/ModulePrototype.md#art-style).

### no_modules_tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `no color`

### random_animation_offset

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### reset_animation_when_frozen

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### top_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### water_reflection

**Type:** [WaterReflectionDefinition](../types/WaterReflectionDefinition.md) · _optional_

Refer to [EntityPrototype::water_reflection](../prototypes/EntityPrototype.md#water-reflection).
