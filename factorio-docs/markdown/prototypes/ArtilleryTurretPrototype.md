# ArtilleryTurretPrototype

_prototype_

**Prototype type string:** `type = "artillery-turret"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An [artillery turret](https://wiki.factorio.com/Artillery_turret).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alert_when_attacking](#alert-when-attacking) | [boolean](../types/boolean.md) | yes |
| [ammo_stack_limit](#ammo-stack-limit) | [ItemCountType](../types/ItemCountType.md) |  |
| [automated_ammo_count](#automated-ammo-count) | [ItemCountType](../types/ItemCountType.md) | yes |
| [base_picture](#base-picture) | [Animation4Way](../types/Animation4Way.md) | yes |
| [base_picture_render_layer](#base-picture-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [base_picture_secondary_draw_order](#base-picture-secondary-draw-order) | [uint8](../types/uint8.md) | yes |
| [cannon_barrel_light_direction](#cannon-barrel-light-direction) | [Vector3D](../types/Vector3D.md) | yes |
| [cannon_barrel_pictures](#cannon-barrel-pictures) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [cannon_barrel_recoil_shiftings](#cannon-barrel-recoil-shiftings) | array[[Vector3D](../types/Vector3D.md)] | yes |
| [cannon_barrel_recoil_shiftings_load_correction_matrix](#cannon-barrel-recoil-shiftings-load-correction-matrix) | array[[Vector3D](../types/Vector3D.md)] | yes |
| [cannon_base_pictures](#cannon-base-pictures) | [RotatedSprite](../types/RotatedSprite.md) | yes |
| [cannon_base_shift](#cannon-base-shift) | [Vector3D](../types/Vector3D.md) |  |
| [cannon_parking_frame_count](#cannon-parking-frame-count) | [uint16](../types/uint16.md) | yes |
| [cannon_parking_speed](#cannon-parking-speed) | [float](../types/float.md) | yes |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [disable_automatic_firing](#disable-automatic-firing) | [boolean](../types/boolean.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [gun](#gun) | [ItemID](../types/ItemID.md) |  |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [manual_range_modifier](#manual-range-modifier) | [double](../types/double.md) |  |
| [rotating_sound](#rotating-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [turn_after_shooting_cooldown](#turn-after-shooting-cooldown) | [uint16](../types/uint16.md) | yes |
| [turret_rotation_speed](#turret-rotation-speed) | [double](../types/double.md) |  |

### alert_when_attacking

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### ammo_stack_limit

**Type:** [ItemCountType](../types/ItemCountType.md)

Must be > 0.

### automated_ammo_count

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_

Must be > 0. The amount of ammo that inserters automatically insert into this artillery turret.

### base_picture

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### base_picture_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

### base_picture_secondary_draw_order

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### cannon_barrel_light_direction

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

Only loaded if `cannon_barrel_recoil_shiftings` is loaded.

### cannon_barrel_pictures

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### cannon_barrel_recoil_shiftings

**Type:** array[[Vector3D](../types/Vector3D.md)] · _optional_

### cannon_barrel_recoil_shiftings_load_correction_matrix

**Type:** array[[Vector3D](../types/Vector3D.md)] · _optional_

Only loaded if `cannon_barrel_recoil_shiftings` is loaded.

### cannon_base_pictures

**Type:** [RotatedSprite](../types/RotatedSprite.md) · _optional_

### cannon_base_shift

**Type:** [Vector3D](../types/Vector3D.md)

### cannon_parking_frame_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### cannon_parking_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be positive.

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### disable_automatic_firing

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### gun

**Type:** [ItemID](../types/ItemID.md)

Name of a [GunPrototype](../prototypes/GunPrototype.md).

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Must be > 0.

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### manual_range_modifier

**Type:** [double](../types/double.md)

Must be positive.

### rotating_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### turn_after_shooting_cooldown

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### turret_rotation_speed

**Type:** [double](../types/double.md)
