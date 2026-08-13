# PathFinderMapSettings

_concept_

**Definition:** table{cache_accept_path_end_distance_ratio, cache_accept_path_start_distance_ratio, cache_max_connect_to_cache_steps_multiplier, cache_path_end_distance_rating_multiplier, cache_path_start_distance_rating_multiplier, direct_distance_to_consider_short_request, enemy_with_different_destination_collision_penalty, extended_collision_penalty, fwd2bwd_ratio, general_entity_collision_penalty, general_entity_subsequent_collision_penalty, goal_pressure_ratio, ignore_moving_enemy_collision_distance, long_cache_min_cacheable_distance, long_cache_size, max_clients_to_accept_any_new_request, max_clients_to_accept_short_new_request, max_steps_worked_per_tick, max_work_done_per_tick, min_steps_to_check_path_find_termination, negative_cache_accept_path_end_distance_ratio, negative_cache_accept_path_start_distance_ratio, negative_path_cache_delay_interval, overload_levels, overload_multipliers, short_cache_min_algo_steps_to_cache, short_cache_min_cacheable_distance, short_cache_size, short_request_max_steps, short_request_ratio, stale_enemy_with_same_destination_collision_penalty, start_to_goal_cost_multiplier_to_terminate_path_find, use_path_cache}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [cache_accept_path_end_distance_ratio](#cache-accept-path-end-distance-ratio) | [double](../concepts/double.md) |  |
| [cache_accept_path_start_distance_ratio](#cache-accept-path-start-distance-ratio) | [double](../concepts/double.md) |  |
| [cache_max_connect_to_cache_steps_multiplier](#cache-max-connect-to-cache-steps-multiplier) | [uint32](../concepts/uint32.md) |  |
| [cache_path_end_distance_rating_multiplier](#cache-path-end-distance-rating-multiplier) | [double](../concepts/double.md) |  |
| [cache_path_start_distance_rating_multiplier](#cache-path-start-distance-rating-multiplier) | [double](../concepts/double.md) |  |
| [direct_distance_to_consider_short_request](#direct-distance-to-consider-short-request) | [uint32](../concepts/uint32.md) |  |
| [enemy_with_different_destination_collision_penalty](#enemy-with-different-destination-collision-penalty) | [double](../concepts/double.md) |  |
| [extended_collision_penalty](#extended-collision-penalty) | [double](../concepts/double.md) |  |
| [fwd2bwd_ratio](#fwd2bwd-ratio) | [uint32](../concepts/uint32.md) |  |
| [general_entity_collision_penalty](#general-entity-collision-penalty) | [double](../concepts/double.md) |  |
| [general_entity_subsequent_collision_penalty](#general-entity-subsequent-collision-penalty) | [double](../concepts/double.md) |  |
| [goal_pressure_ratio](#goal-pressure-ratio) | [double](../concepts/double.md) |  |
| [ignore_moving_enemy_collision_distance](#ignore-moving-enemy-collision-distance) | [double](../concepts/double.md) |  |
| [long_cache_min_cacheable_distance](#long-cache-min-cacheable-distance) | [double](../concepts/double.md) |  |
| [long_cache_size](#long-cache-size) | [uint32](../concepts/uint32.md) |  |
| [max_clients_to_accept_any_new_request](#max-clients-to-accept-any-new-request) | [uint32](../concepts/uint32.md) |  |
| [max_clients_to_accept_short_new_request](#max-clients-to-accept-short-new-request) | [uint32](../concepts/uint32.md) |  |
| [max_steps_worked_per_tick](#max-steps-worked-per-tick) | [double](../concepts/double.md) |  |
| [max_work_done_per_tick](#max-work-done-per-tick) | [uint32](../concepts/uint32.md) |  |
| [min_steps_to_check_path_find_termination](#min-steps-to-check-path-find-termination) | [uint32](../concepts/uint32.md) |  |
| [negative_cache_accept_path_end_distance_ratio](#negative-cache-accept-path-end-distance-ratio) | [double](../concepts/double.md) |  |
| [negative_cache_accept_path_start_distance_ratio](#negative-cache-accept-path-start-distance-ratio) | [double](../concepts/double.md) |  |
| [negative_path_cache_delay_interval](#negative-path-cache-delay-interval) | [uint32](../concepts/uint32.md) |  |
| [overload_levels](#overload-levels) | array[[uint32](../concepts/uint32.md)] |  |
| [overload_multipliers](#overload-multipliers) | array[[double](../concepts/double.md)] |  |
| [short_cache_min_algo_steps_to_cache](#short-cache-min-algo-steps-to-cache) | [uint32](../concepts/uint32.md) |  |
| [short_cache_min_cacheable_distance](#short-cache-min-cacheable-distance) | [double](../concepts/double.md) |  |
| [short_cache_size](#short-cache-size) | [uint32](../concepts/uint32.md) |  |
| [short_request_max_steps](#short-request-max-steps) | [uint32](../concepts/uint32.md) |  |
| [short_request_ratio](#short-request-ratio) | [double](../concepts/double.md) |  |
| [stale_enemy_with_same_destination_collision_penalty](#stale-enemy-with-same-destination-collision-penalty) | [double](../concepts/double.md) |  |
| [start_to_goal_cost_multiplier_to_terminate_path_find](#start-to-goal-cost-multiplier-to-terminate-path-find) | [double](../concepts/double.md) |  |
| [use_path_cache](#use-path-cache) | [boolean](../concepts/boolean.md) |  |

### cache_accept_path_end_distance_ratio

**Type:** [double](../concepts/double.md)

When looking for a path from cache, make sure it doesn't end too far from the requested end in relative terms. This is typically more lenient than the start ratio since the end target could be moving. Defaults to `0.15`.

### cache_accept_path_start_distance_ratio

**Type:** [double](../concepts/double.md)

When looking for a path from cache, make sure it doesn't start too far from the requested start in relative terms. Defaults to `0.2`.

### cache_max_connect_to_cache_steps_multiplier

**Type:** [uint32](../concepts/uint32.md)

When looking for a connection to a cached path, search at most for this number of steps times the original estimate. Defaults to `100`.

### cache_path_end_distance_rating_multiplier

**Type:** [double](../concepts/double.md)

When assigning a rating to the best path, this multiplier times end distances is considered. This value is typically higher than the start multiplier as this results in better end path quality. Defaults to `20`.

### cache_path_start_distance_rating_multiplier

**Type:** [double](../concepts/double.md)

When assigning a rating to the best path, this multiplier times start distances is considered. Defaults to `10`.

### direct_distance_to_consider_short_request

**Type:** [uint32](../concepts/uint32.md)

The maximum direct distance in tiles before a request is no longer considered short. Defaults to `100`.

### enemy_with_different_destination_collision_penalty

**Type:** [double](../concepts/double.md)

A penalty that is applied for another unit that is too close and either not moving or has a different goal. Defaults to `30`.

### extended_collision_penalty

**Type:** [double](../concepts/double.md)

The collision penalty for collisions in the extended bounding box but outside the entity's actual bounding box. Defaults to `3`.

### fwd2bwd_ratio

**Type:** [uint32](../concepts/uint32.md)

The pathfinder performs a step of the backward search every `fwd2bwd_ratio`'th step. The minimum allowed value is `2`, which means symmetric search. The default value is `5`.

### general_entity_collision_penalty

**Type:** [double](../concepts/double.md)

The general collision penalty with other units. Defaults to `10`.

### general_entity_subsequent_collision_penalty

**Type:** [double](../concepts/double.md)

The collision penalty for positions that require the destruction of an entity to get to. Defaults to `3`.

### goal_pressure_ratio

**Type:** [double](../concepts/double.md)

When looking at which node to check next, their heuristic value is multiplied by this ratio. The higher it is, the more the search is directed straight at the goal. Defaults to `2`.

### ignore_moving_enemy_collision_distance

**Type:** [double](../concepts/double.md)

The distance in tiles after which other moving units are not considered for pathfinding. Defaults to `5`.

### long_cache_min_cacheable_distance

**Type:** [double](../concepts/double.md)

The minimal distance to the goal in tiles required to be searched in the long path cache. Defaults to `30`.

### long_cache_size

**Type:** [uint32](../concepts/uint32.md)

Number of elements in the long cache. Defaults to `25`.

### max_clients_to_accept_any_new_request

**Type:** [uint32](../concepts/uint32.md)

The amount of path finder requests accepted per tick regardless of the requested path's length. Defaults to `10`.

### max_clients_to_accept_short_new_request

**Type:** [uint32](../concepts/uint32.md)

When the `max_clients_to_accept_any_new_request` amount is exhausted, only path finder requests with a short estimate will be accepted until this amount (per tick) is reached. Defaults to `100`.

### max_steps_worked_per_tick

**Type:** [double](../concepts/double.md)

The maximum number of nodes that are expanded per tick. Defaults to `1 000`.

### max_work_done_per_tick

**Type:** [uint32](../concepts/uint32.md)

The maximum amount of work each pathfinding job is allowed to do per tick. Defaults to `8 000`.

### min_steps_to_check_path_find_termination

**Type:** [uint32](../concepts/uint32.md)

The minimum amount of steps that are guaranteed to be performed for every request. Defaults to `2000`.

### negative_cache_accept_path_end_distance_ratio

**Type:** [double](../concepts/double.md)

Same principle as `cache_accept_path_end_distance_ratio`, but used for negative cache queries. Defaults to `0.3`.

### negative_cache_accept_path_start_distance_ratio

**Type:** [double](../concepts/double.md)

Same principle as `cache_accept_path_start_distance_ratio`, but used for negative cache queries. Defaults to `0.3`.

### negative_path_cache_delay_interval

**Type:** [uint32](../concepts/uint32.md)

The delay in ticks between decrementing the score of all paths in the negative cache by one. Defaults to `20`.

### overload_levels

**Type:** array[[uint32](../concepts/uint32.md)]

The thresholds of waiting clients after each of which the per-tick work limit will be increased by the corresponding value in `overload_multipliers`. This is to avoid clients having to wait too long. Must have the same number of elements as `overload_multipliers`. Defaults to `{0, 100, 500}`.

### overload_multipliers

**Type:** array[[double](../concepts/double.md)]

The multipliers to the amount of per-tick work applied after the corresponding thresholds in `overload_levels` have been reached. Must have the same number of elements as `overload_multipliers`. Defaults to `{2, 3, 4}`.

### short_cache_min_algo_steps_to_cache

**Type:** [uint32](../concepts/uint32.md)

The minimal number of nodes required to be searched in the short path cache. Defaults to `50`.

### short_cache_min_cacheable_distance

**Type:** [double](../concepts/double.md)

The minimal distance to the goal in tiles required to be searched in the short path cache. Defaults to `10`.

### short_cache_size

**Type:** [uint32](../concepts/uint32.md)

Number of elements in the short cache. Defaults to `5`.

### short_request_max_steps

**Type:** [uint32](../concepts/uint32.md)

The maximum amount of nodes a short request will traverse before being rescheduled as a long request. Defaults to `1000`.

### short_request_ratio

**Type:** [double](../concepts/double.md)

The amount of steps that are allocated to short requests each tick, as a percentage of all available steps. Defaults to `0.5`, or 50%.

### stale_enemy_with_same_destination_collision_penalty

**Type:** [double](../concepts/double.md)

A penalty that is applied for another unit that is on the way to the goal. This is mainly relevant for situations where a group of units has arrived at the target they are supposed to attack, making units further back circle around to reach the target. Defaults to `30`.

### start_to_goal_cost_multiplier_to_terminate_path_find

**Type:** [double](../concepts/double.md)

If the actual amount of steps is higher than the initial estimate by this factor, pathfinding is terminated. Defaults to `2000.0`.

### use_path_cache

**Type:** [boolean](../concepts/boolean.md)

Whether to cache paths at all. Defaults to `true`.
