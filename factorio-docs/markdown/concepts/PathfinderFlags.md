# PathfinderFlags

_concept_

**Definition:** table{allow_destroy_friendly_entities, allow_paths_through_own_entities, cache, low_priority, no_break, prefer_straight_paths}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [allow_destroy_friendly_entities](#allow-destroy-friendly-entities) | [boolean](../concepts/boolean.md) | yes |
| [allow_paths_through_own_entities](#allow-paths-through-own-entities) | [boolean](../concepts/boolean.md) | yes |
| [cache](#cache) | [boolean](../concepts/boolean.md) | yes |
| [low_priority](#low-priority) | [boolean](../concepts/boolean.md) | yes |
| [no_break](#no-break) | [boolean](../concepts/boolean.md) | yes |
| [prefer_straight_paths](#prefer-straight-paths) | [boolean](../concepts/boolean.md) | yes |

### allow_destroy_friendly_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

Allows pathing through friendly entities. Defaults to `false`.

### allow_paths_through_own_entities

**Type:** [boolean](../concepts/boolean.md) · _optional_

Allows the pathfinder to path through entities of the same force. Defaults to `false`.

### cache

**Type:** [boolean](../concepts/boolean.md) · _optional_

Enables path caching. This can be more efficient, but might fail to respond to changes in the environment. Defaults to `true`.

### low_priority

**Type:** [boolean](../concepts/boolean.md) · _optional_

Sets lower priority on the path request, meaning it might take longer to find a path at the expense of speeding up others. Defaults to `false`.

### no_break

**Type:** [boolean](../concepts/boolean.md) · _optional_

Makes the pathfinder not break in the middle of processing this pathfind, no matter how much work is needed. Defaults to `false`.

### prefer_straight_paths

**Type:** [boolean](../concepts/boolean.md) · _optional_

Makes the pathfinder try to path in straight lines. Defaults to `false`.
