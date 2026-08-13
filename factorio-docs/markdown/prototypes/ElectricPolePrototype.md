# ElectricPolePrototype

_prototype_

**Prototype type string:** `type = "electric-pole"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An electric pole - part of the [electric system](https://wiki.factorio.com/Electric_system).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [active_picture](#active-picture) | [Sprite](../types/Sprite.md) | yes |
| [auto_connect_up_to_n_wires](#auto-connect-up-to-n-wires) | [uint8](../types/uint8.md) | yes |
| [connection_points](#connection-points) | array[[WireConnectionPoint](../types/WireConnectionPoint.md)] |  |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [maximum_wire_distance](#maximum-wire-distance) | [double](../types/double.md) | yes |
| [pictures](#pictures) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [radius_visualisation_picture](#radius-visualisation-picture) | [Sprite](../types/Sprite.md) | yes |
| [rewire_neighbours_when_destroying](#rewire-neighbours-when-destroying) | [boolean](../types/boolean.md) | yes |
| [supply_area_distance](#supply-area-distance) | [double](../types/double.md) |  |
| [track_coverage_during_drag_building](#track-coverage-during-drag-building) | [boolean](../types/boolean.md) | yes |

### active_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

Drawn above the `pictures` when the electric pole is connected to an electric network.

### auto_connect_up_to_n_wires

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

`0` means disable auto-connect.

### connection_points

**Type:** array[[WireConnectionPoint](../types/WireConnectionPoint.md)]

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

Drawn when the electric pole is connected to an electric network.

### maximum_wire_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum distance between this pole and any other connected pole - if two poles are farther apart than this, they cannot be connected together directly. Corresponds to "wire reach" in the item tooltip.

Max value is 64.

### pictures

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### radius_visualisation_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### rewire_neighbours_when_destroying

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### supply_area_distance

**Type:** [double](../types/double.md)

The "radius" of this pole's supply area. Corresponds to *half* of the "supply area" in the item tooltip. If this is 3.5, the pole will have a 7x7 supply area.

Max value is 64.

### track_coverage_during_drag_building

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`
