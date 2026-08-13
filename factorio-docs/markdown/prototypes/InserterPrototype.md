# InserterPrototype

_prototype_

**Prototype type string:** `type = "inserter"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An [inserter](https://wiki.factorio.com/Inserter).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_burner_leech](#allow-burner-leech) | [boolean](../types/boolean.md) | yes |
| [allow_custom_vectors](#allow-custom-vectors) | [boolean](../types/boolean.md) | yes |
| [bulk](#bulk) | [boolean](../types/boolean.md) | yes |
| [chases_belt_items](#chases-belt-items) | [boolean](../types/boolean.md) | yes |
| [circuit_connector](#circuit-connector) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_connector_flipped](#circuit-connector-flipped) | tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_stack_control_input_signal](#default-stack-control-input-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [draw_held_item](#draw-held-item) | [boolean](../types/boolean.md) | yes |
| [draw_inserter_arrow](#draw-inserter-arrow) | [boolean](../types/boolean.md) | yes |
| [energy_per_movement](#energy-per-movement) | [Energy](../types/Energy.md) | yes |
| [energy_per_rotation](#energy-per-rotation) | [Energy](../types/Energy.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [enter_drop_mode_if_held_stack_spoiled](#enter-drop-mode-if-held-stack-spoiled) | [boolean](../types/boolean.md) | yes |
| [extension_speed](#extension-speed) | [double](../types/double.md) |  |
| [filter_count](#filter-count) | [uint8](../types/uint8.md) | yes |
| [grab_less_to_match_belt_stack](#grab-less-to-match-belt-stack) | [boolean](../types/boolean.md) | yes |
| [hand_base_frozen](#hand-base-frozen) | [Sprite](../types/Sprite.md) | yes |
| [hand_base_picture](#hand-base-picture) | [Sprite](../types/Sprite.md) | yes |
| [hand_base_shadow](#hand-base-shadow) | [Sprite](../types/Sprite.md) | yes |
| [hand_closed_frozen](#hand-closed-frozen) | [Sprite](../types/Sprite.md) | yes |
| [hand_closed_picture](#hand-closed-picture) | [Sprite](../types/Sprite.md) | yes |
| [hand_closed_shadow](#hand-closed-shadow) | [Sprite](../types/Sprite.md) | yes |
| [hand_open_frozen](#hand-open-frozen) | [Sprite](../types/Sprite.md) | yes |
| [hand_open_picture](#hand-open-picture) | [Sprite](../types/Sprite.md) | yes |
| [hand_open_shadow](#hand-open-shadow) | [Sprite](../types/Sprite.md) | yes |
| [hand_size](#hand-size) | [double](../types/double.md) | yes |
| [insert_position](#insert-position) | [Vector](../types/Vector.md) |  |
| [max_belt_stack_size](#max-belt-stack-size) | [uint8](../types/uint8.md) | yes |
| [pickup_position](#pickup-position) | [Vector](../types/Vector.md) |  |
| [platform_frozen](#platform-frozen) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [platform_frozen_flipped](#platform-frozen-flipped) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [platform_picture](#platform-picture) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [platform_picture_flipped](#platform-picture-flipped) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [rotation_speed](#rotation-speed) | [double](../types/double.md) |  |
| [stack_size_bonus](#stack-size-bonus) | [uint8](../types/uint8.md) | yes |
| [starting_distance](#starting-distance) | [double](../types/double.md) | yes |
| [use_easter_egg](#use-easter-egg) | [boolean](../types/boolean.md) | yes |
| [use_mirroring](#use-mirroring) | [boolean](../types/boolean.md) | yes |
| [uses_inserter_stack_size_bonus](#uses-inserter-stack-size-bonus) | [boolean](../types/boolean.md) | yes |
| [wait_for_full_hand](#wait-for-full-hand) | [boolean](../types/boolean.md) | yes |

### allow_burner_leech

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this burner inserter can fuel itself from the fuel inventory of the entity it is picking up items from.

### allow_custom_vectors

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether pickup and insert position can be set run-time.

### bulk

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this inserter is considered a bulk inserter. Relevant for determining how [inserter capacity bonus (research)](https://wiki.factorio.com/Inserter_capacity_bonus_(research)) applies to the inserter.

### chases_belt_items

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the inserter hand should move to the items it picks up from belts, leading to item chasing behaviour. If this is off, the inserter hand will stay in the center of the belt and any items picked up from the edges of the belt "teleport" to the inserter hand.

### circuit_connector

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_connector_flipped

**Type:** tuple[[CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md), [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md)] · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### default_stack_control_input_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_held_item

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the item that the inserter is holding should be drawn.

### draw_inserter_arrow

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the yellow arrow that indicates the drop point of the inserter and the line that indicates the pickup position should be drawn.

### energy_per_movement

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### energy_per_rotation

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

Defines how this inserter gets energy. The emissions set on the energy source are ignored so inserters cannot produce pollution.

### enter_drop_mode_if_held_stack_spoiled

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If inserter waits for full hand it could become stuck when item in hand changed because of spoiling. If this flag is set then inserter will start dropping held stack even if it was waiting for full hand.

### extension_speed

**Type:** [double](../types/double.md)

### filter_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

How many filters this inserter has. Maximum count of filtered items in inserter is 5.

### grab_less_to_match_belt_stack

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If drop target is belt, inserter may grab less so that it does not drop partial stacks unless it is forced to drop partial.

### hand_base_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_base_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_base_shadow

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_closed_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_closed_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_closed_shadow

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_open_frozen

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_open_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_open_shadow

**Type:** [Sprite](../types/Sprite.md) · _optional_

### hand_size

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.75}`

Used to determine how long the arm of the inserter is when drawing it. Does not affect gameplay. The lower the value, the straighter the arm. Increasing the value will give the inserter a bigger bend due to its longer parts.

### insert_position

**Type:** [Vector](../types/Vector.md)

### max_belt_stack_size

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

This inserter will not create stacks on belt with more than this amount of items. Must be >= 1.

### pickup_position

**Type:** [Vector](../types/Vector.md)

### platform_frozen

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### platform_frozen_flipped

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### platform_picture

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### platform_picture_flipped

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### rotation_speed

**Type:** [double](../types/double.md)

### stack_size_bonus

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Stack size bonus that is inherent to the prototype without having to be researched.

### starting_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.7}`

### use_easter_egg

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the inserter should be able to fish [fish](https://wiki.factorio.com/Raw_fish).

### use_mirroring

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### uses_inserter_stack_size_bonus

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When set to false, then relevant value of inserter stack size bonus ([LuaForce::inserter_stack_size_bonus](../classes/LuaForce.md#inserter-stack-size-bonus) or [LuaForce::bulk_inserter_capacity_bonus](../classes/LuaForce.md#bulk-inserter-capacity-bonus)) will not affect inserter stack size.

### wait_for_full_hand

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Inserter will wait until its hand is full.
