# LandMinePrototype

_prototype_

**Prototype type string:** `type = "land-mine"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [land mine](https://wiki.factorio.com/Land_mine).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [ammo_category](#ammo-category) | [AmmoCategoryID](../types/AmmoCategoryID.md) | yes |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [force_die_on_attack](#force-die-on-attack) | [boolean](../types/boolean.md) | yes |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [picture_safe](#picture-safe) | [Sprite](../types/Sprite.md) | yes |
| [picture_set](#picture-set) | [Sprite](../types/Sprite.md) | yes |
| [picture_set_enemy](#picture-set-enemy) | [Sprite](../types/Sprite.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [timeout](#timeout) | [uint32](../types/uint32.md) | yes |
| [trigger_collision_mask](#trigger-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [trigger_force](#trigger-force) | [ForceCondition](../types/ForceCondition.md) | yes |
| [trigger_interval](#trigger-interval) | [uint32](../types/uint32.md) | yes |
| [trigger_radius](#trigger-radius) | [double](../types/double.md) |  |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

### ammo_category

**Type:** [AmmoCategoryID](../types/AmmoCategoryID.md) · _optional_

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### force_die_on_attack

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Force the landmine to kill itself when exploding.

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### picture_safe

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite of the landmine before it is armed (just after placing).

### picture_set

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite of the landmine of a friendly force when it is armed.

### picture_set_enemy

**Type:** [Sprite](../types/Sprite.md) · _optional_

The sprite of the landmine of an enemy force when it is armed.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### timeout

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 120}`

Time between placing and the landmine being armed, in ticks.

### trigger_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_ · **Default:** `Value of UtilityConstants::building_collision_mask`

Collision mask that another entity must collide with to make this landmine blow up.

### trigger_force

**Type:** [ForceCondition](../types/ForceCondition.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'enemy'}`

### trigger_interval

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

Time between checks to detonate due to nearby enemies, in ticks. A larger time will be more performant.

### trigger_radius

**Type:** [double](../types/double.md)
