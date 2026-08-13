# DamageTypeFilters

_concept_

**Definition:** table{types, whitelist}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [types](#types) | dictionary[[string](../concepts/string.md) → `true`] |  |
| [whitelist](#whitelist) | [boolean](../concepts/boolean.md) |  |

### types

**Type:** dictionary[[string](../concepts/string.md) → `true`]

The damage types to filter for. The value in the dictionary is meaningless and exists just to allow for easy lookup.

### whitelist

**Type:** [boolean](../concepts/boolean.md)

Whether this is a whitelist or a blacklist of damage types. `true` means whitelist.
