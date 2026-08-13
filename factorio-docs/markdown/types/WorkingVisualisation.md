# WorkingVisualisation

_type_

Used by crafting machines to display different graphics when the machine is running.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [align_to_waypoint](#align-to-waypoint) | [boolean](../types/boolean.md) | yes |
| [always_draw](#always-draw) | [boolean](../types/boolean.md) | yes |
| [animated_shift](#animated-shift) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [apply_recipe_tint](#apply-recipe-tint) | `"primary"` ∣ `"secondary"` ∣ `"tertiary"` ∣ `"quaternary"` ∣ `"none"` | yes |
| [apply_tint](#apply-tint) | `"resource-color"` ∣ `"input-fluid-base-color"` ∣ `"input-fluid-flow-color"` ∣ `"status"` ∣ `"none"` ∣ `"visual-state-color"` | yes |
| [constant_speed](#constant-speed) | [boolean](../types/boolean.md) | yes |
| [draw_in_states](#draw-in-states) | array[[string](../types/string.md)] | yes |
| [draw_when_state_filter_matches](#draw-when-state-filter-matches) | [boolean](../types/boolean.md) | yes |
| [east_animation](#east-animation) | [Animation](../types/Animation.md) | yes |
| [east_fog_mask](#east-fog-mask) | [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) | yes |
| [east_position](#east-position) | [Vector](../types/Vector.md) | yes |
| [east_secondary_draw_order](#east-secondary-draw-order) | [int8](../types/int8.md) | yes |
| [effect](#effect) | `"flicker"` ∣ `"uranium-glow"` ∣ `"none"` | yes |
| [enabled_by_name](#enabled-by-name) | [boolean](../types/boolean.md) | yes |
| [enabled_in_animated_shift_during_transition](#enabled-in-animated-shift-during-transition) | [boolean](../types/boolean.md) | yes |
| [enabled_in_animated_shift_during_waypoint_stop](#enabled-in-animated-shift-during-waypoint-stop) | [boolean](../types/boolean.md) | yes |
| [fadeout](#fadeout) | [boolean](../types/boolean.md) | yes |
| [fog_mask](#fog-mask) | [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) | yes |
| [frame_based_on_shift_animation_progress](#frame-based-on-shift-animation-progress) | [boolean](../types/boolean.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [mining_drill_scorch_mark](#mining-drill-scorch-mark) | [boolean](../types/boolean.md) | yes |
| [name](#name) | [string](../types/string.md) | yes |
| [north_animation](#north-animation) | [Animation](../types/Animation.md) | yes |
| [north_fog_mask](#north-fog-mask) | [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) | yes |
| [north_position](#north-position) | [Vector](../types/Vector.md) | yes |
| [north_secondary_draw_order](#north-secondary-draw-order) | [int8](../types/int8.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [scorch_mark_fade_in_frames](#scorch-mark-fade-in-frames) | [uint8](../types/uint8.md) | yes |
| [scorch_mark_fade_out_duration](#scorch-mark-fade-out-duration) | [uint16](../types/uint16.md) | yes |
| [scorch_mark_lifetime](#scorch-mark-lifetime) | [uint16](../types/uint16.md) | yes |
| [secondary_draw_order](#secondary-draw-order) | [int8](../types/int8.md) | yes |
| [south_animation](#south-animation) | [Animation](../types/Animation.md) | yes |
| [south_fog_mask](#south-fog-mask) | [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) | yes |
| [south_position](#south-position) | [Vector](../types/Vector.md) | yes |
| [south_secondary_draw_order](#south-secondary-draw-order) | [int8](../types/int8.md) | yes |
| [synced_fadeout](#synced-fadeout) | [boolean](../types/boolean.md) | yes |
| [west_animation](#west-animation) | [Animation](../types/Animation.md) | yes |
| [west_fog_mask](#west-fog-mask) | [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) | yes |
| [west_position](#west-position) | [Vector](../types/Vector.md) | yes |
| [west_secondary_draw_order](#west-secondary-draw-order) | [int8](../types/int8.md) | yes |

### align_to_waypoint

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### always_draw

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### animated_shift

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

### apply_recipe_tint

**Type:** `"primary"` ∣ `"secondary"` ∣ `"tertiary"` ∣ `"quaternary"` ∣ `"none"` · _optional_

Used by [CraftingMachinePrototype](../prototypes/CraftingMachinePrototype.md). Has precedence over `apply_tint`.

### apply_tint

**Type:** `"resource-color"` ∣ `"input-fluid-base-color"` ∣ `"input-fluid-flow-color"` ∣ `"status"` ∣ `"none"` ∣ `"visual-state-color"` · _optional_

Used by [CraftingMachinePrototype](../prototypes/CraftingMachinePrototype.md) ("status" and "visual-state-color" only) and [MiningDrillPrototype](../prototypes/MiningDrillPrototype.md).

For "status" on CraftingMachine and MiningDrill, the colors are specified via [WorkingVisualisations::status_colors](../types/WorkingVisualisations.md#status-colors). For "resource-color", the colors are specified via [ResourceEntityPrototype::mining_visualisation_tint](../prototypes/ResourceEntityPrototype.md#mining-visualisation-tint).

### constant_speed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the animations are always played at the same speed, not adjusted to the machine speed.

### draw_in_states

**Type:** array[[string](../types/string.md)] · _optional_

Only loaded if [WorkingVisualisations::states](../types/WorkingVisualisations.md#states) is defined in the WorkingVisualisations that loads this.

### draw_when_state_filter_matches

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Only loaded if [WorkingVisualisations::states](../types/WorkingVisualisations.md#states) is defined in the WorkingVisualisations that loads this.

### east_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### east_fog_mask

**Type:** [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) · _optional_

If defined, animation in this visualisation layer will be used only as mask for fog effect and will not render in world.

### east_position

**Type:** [Vector](../types/Vector.md) · _optional_

### east_secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `Value of `secondary_draw_order``

### effect

**Type:** `"flicker"` ∣ `"uranium-glow"` ∣ `"none"` · _optional_

### enabled_by_name

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### enabled_in_animated_shift_during_transition

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### enabled_in_animated_shift_during_waypoint_stop

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### fadeout

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### fog_mask

**Type:** [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) · _optional_

Loaded only if at least one of north_fog_mask, east_fog_mask, south_fog_mask, west_fog_mask is not specified.

If defined, animation in this visualisation layer will be used only as mask for fog effect and will not render in world.

### frame_based_on_shift_animation_progress

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### mining_drill_scorch_mark

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### name

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Used by [MainSound::play_for_working_visualisations](../types/MainSound.md#play-for-working-visualisations), [SoundAccent::play_for_working_visualisation](../types/SoundAccent.md#play-for-working-visualisation), [FluidBox::enable_working_visualisations](../types/FluidBox.md#enable-working-visualisations), and [PipeConnectionDefinition::enable_working_visualisations](../types/PipeConnectionDefinition.md#enable-working-visualisations).

### north_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### north_fog_mask

**Type:** [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) · _optional_

If defined, animation in this visualisation layer will be used only as mask for fog effect and will not render in world.

### north_position

**Type:** [Vector](../types/Vector.md) · _optional_

### north_secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `Value of `secondary_draw_order``

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### scorch_mark_fade_in_frames

**Type:** [uint8](../types/uint8.md) · _optional_

Only loaded, and mandatory if `mining_drill_scorch_mark` is `true`.

### scorch_mark_fade_out_duration

**Type:** [uint16](../types/uint16.md) · _optional_

Only loaded, and mandatory if `mining_drill_scorch_mark` is `true`. Cannot be larger than `scorch_mark_lifetime`.

### scorch_mark_lifetime

**Type:** [uint16](../types/uint16.md) · _optional_

Only loaded, and mandatory if `mining_drill_scorch_mark` is `true`.

### secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_

Used to determine render order for sprites with the same `render_layer` in the same position. Sprites with a higher `secondary_draw_order` are drawn on top.

### south_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### south_fog_mask

**Type:** [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) · _optional_

If defined, animation in this visualisation layer will be used only as mask for fog effect and will not render in world.

### south_position

**Type:** [Vector](../types/Vector.md) · _optional_

### south_secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `Value of `secondary_draw_order``

### synced_fadeout

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### west_animation

**Type:** [Animation](../types/Animation.md) · _optional_

### west_fog_mask

**Type:** [FogMaskShapeDefinition](../types/FogMaskShapeDefinition.md) · _optional_

If defined, animation in this visualisation layer will be used only as mask for fog effect and will not render in world.

### west_position

**Type:** [Vector](../types/Vector.md) · _optional_

### west_secondary_draw_order

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `Value of `secondary_draw_order``
