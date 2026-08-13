# DisplayPanelPrototype

_prototype_

**Prototype type string:** `type = "display-panel"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Entity that display a signal icon and some text, either configured directly in the entity or through the circuit network.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [background_color](#background-color) | [Color](../types/Color.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [max_records_count](#max-records-count) | [uint32](../types/uint32.md) | yes |
| [max_text_length](#max-text-length) | [uint32](../types/uint32.md) | yes |
| [max_text_width](#max-text-width) | [uint32](../types/uint32.md) | yes |
| [sprites](#sprites) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [text_color](#text-color) | [Color](../types/Color.md) | yes |
| [text_shift](#text-shift) | [Vector](../types/Vector.md) | yes |

### background_color

**Type:** [Color](../types/Color.md) · _optional_

The background color of the display panel text.

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### max_records_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 100}`

Maximum amount of message records that can be configured in this display panel when it is connected to circuit network. Must be >= 1.

### max_text_length

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 500}`

Maximum length of the text. If the text exceeds this length all characters beyond the limit will be discarded.

### max_text_width

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 400}`

The maximum display width of the text on the display panel. If the text exceeds this width it will be wrapped so that it continues on the next line.

### sprites

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

The display panel's graphics.

### text_color

**Type:** [Color](../types/Color.md) · _optional_

The color of the text on the display panel.

### text_shift

**Type:** [Vector](../types/Vector.md) · _optional_

The shift of the text on the display panel.
