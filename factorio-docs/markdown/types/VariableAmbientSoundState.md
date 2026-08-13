# VariableAmbientSoundState

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [end_pause](#end-pause) | [RandomRange](../types/RandomRange.md) | yes |
| [layers_properties](#layers-properties) | array[[VariableAmbientSoundLayerStateProperties](../types/VariableAmbientSoundLayerStateProperties.md)] | yes |
| [name](#name) | [string](../types/string.md) |  |
| [next_state](#next-state) | [string](../types/string.md) | yes |
| [next_state_layers_finished_layers](#next-state-layers-finished-layers) | array[[string](../types/string.md)] | yes |
| [next_state_trigger](#next-state-trigger) | [VariableAmbientSoundNextStateTrigger](../types/VariableAmbientSoundNextStateTrigger.md) | yes |
| [next_states](#next-states) | array[[VariableAmbientSoundNextStateItem](../types/VariableAmbientSoundNextStateItem.md)] | yes |
| [number_of_enabled_layers](#number-of-enabled-layers) | [RandomRange](../types/RandomRange.md) | yes |
| [start_pause](#start-pause) | [RandomRange](../types/RandomRange.md) | yes |
| [state_duration_seconds](#state-duration-seconds) | [uint32](../types/uint32.md) | yes |
| [type](#type) | [VariableAmbientSoundStateType](../types/VariableAmbientSoundStateType.md) | yes |

### end_pause

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Pause before a layer finishes playing. The layer being finished is not counted until the pause finishes.

Optionally loaded for `intermezzo` states.

### layers_properties

**Type:** array[[VariableAmbientSoundLayerStateProperties](../types/VariableAmbientSoundLayerStateProperties.md)] · _optional_

Must contain as many items as there is layers in the variable track. The items themselves can be empty. The order of items corresponds to the order of layers as they appear in the prototype definition.

Mandatory for `regular` and `final` states.

Cannot be defined for `intermezzo` or `stop` states.

### name

**Type:** [string](../types/string.md)

Name has to be unique across all states.

### next_state

**Type:** [string](../types/string.md) · _optional_

Cannot be defined if `next_states` is defined.

Doesn't need to be defined if there is only one state.

### next_state_layers_finished_layers

**Type:** array[[string](../types/string.md)] · _optional_

List of name of layers used to trigger state transition.

Only loaded, and mandatory if `next_state_trigger` is `"layers-finished"`.

### next_state_trigger

**Type:** [VariableAmbientSoundNextStateTrigger](../types/VariableAmbientSoundNextStateTrigger.md) · _optional_

Mandatory if there is more than one state or if the only state transitions to itself.

Can be defined for `regular` states only.

### next_states

**Type:** array[[VariableAmbientSoundNextStateItem](../types/VariableAmbientSoundNextStateItem.md)] · _optional_

Cannot be defined if `next_state` is defined.

Cannot be defined if there is only one state.

Cannot be empty.

### number_of_enabled_layers

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Defines how many layers will be playing. Which layers will be playing is selected randomly.

The minimum cannot be zero, the maximum cannot be greater than the number of layers.

Cannot be defined if any of `layers_properties` define the `enabled` property.

Cannot be defined for `intermezzo` or `stop` states.

### start_pause

**Type:** [RandomRange](../types/RandomRange.md) · _optional_

Pause before a layer starts playing.

Optionally loaded for `intermezzo` states.

### state_duration_seconds

**Type:** [uint32](../types/uint32.md) · _optional_

Defines for how long this state will be active.

Mandatory if `next_state_trigger` is `"duration"`.

Optionally loaded for `intermezzo` states.

### type

**Type:** [VariableAmbientSoundStateType](../types/VariableAmbientSoundStateType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'regular'}`
