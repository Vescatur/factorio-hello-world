# QuickBarSlot

_concept_

**Definition:** table{filter, item, record, selection, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [filter](#filter) | [ItemFilter](../concepts/ItemFilter.md) | yes |
| [item](#item) | [LuaItem](../classes/LuaItem.md) | yes |
| [record](#record) | [LuaRecord](../classes/LuaRecord.md) | yes |
| [selection](#selection) | array[[LuaEntity](../classes/LuaEntity.md)] | yes |
| [type](#type) | `"record"` ∣ `"remote"` ∣ `"filter"` ∣ `"item"` |  |

### filter

**Type:** [ItemFilter](../concepts/ItemFilter.md) · _optional_

Only present and mandatory when `type` is `remote` or `filter`. Name must be present (cannot be a quality only item filter).

### item

**Type:** [LuaItem](../classes/LuaItem.md) · _optional_

Only present and mandatory when `type` is `item`.

### record

**Type:** [LuaRecord](../classes/LuaRecord.md) · _optional_

Only present and mandatory when `type` is `record`.

### selection

**Type:** array[[LuaEntity](../classes/LuaEntity.md)] · _optional_

Only present and mandatory  when `type` is `remote`. Entities must be spider-vehicles.

### type

**Type:** `"record"` ∣ `"remote"` ∣ `"filter"` ∣ `"item"`

Type of slot content
