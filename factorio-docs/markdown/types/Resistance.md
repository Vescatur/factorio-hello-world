# Resistance

_type_

Resistances to certain types of attacks from enemy, and physical damage. See [Damage](https://wiki.factorio.com/Damage).

**Example:**

```
resistances =
{
  {
    type = "physical",
    decrease = 6,
    percent = 30
  },
  {
    type = "explosion",
    decrease = 20,
    percent = 30
  },
  {
    type = "acid",
    decrease = 3,
    percent = 30
  },
  {
    type = "fire",
    decrease = 0,
    percent = 30
  }
}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [decrease](#decrease) | [float](../types/float.md) | yes |
| [percent](#percent) | [float](../types/float.md) | yes |
| [type](#type) | [DamageTypeID](../types/DamageTypeID.md) |  |

### decrease

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The [flat resistance](https://wiki.factorio.com/Damage#Decrease.2C_or_.22flat.22_resistance) to the given damage type. (Higher is better)

### percent

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The [percentage resistance](https://wiki.factorio.com/Damage#Percentage_resistance) to the given damage type. Expected range is from 0 to 100, e.g. 50 is 50%. (Higher is better.)

### type

**Type:** [DamageTypeID](../types/DamageTypeID.md)
