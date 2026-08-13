# ArtilleryWagonPrototype

_prototype_

**Prototype type string:** `type = "artillery-wagon"`

**Inherits from:** [RollingStockPrototype](../prototypes/RollingStockPrototype.md)

An [artillery wagon](https://wiki.factorio.com/Artillery_wagon).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ammo_stack_limit](#ammo-stack-limit) | [ItemCountType](../types/ItemCountType.md) |  |
| [automated_ammo_count](#automated-ammo-count) | [ItemCountType](../types/ItemCountType.md) | yes |
| [cannon_barrel_light_direction](#cannon-barrel-light-direction) | [Vector3D](../types/Vector3D.md) | yes |
| [cannon_barrel_pictures](#cannon-barrel-pictures) | [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) | yes |
| [cannon_barrel_recoil_shiftings](#cannon-barrel-recoil-shiftings) | array[[Vector3D](../types/Vector3D.md)] | yes |
| [cannon_barrel_recoil_shiftings_load_correction_matrix](#cannon-barrel-recoil-shiftings-load-correction-matrix) | array[[Vector3D](../types/Vector3D.md)] | yes |
| [cannon_base_height](#cannon-base-height) | [double](../types/double.md) | yes |
| [cannon_base_pictures](#cannon-base-pictures) | [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) | yes |
| [cannon_base_shift_when_horizontal](#cannon-base-shift-when-horizontal) | [double](../types/double.md) | yes |
| [cannon_base_shift_when_vertical](#cannon-base-shift-when-vertical) | [double](../types/double.md) | yes |
| [cannon_parking_frame_count](#cannon-parking-frame-count) | [uint16](../types/uint16.md) | yes |
| [cannon_parking_speed](#cannon-parking-speed) | [float](../types/float.md) | yes |
| [disable_automatic_firing](#disable-automatic-firing) | [boolean](../types/boolean.md) | yes |
| [gun](#gun) | [ItemID](../types/ItemID.md) |  |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [manual_range_modifier](#manual-range-modifier) | [double](../types/double.md) |  |
| [rotating_sound](#rotating-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [turn_after_shooting_cooldown](#turn-after-shooting-cooldown) | [uint16](../types/uint16.md) | yes |
| [turret_rotation_speed](#turret-rotation-speed) | [double](../types/double.md) |  |

### ammo_stack_limit

**Type:** [ItemCountType](../types/ItemCountType.md)

Must be > 0.

### automated_ammo_count

**Type:** [ItemCountType](../types/ItemCountType.md) · _optional_

Must be > 0. The amount of ammo that inserters automatically insert into this artillery wagon.

### cannon_barrel_light_direction

**Type:** [Vector3D](../types/Vector3D.md) · _optional_

Only loaded if `cannon_barrel_recoil_shiftings` is loaded.

### cannon_barrel_pictures

**Type:** [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) · _optional_

### cannon_barrel_recoil_shiftings

**Type:** array[[Vector3D](../types/Vector3D.md)] · _optional_

### cannon_barrel_recoil_shiftings_load_correction_matrix

**Type:** array[[Vector3D](../types/Vector3D.md)] · _optional_

Only loaded if `cannon_barrel_recoil_shiftings` is loaded.

### cannon_base_height

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### cannon_base_pictures

**Type:** [RollingStockRotatedSlopedGraphics](../types/RollingStockRotatedSlopedGraphics.md) · _optional_

### cannon_base_shift_when_horizontal

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### cannon_base_shift_when_vertical

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### cannon_parking_frame_count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### cannon_parking_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be positive.

### disable_automatic_firing

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### gun

**Type:** [ItemID](../types/ItemID.md)

Name of a [GunPrototype](../prototypes/GunPrototype.md).

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Must be > 0.

### manual_range_modifier

**Type:** [double](../types/double.md)

Must be > 0.

### rotating_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### turn_after_shooting_cooldown

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### turret_rotation_speed

**Type:** [double](../types/double.md)
