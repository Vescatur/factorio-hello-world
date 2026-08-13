# CargoHatchDefinition

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [busy_timeout_ticks](#busy-timeout-ticks) | [uint32](../types/uint32.md) | yes |
| [cargo_unit_entity_to_spawn](#cargo-unit-entity-to-spawn) | [EntityID](../types/EntityID.md) | yes |
| [closing_sound](#closing-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [entering_render_layer](#entering-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [hatch_graphics](#hatch-graphics) | [Animation](../types/Animation.md) | yes |
| [hatch_opening_ticks](#hatch-opening-ticks) | [uint32](../types/uint32.md) | yes |
| [hatch_render_layer](#hatch-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [illumination_graphic_index](#illumination-graphic-index) | [uint32](../types/uint32.md) | yes |
| [offset](#offset) | [Vector](../types/Vector.md) | yes |
| [opening_sound](#opening-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [pod_shadow_offset](#pod-shadow-offset) | [Vector](../types/Vector.md) | yes |
| [receiving_cargo_units](#receiving-cargo-units) | array[[EntityID](../types/EntityID.md)] | yes |
| [sky_slice_height](#sky-slice-height) | [float](../types/float.md) | yes |
| [slice_height](#slice-height) | [float](../types/float.md) | yes |
| [travel_height](#travel-height) | [float](../types/float.md) | yes |

### busy_timeout_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 120}`

### cargo_unit_entity_to_spawn

**Type:** [EntityID](../types/EntityID.md) · _optional_

### closing_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Cannot use `fade_ticks`.

### entering_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'cargo-hatch'}`

render layer for objects entering the hatch.

### hatch_graphics

**Type:** [Animation](../types/Animation.md) · _optional_

### hatch_opening_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 80}`

### hatch_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'cargo-hatch'}`

render layer for the hatch itself.

### illumination_graphic_index

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `MAX_UINT32`

[ProcessionGraphic](../types/ProcessionGraphic.md) index pointing to the [ProcessionGraphicCatalogue](../types/ProcessionGraphicCatalogue.md) inside the current [SpaceLocationPrototype](../prototypes/SpaceLocationPrototype.md).

### offset

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

### opening_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Cannot use `fade_ticks`.

### pod_shadow_offset

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{0, 0}``

### receiving_cargo_units

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

### sky_slice_height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': -1.0}`

y height relative to hatch position where the pod art gets clipped from sky to regular sorting layer.

### slice_height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

y height relative to hatch position where the pod art gets cut off.

### travel_height

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

y height relative to hatch position where the pod travels to during preparing and parking.
