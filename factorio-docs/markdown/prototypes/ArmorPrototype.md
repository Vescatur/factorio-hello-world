# ArmorPrototype

_prototype_

**Prototype type string:** `type = "armor"`

**Inherits from:** [ToolPrototype](../prototypes/ToolPrototype.md)

Armor to wear on your in-game [character](../prototypes/CharacterPrototype.md) for defense and buffs.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [drawing_box](#drawing-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [equipment_grid](#equipment-grid) | [EquipmentGridID](../types/EquipmentGridID.md) | yes |
| [flight_sound](#flight-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [inventory_size_bonus](#inventory-size-bonus) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [landing_sound](#landing-sound) | [Sound](../types/Sound.md) | yes |
| [moving_sound](#moving-sound) | [Sound](../types/Sound.md) | yes |
| [provides_flight](#provides-flight) | [boolean](../types/boolean.md) | yes |
| [resistances](#resistances) | array[[Resistance](../types/Resistance.md)] | yes |
| [steps_sound](#steps-sound) | [Sound](../types/Sound.md) | yes |
| [takeoff_sound](#takeoff-sound) | [Sound](../types/Sound.md) | yes |

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_

### drawing_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_

### equipment_grid

**Type:** [EquipmentGridID](../types/EquipmentGridID.md) · _optional_

Name of the [EquipmentGridPrototype](../prototypes/EquipmentGridPrototype.md) that this armor has.

### flight_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

Only loaded if `provides_flight` is `true`.

### inventory_size_bonus

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_

By how many slots the inventory of the player is expanded when the armor is worn.

### landing_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Only loaded if `provides_flight` is `true`.

### moving_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### provides_flight

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### resistances

**Type:** array[[Resistance](../types/Resistance.md)] · _optional_

What amount of damage the armor takes on what type of damage is incoming.

### steps_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### takeoff_sound

**Type:** [Sound](../types/Sound.md) · _optional_

Only loaded if `provides_flight` is `true`.
