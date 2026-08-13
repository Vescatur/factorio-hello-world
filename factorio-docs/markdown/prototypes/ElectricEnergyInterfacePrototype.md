# ElectricEnergyInterfacePrototype

_prototype_

**Prototype type string:** `type = "electric-energy-interface"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Entity with electric energy source with that can have some of its values changed runtime. Useful for modding in energy consumers/producers.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_copy_paste](#allow-copy-paste) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [animations](#animations) | [Animation4Way](../types/Animation4Way.md) | yes |
| [continuous_animation](#continuous-animation) | [boolean](../types/boolean.md) | yes |
| [energy_production](#energy-production) | [Energy](../types/Energy.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) | yes |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [picture](#picture) | [Sprite](../types/Sprite.md) | yes |
| [pictures](#pictures) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |

### allow_copy_paste

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

Only loaded if both `picture` and `pictures` are not defined.

### animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Only loaded if `picture`, `pictures`, and `animation` are not defined.

### continuous_animation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the electric energy interface animation always runs instead of being scaled to activity.

### energy_production

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

**Example:**

```
energy_production = "500GW"
```

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

### energy_usage

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

**Example:**

```
energy_usage = "10kW"
```

### gui_mode

**Type:** `"all"` ∣ `"none"` ∣ `"admins"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'none'}`

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

The light that this electric energy interface emits.

### picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### pictures

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

Only loaded if `picture` is not defined.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`
