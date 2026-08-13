# TileCollisionMask

_concept_

**Definition:** table{layers}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [layers](#layers) | dictionary[[string](../concepts/string.md) → `true`] |  |

### layers

**Type:** dictionary[[string](../concepts/string.md) → `true`]

Every key in the dictionary is the name of one [layer](../classes/LuaCollisionLayerPrototype.md) the object collides with. The value is meaningless and always `true`. An empty table means that no layers are set.
