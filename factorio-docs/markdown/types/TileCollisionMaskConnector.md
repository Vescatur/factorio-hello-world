# TileCollisionMaskConnector

_type_

The base game provides common collision mask functions in a Lua file in the core [lualib](https://github.com/wube/factorio-data/blob/master/core/lualib/collision-mask-util.lua).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [layers](#layers) | dictionary[[CollisionLayerID](../types/CollisionLayerID.md) → `true`] |  |

### layers

**Type:** dictionary[[CollisionLayerID](../types/CollisionLayerID.md) → `true`]

Every key in the dictionary is the name of one [layer](../prototypes/CollisionLayerPrototype.md) the object collides with. The value is meaningless and always `true`. An empty table means that no layers are set.
