# ConstantCombinatorPrototype

_prototype_

**Prototype type string:** `type = "constant-combinator"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [constant combinator](https://wiki.factorio.com/Constant_combinator).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [activity_led_light](#activity-led-light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [activity_led_light_offsets](#activity-led-light-offsets) | tuple[[Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md)] |  |
| [activity_led_sprites](#activity-led-sprites) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [circuit_wire_connection_points](#circuit-wire-connection-points) | tuple[[WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md)] |  |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [pulse_duration](#pulse-duration) | [uint32](../types/uint32.md) | yes |
| [sprites](#sprites) | [Sprite4Way](../types/Sprite4Way.md) | yes |

### activity_led_light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### activity_led_light_offsets

**Type:** tuple[[Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md), [Vector](../types/Vector.md)]

### activity_led_sprites

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### circuit_wire_connection_points

**Type:** tuple[[WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md), [WireConnectionPoint](../types/WireConnectionPoint.md)]

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### pulse_duration

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

When not zero, toggle entity will enable constant combinator for that amount of ticks and then turn it off.

### sprites

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_
