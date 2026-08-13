# MinableProperties

_type_

The mining properties of objects. For formulas for the mining time, see [mining](https://wiki.factorio.com/Mining).

**Examples:**

```
minable = { mining_time = 0.55, result = "wood", count = 4, mining_particle = "wooden-particle" }
```

```
minable =
{
  mining_time = 1,
  results =
  {
    {
      type = "fluid",
      name = "crude-oil",
      amount = 10
    }
  }
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint16](../types/uint16.md) | yes |
| [fluid_amount](#fluid-amount) | [FluidAmount](../types/FluidAmount.md) | yes |
| [include_in_show_counts](#include-in-show-counts) | [boolean](../types/boolean.md) | yes |
| [mining_particle](#mining-particle) | [ParticleID](../types/ParticleID.md) | yes |
| [mining_time](#mining-time) | [double](../types/double.md) |  |
| [mining_trigger](#mining-trigger) | [Trigger](../types/Trigger.md) | yes |
| [required_fluid](#required-fluid) | [FluidID](../types/FluidID.md) | yes |
| [result](#result) | [ItemID](../types/ItemID.md) | yes |
| [results](#results) | array[[ProductPrototype](../types/ProductPrototype.md)] | yes |
| [transfer_entity_health_to_products](#transfer-entity-health-to-products) | [boolean](../types/boolean.md) | yes |

### count

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Only loaded if `results` is not defined.

How many of result are dropped.

### fluid_amount

**Type:** [FluidAmount](../types/FluidAmount.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The amount of fluid that is used up when this object is mined. If this is > 0, this object cannot be mined by hand.

### include_in_show_counts

**Type:** [boolean](../types/boolean.md) · _optional_

### mining_particle

**Type:** [ParticleID](../types/ParticleID.md) · _optional_

Name of a [ParticlePrototype](../prototypes/ParticlePrototype.md). Which set of particles to use.

### mining_time

**Type:** [double](../types/double.md)

How many seconds are required to mine this object at 1 mining speed.

### mining_trigger

**Type:** [Trigger](../types/Trigger.md) · _optional_

### required_fluid

**Type:** [FluidID](../types/FluidID.md) · _optional_

Name of a [FluidPrototype](../prototypes/FluidPrototype.md). The fluid that is used up when this object is mined.

### result

**Type:** [ItemID](../types/ItemID.md) · _optional_

Only loaded if `results` is not defined.

Which item is dropped when this is mined. Cannot be empty. If you want the entity to not be minable, don't specify the minable properties, if you want it to be minable with no result item, don't specify the result at all.

### results

**Type:** array[[ProductPrototype](../types/ProductPrototype.md)] · _optional_

The items or fluids that are returned when this object is mined.

### transfer_entity_health_to_products

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`
