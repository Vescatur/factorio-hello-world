# WorkingVisualisations

_type_ · **abstract**

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [always_draw_idle_animation](#always-draw-idle-animation) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [default_recipe_tint](#default-recipe-tint) | [GlobalRecipeTints](../types/GlobalRecipeTints.md) | yes |
| [idle_animation](#idle-animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [recipe_not_set_tint](#recipe-not-set-tint) | [GlobalRecipeTints](../types/GlobalRecipeTints.md) | yes |
| [shift_animation_transition_duration](#shift-animation-transition-duration) | [uint16](../types/uint16.md) | yes |
| [shift_animation_waypoint_stop_duration](#shift-animation-waypoint-stop-duration) | [uint16](../types/uint16.md) | yes |
| [shift_animation_waypoints](#shift-animation-waypoints) | [ShiftAnimationWaypoints](../types/ShiftAnimationWaypoints.md) | yes |
| [states](#states) | array[[VisualState](../types/VisualState.md)] | yes |
| [status_colors](#status-colors) | [StatusColors](../types/StatusColors.md) | yes |
| [working_visualisations](#working-visualisations) | array[[WorkingVisualisation](../types/WorkingVisualisation.md)] | yes |

### always_draw_idle_animation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Only loaded if `idle_animation` is defined.

### animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### default_recipe_tint

**Type:** [GlobalRecipeTints](../types/GlobalRecipeTints.md) · _optional_

### idle_animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Idle animation must have the same frame count as animation.

### recipe_not_set_tint

**Type:** [GlobalRecipeTints](../types/GlobalRecipeTints.md) · _optional_

### shift_animation_transition_duration

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `shift_animation_waypoints` is defined.

### shift_animation_waypoint_stop_duration

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if `shift_animation_waypoints` is defined.

### shift_animation_waypoints

**Type:** [ShiftAnimationWaypoints](../types/ShiftAnimationWaypoints.md) · _optional_

Only loaded if one of `shift_animation_waypoint_stop_duration` or `shift_animation_transition_duration` is not 0.

### states

**Type:** array[[VisualState](../types/VisualState.md)] · _optional_

At least 2 visual states must be defined or no states at all. At most 32 states may be defined.

### status_colors

**Type:** [StatusColors](../types/StatusColors.md) · _optional_

Used by [WorkingVisualisation::apply_tint](../types/WorkingVisualisation.md#apply-tint).

### working_visualisations

**Type:** array[[WorkingVisualisation](../types/WorkingVisualisation.md)] · _optional_

Used to display different animations when the machine is running, for example tinted based on the current recipe.
