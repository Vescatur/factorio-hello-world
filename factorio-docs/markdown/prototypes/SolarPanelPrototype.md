# SolarPanelPrototype

_prototype_

**Prototype type string:** `type = "solar-panel"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [solar panel](https://wiki.factorio.com/Solar_panel).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [overlay](#overlay) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [performance_at_day](#performance-at-day) | [double](../types/double.md) | yes |
| [performance_at_night](#performance-at-night) | [double](../types/double.md) | yes |
| [picture](#picture) | [SpriteVariations](../types/SpriteVariations.md) | yes |
| [production](#production) | [Energy](../types/Energy.md) |  |
| [solar_coefficient_property](#solar-coefficient-property) | [SurfacePropertyID](../types/SurfacePropertyID.md) | yes |

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

Sets how this solar panel connects to the energy network. The most relevant property seems to be the output_priority.

### overlay

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

Overlay has to be empty or have same number of variations as `picture`.

### performance_at_day

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### performance_at_night

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### picture

**Type:** [SpriteVariations](../types/SpriteVariations.md) · _optional_

The picture displayed for this solar panel.

### production

**Type:** [Energy](../types/Energy.md)

The maximum amount of power this solar panel can produce.

### solar_coefficient_property

**Type:** [SurfacePropertyID](../types/SurfacePropertyID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'solar-power'}`

Surface property must have a positive [default value](../prototypes/SurfacePropertyPrototype.md#default-value). When [SolarPanelPrototype::solar_coefficient_property](../prototypes/SolarPanelPrototype.md#solar-coefficient-property) is set to point at a different surface property than "solar-power", then [LuaSurface::solar_power_multiplier](../classes/LuaSurface.md#solar-power-multiplier) and [SpaceLocationPrototype::solar_power_in_space](../prototypes/SpaceLocationPrototype.md#solar-power-in-space) will be ignored as the solar panel power output will be only affected by value of this surface property set on the surface using [PlanetPrototype::surface_properties](../prototypes/PlanetPrototype.md#surface-properties) or [LuaSurface::set_property](../classes/LuaSurface.md#set-property).
