# SpiderVehiclePrototype

_prototype_

**Prototype type string:** `type = "spider-vehicle"`

**Inherits from:** [VehiclePrototype](../prototypes/VehiclePrototype.md)

A [spidertron](https://wiki.factorio.com/Spidertron).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [automatic_weapon_cycling](#automatic-weapon-cycling) | [boolean](../types/boolean.md) |  |
| [chain_shooting_cooldown_modifier](#chain-shooting-cooldown-modifier) | [float](../types/float.md) |  |
| [energy_source](#energy-source) | [BurnerEnergySource](../types/BurnerEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [graphics_set](#graphics-set) | [SpiderVehicleGraphicsSet](../types/SpiderVehicleGraphicsSet.md) | yes |
| [guns](#guns) | array[[ItemID](../types/ItemID.md)] | yes |
| [height](#height) | [float](../types/float.md) |  |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [movement_energy_consumption](#movement-energy-consumption) | [Energy](../types/Energy.md) |  |
| [spider_engine](#spider-engine) | [SpiderEngineSpecification](../types/SpiderEngineSpecification.md) |  |
| [torso_bob_speed](#torso-bob-speed) | [float](../types/float.md) | yes |
| [torso_rotation_speed](#torso-rotation-speed) | [float](../types/float.md) | yes |
| [trash_inventory_size](#trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |

### automatic_weapon_cycling

**Type:** [boolean](../types/boolean.md)

### chain_shooting_cooldown_modifier

**Type:** [float](../types/float.md)

This is applied whenever the spider shoots (manual and automatic targeting), `automatic_weapon_cycling` is true and the next gun in line (which is then selected) has ammo. When all of the above is the case, the chain_shooting_cooldown_modifier is a multiplier on the remaining shooting cooldown: `cooldown = (remaining_cooldown × chain_shooting_cooldown_modifier)`.

chain_shooting_cooldown_modifier is intended to be in the range of 0 to 1. This means that setting chain_shooting_cooldown_modifier to 0 reduces the remaining shooting cooldown to 0 while a chain_shooting_cooldown_modifier of 1 does not affect the remaining shooting cooldown at all.

### energy_source

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

### graphics_set

**Type:** [SpiderVehicleGraphicsSet](../types/SpiderVehicleGraphicsSet.md) · _optional_

### guns

**Type:** array[[ItemID](../types/ItemID.md)] · _optional_

The guns this spider vehicle uses.

### height

**Type:** [float](../types/float.md)

The height of the spider affects the shooting height and the drawing of the graphics and lights.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### movement_energy_consumption

**Type:** [Energy](../types/Energy.md)

### spider_engine

**Type:** [SpiderEngineSpecification](../types/SpiderEngineSpecification.md)

### torso_bob_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Cannot be negative.

### torso_rotation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

The orientation of the torso of the spider affects the shooting direction and the drawing of the graphics and lights.

### trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

If set to 0 then the spider will not have a Logistics tab.
