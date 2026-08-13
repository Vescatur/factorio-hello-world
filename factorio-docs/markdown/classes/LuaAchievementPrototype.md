# LuaAchievementPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

Prototype of a achievement.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [allowed_without_fight](#allowed-without-fight) | [boolean](../concepts/boolean.md) |  |
| [alternative_armor](#alternative-armor) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [ammo_type](#ammo-type) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [amount](#amount) | [uint32](../concepts/uint32.md) | yes |
| [armor](#armor) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [count](#count) | [uint32](../concepts/uint32.md) | yes |
| [damage_dealer](#damage-dealer) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [damage_type](#damage-type) | [LuaDamagePrototype](../classes/LuaDamagePrototype.md) | yes |
| [dont_build](#dont-build) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [dont_research](#dont-research) | array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [excluded](#excluded) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [fluid_product](#fluid-product) | [LuaFluidPrototype](../classes/LuaFluidPrototype.md) | yes |
| [in_vehicle](#in-vehicle) | [boolean](../concepts/boolean.md) | yes |
| [included](#included) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [item_product](#item-product) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [last_hour_only](#last-hour-only) | [boolean](../concepts/boolean.md) | yes |
| [limit_equip_quality](#limit-equip-quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [limit_quality](#limit-quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [limited_to_one_game](#limited-to-one-game) | [boolean](../concepts/boolean.md) | yes |
| [minimum_damage](#minimum-damage) | [float](../concepts/float.md) | yes |
| [minimum_distance](#minimum-distance) | [double](../concepts/double.md) | yes |
| [minimum_energy_produced](#minimum-energy-produced) | [double](../concepts/double.md) | yes |
| [module](#module) | array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [more_than_manually](#more-than-manually) | [boolean](../concepts/boolean.md) | yes |
| [not_to_kill](#not-to-kill) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [objective_condition](#objective-condition) | [string](../concepts/string.md) | yes |
| [personally](#personally) | [boolean](../concepts/boolean.md) | yes |
| [quality](#quality) | [LuaQualityPrototype](../classes/LuaQualityPrototype.md) | yes |
| [research_all](#research-all) | [boolean](../concepts/boolean.md) | yes |
| [research_with](#research-with) | array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] | yes |
| [science_pack](#science-pack) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [should_survive](#should-survive) | [boolean](../concepts/boolean.md) | yes |
| [surface](#surface) | [string](../concepts/string.md) | yes |
| [technology](#technology) | [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) | yes |
| [to_build](#to-build) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) | yes |
| [to_kill](#to-kill) | array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] | yes |
| [to_use](#to-use) | [LuaItemPrototype](../classes/LuaItemPrototype.md) | yes |
| [type_not_to_kill](#type-not-to-kill) | [string](../concepts/string.md) | yes |
| [type_of_dealer](#type-of-dealer) | [string](../concepts/string.md) | yes |
| [type_to_kill](#type-to-kill) | [string](../concepts/string.md) | yes |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [within](#within) | [uint32](../concepts/uint32.md) | yes |

### allowed_without_fight

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### alternative_armor

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### ammo_type

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### amount

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### armor

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### count

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_

### damage_dealer

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

### damage_type

**Read:** [LuaDamagePrototype](../classes/LuaDamagePrototype.md) · _read-only_ · _optional_

### dont_build

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

### dont_research

**Read:** array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

### excluded

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

### fluid_product

**Read:** [LuaFluidPrototype](../classes/LuaFluidPrototype.md) · _read-only_ · _optional_

### in_vehicle

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### included

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

### item_product

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### last_hour_only

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### limit_equip_quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_ · _optional_

### limit_quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_ · _optional_

### limited_to_one_game

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### minimum_damage

**Read:** [float](../concepts/float.md) · _read-only_ · _optional_

### minimum_distance

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### minimum_energy_produced

**Read:** [double](../concepts/double.md) · _read-only_ · _optional_

### module

**Read:** array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

### more_than_manually

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### not_to_kill

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### objective_condition

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### personally

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### quality

**Read:** [LuaQualityPrototype](../classes/LuaQualityPrototype.md) · _read-only_ · _optional_

### research_all

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### research_with

**Read:** array[[LuaItemPrototype](../classes/LuaItemPrototype.md)] · _read-only_ · _optional_

### science_pack

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### should_survive

**Read:** [boolean](../concepts/boolean.md) · _read-only_ · _optional_

### surface

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### technology

**Read:** [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) · _read-only_ · _optional_

### to_build

**Read:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md) · _read-only_ · _optional_

### to_kill

**Read:** array[[LuaEntityPrototype](../classes/LuaEntityPrototype.md)] · _read-only_ · _optional_

### to_use

**Read:** [LuaItemPrototype](../classes/LuaItemPrototype.md) · _read-only_ · _optional_

### type_not_to_kill

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### type_of_dealer

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### type_to_kill

**Read:** [string](../concepts/string.md) · _read-only_ · _optional_

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### within

**Read:** [uint32](../concepts/uint32.md) · _read-only_ · _optional_
