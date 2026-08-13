# BeaconPrototype

_prototype_

**Prototype type string:** `type = "beacon"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Entity with the ability to transfer [module](../prototypes/ModulePrototype.md) effects to its neighboring entities.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allowed_effects](#allowed-effects) | [EffectTypeLimitation](../types/EffectTypeLimitation.md) | yes |
| [allowed_module_categories](#allowed-module-categories) | array[[ModuleCategoryID](../types/ModuleCategoryID.md)] | yes |
| [animation](#animation) | [Animation](../types/Animation.md) | yes |
| [base_picture](#base-picture) | [Animation](../types/Animation.md) | yes |
| [beacon_counter](#beacon-counter) | `"total"` ∣ `"same_type"` | yes |
| [distribution_effectivity](#distribution-effectivity) | [double](../types/double.md) |  |
| [distribution_effectivity_bonus_per_quality_level](#distribution-effectivity-bonus-per-quality-level) | [double](../types/double.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [graphics_set](#graphics-set) | [BeaconGraphicsSet](../types/BeaconGraphicsSet.md) | yes |
| [module_slots](#module-slots) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |
| [profile](#profile) | array[[double](../types/double.md)] | yes |
| [quality_affects_module_slots](#quality-affects-module-slots) | [boolean](../types/boolean.md) | yes |
| [quality_affects_supply_area_distance](#quality-affects-supply-area-distance) | [boolean](../types/boolean.md) | yes |
| [radius_visualisation_picture](#radius-visualisation-picture) | [Sprite](../types/Sprite.md) | yes |
| [supply_area_distance](#supply-area-distance) | [uint32](../types/uint32.md) |  |

### allowed_effects

**Type:** [EffectTypeLimitation](../types/EffectTypeLimitation.md) · _optional_ · **Default:** `No effects are allowed`

The types of [modules](../prototypes/ModulePrototype.md) that a player can place inside of the beacon.

### allowed_module_categories

**Type:** array[[ModuleCategoryID](../types/ModuleCategoryID.md)] · _optional_ · **Default:** `All module categories are allowed`

Sets the [module categories](../prototypes/ModuleCategory.md) that are allowed to be inserted into this machine.

### animation

**Type:** [Animation](../types/Animation.md) · _optional_

Only loaded if `graphics_set` is not defined.

The animation for the beacon, when in use.

### base_picture

**Type:** [Animation](../types/Animation.md) · _optional_

Only loaded if `graphics_set` is not defined.

The picture of the beacon when it is not on.

### beacon_counter

**Type:** `"total"` ∣ `"same_type"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'total'}`

The beacon counter used by effect receiver when deciding which sample to take from `profile`.

### distribution_effectivity

**Type:** [double](../types/double.md)

The multiplier of the module's effects, when shared between neighbors.

### distribution_effectivity_bonus_per_quality_level

**Type:** [double](../types/double.md) · _optional_

Must be 0 or positive.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) ∣ [VoidEnergySource](../types/VoidEnergySource.md)

### energy_usage

**Type:** [Energy](../types/Energy.md)

The constant power usage of this beacon.

**Example:**

```
energy_usage = "480kW"
```

### graphics_set

**Type:** [BeaconGraphicsSet](../types/BeaconGraphicsSet.md) · _optional_

The graphics for the beacon.

### module_slots

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

The number of module slots in this beacon.

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed.

### profile

**Type:** array[[double](../types/double.md)] · _optional_

Extra multiplier applied to the effects received from beacon by the effect receiver based on amount of beacons that are in range of that effect receiver.

If there are more beacons that reach the effect receiver than there are entries in this array, then the last entry in the array is used for the multiplier.

If this is not defined, then an implicit profile of `{1}` will be used.

**Example:**

```
profile = {1, 0} -- entities do not receive any effects when they are in range of more than one beacon
```

### quality_affects_module_slots

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::beacon_module_slots_bonus](../prototypes/QualityPrototype.md#beacon-module-slots-bonus) will be added to module slots count.

### quality_affects_supply_area_distance

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::beacon_supply_area_distance_bonus](../prototypes/QualityPrototype.md#beacon-supply-area-distance-bonus) will be added to supply_area_distance. Total value will be clamped to be within range `[0, 64]`.

### radius_visualisation_picture

**Type:** [Sprite](../types/Sprite.md) · _optional_

### supply_area_distance

**Type:** [uint32](../types/uint32.md)

The maximum distance that this beacon can supply its neighbors with its module's effects. Max distance is 64.
