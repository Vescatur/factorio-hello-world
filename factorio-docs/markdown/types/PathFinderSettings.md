# PathFinderSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cache_accept_path_end_distance_ratio](#cache-accept-path-end-distance-ratio) | [double](../types/double.md) |  |
| [cache_accept_path_start_distance_ratio](#cache-accept-path-start-distance-ratio) | [double](../types/double.md) |  |
| [cache_max_connect_to_cache_steps_multiplier](#cache-max-connect-to-cache-steps-multiplier) | [uint32](../types/uint32.md) |  |
| [cache_path_end_distance_rating_multiplier](#cache-path-end-distance-rating-multiplier) | [double](../types/double.md) |  |
| [cache_path_start_distance_rating_multiplier](#cache-path-start-distance-rating-multiplier) | [double](../types/double.md) |  |
| [direct_distance_to_consider_short_request](#direct-distance-to-consider-short-request) | [uint32](../types/uint32.md) |  |
| [enemy_with_different_destination_collision_penalty](#enemy-with-different-destination-collision-penalty) | [double](../types/double.md) |  |
| [extended_collision_penalty](#extended-collision-penalty) | [double](../types/double.md) |  |
| [fwd2bwd_ratio](#fwd2bwd-ratio) | [uint32](../types/uint32.md) |  |
| [general_entity_collision_penalty](#general-entity-collision-penalty) | [double](../types/double.md) |  |
| [general_entity_subsequent_collision_penalty](#general-entity-subsequent-collision-penalty) | [double](../types/double.md) |  |
| [goal_pressure_ratio](#goal-pressure-ratio) | [double](../types/double.md) |  |
| [ignore_moving_enemy_collision_distance](#ignore-moving-enemy-collision-distance) | [double](../types/double.md) |  |
| [long_cache_min_cacheable_distance](#long-cache-min-cacheable-distance) | [double](../types/double.md) |  |
| [long_cache_size](#long-cache-size) | [uint32](../types/uint32.md) |  |
| [max_clients_to_accept_any_new_request](#max-clients-to-accept-any-new-request) | [uint32](../types/uint32.md) |  |
| [max_clients_to_accept_short_new_request](#max-clients-to-accept-short-new-request) | [uint32](../types/uint32.md) |  |
| [max_steps_worked_per_tick](#max-steps-worked-per-tick) | [double](../types/double.md) |  |
| [max_work_done_per_tick](#max-work-done-per-tick) | [uint32](../types/uint32.md) |  |
| [min_steps_to_check_path_find_termination](#min-steps-to-check-path-find-termination) | [uint32](../types/uint32.md) |  |
| [negative_cache_accept_path_end_distance_ratio](#negative-cache-accept-path-end-distance-ratio) | [double](../types/double.md) |  |
| [negative_cache_accept_path_start_distance_ratio](#negative-cache-accept-path-start-distance-ratio) | [double](../types/double.md) |  |
| [negative_path_cache_delay_interval](#negative-path-cache-delay-interval) | [uint32](../types/uint32.md) |  |
| [overload_levels](#overload-levels) | array[[uint32](../types/uint32.md)] |  |
| [overload_multipliers](#overload-multipliers) | array[[double](../types/double.md)] |  |
| [short_cache_min_algo_steps_to_cache](#short-cache-min-algo-steps-to-cache) | [uint32](../types/uint32.md) |  |
| [short_cache_min_cacheable_distance](#short-cache-min-cacheable-distance) | [double](../types/double.md) |  |
| [short_cache_size](#short-cache-size) | [uint32](../types/uint32.md) |  |
| [short_request_max_steps](#short-request-max-steps) | [uint32](../types/uint32.md) |  |
| [short_request_ratio](#short-request-ratio) | [double](../types/double.md) |  |
| [stale_enemy_with_same_destination_collision_penalty](#stale-enemy-with-same-destination-collision-penalty) | [double](../types/double.md) |  |
| [start_to_goal_cost_multiplier_to_terminate_path_find](#start-to-goal-cost-multiplier-to-terminate-path-find) | [double](../types/double.md) |  |
| [use_path_cache](#use-path-cache) | [boolean](../types/boolean.md) |  |

### cache_accept_path_end_distance_ratio

**Type:** [double](../types/double.md)

When looking for path from cache make sure it doesn't end too far from requested end. This is typically higher than accept value for the start because the end target can be moving.

### cache_accept_path_start_distance_ratio

**Type:** [double](../types/double.md)

When looking for path from cache make sure it doesn't start too far from requested start in relative distance terms.

### cache_max_connect_to_cache_steps_multiplier

**Type:** [uint32](../types/uint32.md)

When searching for connection to path cache path, search at most for this number of steps times the initial estimate.

### cache_path_end_distance_rating_multiplier

**Type:** [double](../types/double.md)

When assigning rating to the best path this * end distances is considered. This is typically higher than value for the start to achieve better path end quality.

### cache_path_start_distance_rating_multiplier

**Type:** [double](../types/double.md)

When assigning rating to the best path this * start distances is considered.

### direct_distance_to_consider_short_request

**Type:** [uint32](../types/uint32.md)

This is the "threshold" to decide what is short and what is not.

### enemy_with_different_destination_collision_penalty

**Type:** [double](../types/double.md)

Enemy is not moving/or is too close and has different destination.

### extended_collision_penalty

**Type:** [double](../types/double.md)

Collision penalty for collisions in the extended bounding box but outside the entity's actual bounding box.

### fwd2bwd_ratio

**Type:** [uint32](../types/uint32.md)

The pathfinder performs a step of the backward search every `fwd2bwd_ratio`'th step. The minimum allowed value is 2, which means symmetric search.

### general_entity_collision_penalty

**Type:** [double](../types/double.md)

Simplification for now; collision with everything else is this.

### general_entity_subsequent_collision_penalty

**Type:** [double](../types/double.md)

Collision penalty for successors of positions that require destroy to reach.

### goal_pressure_ratio

**Type:** [double](../types/double.md)

When comparing nodes in open which one to check next, heuristic value is multiplied by this ratio. The higher the number the more is the search directed directly towards the goal.

### ignore_moving_enemy_collision_distance

**Type:** [double](../types/double.md)

If there is a moving unit further than this we don't really care.

### long_cache_min_cacheable_distance

**Type:** [double](../types/double.md)

Minimal distance to goal for path to be searched in long path cache.

### long_cache_size

**Type:** [uint32](../types/uint32.md)

### max_clients_to_accept_any_new_request

**Type:** [uint32](../types/uint32.md)

Up until this amount any client will be served by the path finder (no estimate on the path length).

### max_clients_to_accept_short_new_request

**Type:** [uint32](../types/uint32.md)

From max_clients_to_accept_any_new_request till this one only those that have a short estimate will be served.

### max_steps_worked_per_tick

**Type:** [double](../types/double.md)

When this is exhausted no more requests are allowed, at the moment the first path to exhaust this will be finished (even if it is hundreds of steps).

### max_work_done_per_tick

**Type:** [uint32](../types/uint32.md)

### min_steps_to_check_path_find_termination

**Type:** [uint32](../types/uint32.md)

Absolute minimum of steps that will be performed for every path find request no matter what.

### negative_cache_accept_path_end_distance_ratio

**Type:** [double](../types/double.md)

Same as cache_accept_path_end_distance_ratio, but used for negative cache queries.

### negative_cache_accept_path_start_distance_ratio

**Type:** [double](../types/double.md)

Same as cache_accept_path_start_distance_ratio, but used for negative cache queries.

### negative_path_cache_delay_interval

**Type:** [uint32](../types/uint32.md)

### overload_levels

**Type:** array[[uint32](../types/uint32.md)]

### overload_multipliers

**Type:** array[[double](../types/double.md)]

### short_cache_min_algo_steps_to_cache

**Type:** [uint32](../types/uint32.md)

Minimal number of algorithm steps for path to be inserted into the short path cache.

### short_cache_min_cacheable_distance

**Type:** [double](../types/double.md)

Minimal distance to goal for path to be searched in short path cache.

### short_cache_size

**Type:** [uint32](../types/uint32.md)

Number of elements in the cache.

### short_request_max_steps

**Type:** [uint32](../types/uint32.md)

If a short request takes more than this many steps, it will be rescheduled as a long request.

### short_request_ratio

**Type:** [double](../types/double.md)

How many steps will be allocated to short requests each tick, as a ratio of all available steps per tick.

### stale_enemy_with_same_destination_collision_penalty

**Type:** [double](../types/double.md)

Somewhere along the path is stuck enemy we need to avoid. This is mainly to handle situations when units have arrived and are attacking the target then units further in the back will use this and run around the target.

### start_to_goal_cost_multiplier_to_terminate_path_find

**Type:** [double](../types/double.md)

If the current actual cost from start is higher than this times estimate of start to goal then path finding is terminated.

### use_path_cache

**Type:** [boolean](../types/boolean.md)
