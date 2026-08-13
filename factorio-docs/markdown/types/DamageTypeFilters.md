# DamageTypeFilters

_type_

**Examples:**

```
damage_type_filters = "fire"
```

```
damage_type_filters = { "fire" } -- more damage types could be specified here
```

```
damage_type_filters =
{
  whitelist = false, -- optional
  types = "fire"
}
```

```
damage_type_filters =
{
  whitelist = false, -- optional
  types = { "fire" } -- more damage types could be specified here
}
```

**Definition:** struct (see properties below) ∣ [DamageTypeID](../types/DamageTypeID.md) ∣ array[[DamageTypeID](../types/DamageTypeID.md)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [types](#types) | [DamageTypeID](../types/DamageTypeID.md) ∣ array[[DamageTypeID](../types/DamageTypeID.md)] |  |
| [whitelist](#whitelist) | [boolean](../types/boolean.md) | yes |

### types

**Type:** [DamageTypeID](../types/DamageTypeID.md) ∣ array[[DamageTypeID](../types/DamageTypeID.md)]

The damage types to filter for.

### whitelist

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this is a whitelist or a blacklist of damage types. Defaults to being a blacklist.
