# SpeechBubblePrototype

_prototype_

**Prototype type string:** `type = "speech-bubble"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

A speech bubble. It floats in the world and can display text.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [fade_in_out_ticks](#fade-in-out-ticks) | [uint32](../types/uint32.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [style](#style) | [string](../types/string.md) |  |
| [wrapper_flow_style](#wrapper-flow-style) | [string](../types/string.md) | yes |
| [y_offset](#y-offset) | [double](../types/double.md) | yes |

### fade_in_out_ticks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 60}`

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### style

**Type:** [string](../types/string.md)

Needs a style of the type "speech_bubble_style", defined inside the gui styles.

### wrapper_flow_style

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'flow_style'}`

Needs a style of the type "flow_style", defined inside the gui styles.

### y_offset

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
