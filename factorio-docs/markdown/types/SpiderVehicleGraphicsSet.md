# SpiderVehicleGraphicsSet

_type_

**Inherits from:** [SpiderTorsoGraphicsSet](../types/SpiderTorsoGraphicsSet.md)

Used to specify the graphics for [SpiderVehiclePrototype](../prototypes/SpiderVehiclePrototype.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [autopilot_destination_on_map_visualisation](#autopilot-destination-on-map-visualisation) | [Animation](../types/Animation.md) | yes |
| [autopilot_destination_queue_on_map_visualisation](#autopilot-destination-queue-on-map-visualisation) | [Animation](../types/Animation.md) | yes |
| [autopilot_destination_queue_visualisation](#autopilot-destination-queue-visualisation) | [Animation](../types/Animation.md) | yes |
| [autopilot_destination_visualisation](#autopilot-destination-visualisation) | [Animation](../types/Animation.md) | yes |
| [autopilot_destination_visualisation_render_layer](#autopilot-destination-visualisation-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [autopilot_path_visualisation_line_width](#autopilot-path-visualisation-line-width) | [float](../types/float.md) | yes |
| [autopilot_path_visualisation_on_map_line_width](#autopilot-path-visualisation-on-map-line-width) | [float](../types/float.md) | yes |
| [default_color](#default-color) | [float](../types/float.md) | yes |
| [eye_light](#eye-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [light_positions](#light-positions) | array[array[[Vector](../types/Vector.md)]] | yes |

### autopilot_destination_on_map_visualisation

**Type:** [Animation](../types/Animation.md) · _optional_

### autopilot_destination_queue_on_map_visualisation

**Type:** [Animation](../types/Animation.md) · _optional_

### autopilot_destination_queue_visualisation

**Type:** [Animation](../types/Animation.md) · _optional_

### autopilot_destination_visualisation

**Type:** [Animation](../types/Animation.md) · _optional_

### autopilot_destination_visualisation_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### autopilot_path_visualisation_line_width

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.125}`

### autopilot_path_visualisation_on_map_line_width

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 2.0}`

### default_color

**Type:** [float](../types/float.md) · _optional_

The default mask color for the spider vehicle. Defaults to orange.

### eye_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

Placed in multiple positions, as determined by `light_positions`.

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### light_positions

**Type:** array[array[[Vector](../types/Vector.md)]] · _optional_

Defines where each `eye_light` is placed. One array per eye and each of those arrays should contain one position per body direction.
