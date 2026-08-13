# SolarPanelEquipmentPrototype

_prototype_

**Prototype type string:** `type = "solar-panel-equipment"`

**Inherits from:** [EquipmentPrototype](../prototypes/EquipmentPrototype.md)

A [portable solar panel](https://wiki.factorio.com/Portable_solar_panel).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [performance_at_day](#performance-at-day) | [double](../types/double.md) | yes |
| [performance_at_night](#performance-at-night) | [double](../types/double.md) | yes |
| [power](#power) | [Energy](../types/Energy.md) |  |
| [solar_coefficient_property](#solar-coefficient-property) | [SurfacePropertyID](../types/SurfacePropertyID.md) | yes |

### performance_at_day

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### performance_at_night

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### power

**Type:** [Energy](../types/Energy.md)

How much power should be provided.

### solar_coefficient_property

**Type:** [SurfacePropertyID](../types/SurfacePropertyID.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'solar-power'}`

Surface property must have a positive [default value](../prototypes/SurfacePropertyPrototype.md#default-value). When [SolarPanelEquipmentPrototype::solar_coefficient_property](../prototypes/SolarPanelEquipmentPrototype.md#solar-coefficient-property) is set to point at a different surface property than "solar-power", then [LuaSurface::solar_power_multiplier](../classes/LuaSurface.md#solar-power-multiplier) and [SpaceLocationPrototype::solar_power_in_space](../prototypes/SpaceLocationPrototype.md#solar-power-in-space) will be ignored as the solar panel power output will be only affected by value of this surface property set on the surface using [PlanetPrototype::surface_properties](../prototypes/PlanetPrototype.md#surface-properties) or [LuaSurface::set_property](../classes/LuaSurface.md#set-property).

Due to equipment grid overall description, when solar_coefficient_property is not solar-power, a different locale will be used to show total energy production of solar panels: `description.solar-panel-power-X` where X is the surface property name.
