# CollisionMaskConnector

_type_

The base game provides common collision mask functions in a Lua file in the core [lualib](https://github.com/wube/factorio-data/blob/master/core/lualib/collision-mask-util.lua).

**Example:**

```
-- Most common collision mask of buildings:
collision_mask = {layers = {item = true, meltable = true, object = true, player = true, water_tile = true, is_object = true, is_lower_object = true}}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [colliding_with_tiles_only](#colliding-with-tiles-only) | [boolean](../types/boolean.md) | yes |
| [consider_tile_transitions](#consider-tile-transitions) | [boolean](../types/boolean.md) | yes |
| [layers](#layers) | dictionary[[CollisionLayerID](../types/CollisionLayerID.md) → `true`] |  |
| [not_colliding_with_itself](#not-colliding-with-itself) | [boolean](../types/boolean.md) | yes |

### colliding_with_tiles_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Any prototype with this collision option will only be checked for collision with other prototype's collision masks if they are a tile.

### consider_tile_transitions

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Uses the prototypes position rather than its collision box when doing collision checks with tile prototypes. Allows the prototype to overlap colliding tiles up until its center point. This is only respected for character movement and cars driven by players.

### layers

**Type:** dictionary[[CollisionLayerID](../types/CollisionLayerID.md) → `true`]

Every key in the dictionary is the name of one [layer](../prototypes/CollisionLayerPrototype.md) the object collides with. The value is meaningless and always `true`. An empty table means that no layers are set.

### not_colliding_with_itself

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Any two entities that both have this option enabled on their prototype and have an identical collision mask layers list will not collide. Other collision mask options are not included in the identical layer list check. This does mean that two different prototypes with the same collision mask layers and this option enabled will not collide.
