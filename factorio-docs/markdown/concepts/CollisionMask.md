# CollisionMask

_concept_

**Example:**

```
-- Most common collision mask of buildings:
collision_mask = {layers = {item = true, meltable = true, object = true, player = true, water_tile = true, is_object = true, is_lower_object = true}}
```

**Definition:** table{colliding_with_tiles_only, consider_tile_transitions, layers, not_colliding_with_itself}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [colliding_with_tiles_only](#colliding-with-tiles-only) | [boolean](../concepts/boolean.md) | yes |
| [consider_tile_transitions](#consider-tile-transitions) | [boolean](../concepts/boolean.md) | yes |
| [layers](#layers) | dictionary[[string](../concepts/string.md) → `true`] |  |
| [not_colliding_with_itself](#not-colliding-with-itself) | [boolean](../concepts/boolean.md) | yes |

### colliding_with_tiles_only

**Type:** [boolean](../concepts/boolean.md) · _optional_

Any prototype with this collision option will only be checked for collision with other prototype's collision masks if they are a tile. Defaults to `false`.

### consider_tile_transitions

**Type:** [boolean](../concepts/boolean.md) · _optional_

Uses the prototypes position rather than its collision box when doing collision checks with tile prototypes. Allows the prototype to overlap colliding tiles up until its center point. This is only respected for character movement and cars driven by players. Defaults to `false`.

### layers

**Type:** dictionary[[string](../concepts/string.md) → `true`]

Every key in the dictionary is the name of one [layer](../classes/LuaCollisionLayerPrototype.md) the object collides with. The value is meaningless and always `true`. An empty table means that no layers are set.

### not_colliding_with_itself

**Type:** [boolean](../concepts/boolean.md) · _optional_

Any two entities that both have this option enabled on their prototype and have an identical collision mask layers list will not collide. Other collision mask options are not included in the identical layer list check. This does mean that two different prototypes with the same collision mask layers and this option enabled will not collide. Defaults to `false`.
