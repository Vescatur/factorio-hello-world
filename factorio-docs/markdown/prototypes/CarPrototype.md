# CarPrototype

_prototype_

**Prototype type string:** `type = "car"`

**Inherits from:** [VehiclePrototype](../prototypes/VehiclePrototype.md)

Entity with specialized properties for acceleration, braking, and turning.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [auto_sort_inventory](#auto-sort-inventory) | [boolean](../types/boolean.md) | yes |
| [consumption](#consumption) | [Energy](../types/Energy.md) |  |
| [darkness_to_render_light_animation](#darkness-to-render-light-animation) | [float](../types/float.md) | yes |
| [driving_sound_volume_modifier](#driving-sound-volume-modifier) | [float](../types/float.md) | yes |
| [effectivity](#effectivity) | [double](../types/double.md) |  |
| [energy_source](#energy-source) | [BurnerEnergySource](../types/BurnerEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [guns](#guns) | array[[ItemID](../types/ItemID.md)] | yes |
| [has_belt_immunity](#has-belt-immunity) | [boolean](../types/boolean.md) | yes |
| [immune_to_all_impacts](#immune-to-all-impacts) | [boolean](../types/boolean.md) | yes |
| [immune_to_cliff_impacts](#immune-to-cliff-impacts) | [boolean](../types/boolean.md) | yes |
| [immune_to_rock_impacts](#immune-to-rock-impacts) | [boolean](../types/boolean.md) | yes |
| [immune_to_tree_impacts](#immune-to-tree-impacts) | [boolean](../types/boolean.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [light_animation](#light-animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [rotation_snap_angle](#rotation-snap-angle) | [double](../types/double.md) |  |
| [rotation_speed](#rotation-speed) | [double](../types/double.md) |  |
| [sound_no_fuel](#sound-no-fuel) | [Sound](../types/Sound.md) | yes |
| [tank_driving](#tank-driving) | [boolean](../types/boolean.md) | yes |
| [track_particle_triggers](#track-particle-triggers) | [FootstepTriggerEffectList](../types/FootstepTriggerEffectList.md) | yes |
| [trash_inventory_size](#trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [turret_animation](#turret-animation) | [RotatedAnimation](../types/RotatedAnimation.md) | yes |
| [turret_return_timeout](#turret-return-timeout) | [uint32](../types/uint32.md) | yes |
| [turret_rotation_speed](#turret-rotation-speed) | [float](../types/float.md) | yes |

### animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Animation speed 1 means 1 frame per tile.

### auto_sort_inventory

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this car prototype keeps the trunk inventory sorted.

### consumption

**Type:** [Energy](../types/Energy.md)

### darkness_to_render_light_animation

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.3}`

### driving_sound_volume_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

Cannot be negative.

### effectivity

**Type:** [double](../types/double.md)

Modifies the efficiency of energy transfer from burner output to wheels.

### energy_source

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

### guns

**Type:** array[[ItemID](../types/ItemID.md)] · _optional_

The names of the  [GunPrototype](../prototypes/GunPrototype.md)s this car prototype uses.

### has_belt_immunity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this car is immune to movement by belts.

### immune_to_all_impacts

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this car gets damaged by driving into anything.

### immune_to_cliff_impacts

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If this car gets damaged by driving against [cliffs](../prototypes/CliffPrototype.md).

### immune_to_rock_impacts

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this car gets damaged by driving over/against [rocks](../prototypes/SimpleEntityPrototype.md#count-as-rock-for-filtered-deconstruction).

### immune_to_tree_impacts

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this car gets damaged by driving over/against [trees](../prototypes/TreePrototype.md).

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Size of the car inventory.

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### light_animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Must have the same frame count as `animation`.

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

### rotation_snap_angle

**Type:** [double](../types/double.md)

Vehicle will snap the vertical, horizontal or diagonal axis if it's within this angle

### rotation_speed

**Type:** [double](../types/double.md)

### sound_no_fuel

**Type:** [Sound](../types/Sound.md) · _optional_

### tank_driving

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this car prototype uses tank controls to drive.

### track_particle_triggers

**Type:** [FootstepTriggerEffectList](../types/FootstepTriggerEffectList.md) · _optional_

### trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

If set to 0 then the car will not have a Logistics tab.

### turret_animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md) · _optional_

Animation speed 1 means 1 frame per tile.

### turret_return_timeout

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 60}`

Timeout in ticks specifying how long the turret must be inactive to return to the default position.

### turret_rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.01}`
