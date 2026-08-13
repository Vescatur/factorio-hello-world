# AsteroidPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "asteroid"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [damage_per_hp](#damage-per-hp) | [float](../types/float.md) | yes |
| [emissions_per_second](#emissions-per-second) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] | yes |
| [graphics_set](#graphics-set) | [AsteroidGraphicsSet](../types/AsteroidGraphicsSet.md) | yes |

### damage_per_hp

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

How much damage should entities and tiles get for each asteroid health point lost due to collision with these objects.

### emissions_per_second

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] · _optional_ · _overrides parent_

Emissions cannot be larger than zero, asteroids cannot produce pollution.

### graphics_set

**Type:** [AsteroidGraphicsSet](../types/AsteroidGraphicsSet.md) · _optional_
