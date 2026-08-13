# LocomotivePrototype

_prototype_

**Prototype type string:** `type = "locomotive"`

**Inherits from:** [RollingStockPrototype](../prototypes/RollingStockPrototype.md)

A [locomotive](https://wiki.factorio.com/Locomotive).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [darkness_to_render_light_animation](#darkness-to-render-light-animation) | [float](../types/float.md) | yes |
| [energy_source](#energy-source) | [BurnerEnergySource](../types/BurnerEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [front_light](#front-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [front_light_pictures](#front-light-pictures) | [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) | yes |
| [max_power](#max-power) | [Energy](../types/Energy.md) |  |
| [max_snap_to_train_stop_distance](#max-snap-to-train-stop-distance) | [float](../types/float.md) | yes |
| [reversing_power_modifier](#reversing-power-modifier) | [double](../types/double.md) |  |

### darkness_to_render_light_animation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.3}`

### energy_source

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

### front_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### front_light_pictures

**Type:** [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) · _optional_

### max_power

**Type:** [Energy](../types/Energy.md)

### max_snap_to_train_stop_distance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3.0}`

In tiles. A locomotive will snap to a nearby train stop when the player places it within this distance to the stop.

### reversing_power_modifier

**Type:** [double](../types/double.md)
