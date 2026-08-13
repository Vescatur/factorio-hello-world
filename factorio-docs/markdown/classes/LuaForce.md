# LuaForce

_class_

`LuaForce` encapsulates data local to each "force" or "faction" of the game. Default forces are player, enemy and neutral. Players and mods can create additional forces (up to 64 total).

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [ai_controllable](#ai-controllable) | [boolean](../concepts/boolean.md) |  |
| [artillery_range_modifier](#artillery-range-modifier) | [double](../concepts/double.md) |  |
| [beacon_distribution_modifier](#beacon-distribution-modifier) | [double](../concepts/double.md) |  |
| [belt_stack_size_bonus](#belt-stack-size-bonus) | [uint32](../concepts/uint32.md) |  |
| [bulk_inserter_capacity_bonus](#bulk-inserter-capacity-bonus) | [uint32](../concepts/uint32.md) |  |
| [cargo_landing_pad_limit](#cargo-landing-pad-limit) | [uint32](../concepts/uint32.md) |  |
| [character_build_distance_bonus](#character-build-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_health_bonus](#character-health-bonus) | [double](../concepts/double.md) |  |
| [character_inventory_slots_bonus](#character-inventory-slots-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_item_drop_distance_bonus](#character-item-drop-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_item_pickup_distance_bonus](#character-item-pickup-distance-bonus) | [double](../concepts/double.md) |  |
| [character_logistic_requests](#character-logistic-requests) | [boolean](../concepts/boolean.md) |  |
| [character_loot_pickup_distance_bonus](#character-loot-pickup-distance-bonus) | [double](../concepts/double.md) |  |
| [character_reach_distance_bonus](#character-reach-distance-bonus) | [uint32](../concepts/uint32.md) |  |
| [character_resource_reach_distance_bonus](#character-resource-reach-distance-bonus) | [double](../concepts/double.md) |  |
| [character_running_speed_modifier](#character-running-speed-modifier) | [double](../concepts/double.md) |  |
| [character_trash_slot_count](#character-trash-slot-count) | [double](../concepts/double.md) |  |
| [circuit_network_enabled](#circuit-network-enabled) | [boolean](../concepts/boolean.md) |  |
| [cliff_deconstruction_enabled](#cliff-deconstruction-enabled) | [boolean](../concepts/boolean.md) |  |
| [color](#color) | [Color](../concepts/Color.md) |  |
| [connected_players](#connected-players) | array[[LuaPlayer](../classes/LuaPlayer.md)] |  |
| [create_ghost_on_entity_death](#create-ghost-on-entity-death) | [boolean](../concepts/boolean.md) |  |
| [current_research](#current-research) | [LuaTechnology](../classes/LuaTechnology.md) | yes |
| [custom_color](#custom-color) | [Color](../concepts/Color.md) | yes |
| [deconstruction_time_to_live](#deconstruction-time-to-live) | [uint32](../concepts/uint32.md) |  |
| [following_robots_lifetime_modifier](#following-robots-lifetime-modifier) | [double](../concepts/double.md) |  |
| [friendly_fire](#friendly-fire) | [boolean](../concepts/boolean.md) |  |
| [index](#index) | [uint32](../concepts/uint32.md) |  |
| [inserter_stack_size_bonus](#inserter-stack-size-bonus) | [double](../concepts/double.md) |  |
| [items_launched](#items-launched) | dictionary[[string](../concepts/string.md) → [ItemCountType](../concepts/ItemCountType.md)] |  |
| [laboratory_productivity_bonus](#laboratory-productivity-bonus) | [double](../concepts/double.md) |  |
| [laboratory_speed_modifier](#laboratory-speed-modifier) | [double](../concepts/double.md) |  |
| [logistic_networks](#logistic-networks) | dictionary[[string](../concepts/string.md) → array[[LuaLogisticNetwork](../classes/LuaLogisticNetwork.md)]] |  |
| [manual_crafting_speed_modifier](#manual-crafting-speed-modifier) | [double](../concepts/double.md) |  |
| [manual_mining_speed_modifier](#manual-mining-speed-modifier) | [double](../concepts/double.md) |  |
| [max_cargo_bay_unloading_distance](#max-cargo-bay-unloading-distance) | [double](../concepts/double.md) |  |
| [max_failed_attempts_per_tick_per_construction_queue](#max-failed-attempts-per-tick-per-construction-queue) | [uint32](../concepts/uint32.md) |  |
| [max_successful_attempts_per_tick_per_construction_queue](#max-successful-attempts-per-tick-per-construction-queue) | [uint32](../concepts/uint32.md) |  |
| [maximum_following_robot_count](#maximum-following-robot-count) | [uint32](../concepts/uint32.md) |  |
| [mining_drill_productivity_bonus](#mining-drill-productivity-bonus) | [double](../concepts/double.md) |  |
| [mining_with_fluid](#mining-with-fluid) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [platforms](#platforms) | dictionary[[uint32](../concepts/uint32.md) → [LuaSpacePlatform](../classes/LuaSpacePlatform.md)] |  |
| [players](#players) | array[[LuaPlayer](../classes/LuaPlayer.md)] |  |
| [previous_research](#previous-research) | [LuaTechnology](../classes/LuaTechnology.md) | yes |
| [rail_planner_allow_elevated_rails](#rail-planner-allow-elevated-rails) | [boolean](../concepts/boolean.md) |  |
| [rail_support_on_deep_oil_ocean](#rail-support-on-deep-oil-ocean) | [boolean](../concepts/boolean.md) |  |
| [recipes](#recipes) | LuaCustomTable[[string](../concepts/string.md) → [LuaRecipe](../classes/LuaRecipe.md)] |  |
| [research_enabled](#research-enabled) | [boolean](../concepts/boolean.md) |  |
| [research_progress](#research-progress) | [double](../concepts/double.md) |  |
| [research_queue](#research-queue) | array[[TechnologyID](../concepts/TechnologyID.md)] |  |
| [rockets_launched](#rockets-launched) | [uint32](../concepts/uint32.md) |  |
| [share_chart](#share-chart) | [boolean](../concepts/boolean.md) |  |
| [technologies](#technologies) | LuaCustomTable[[string](../concepts/string.md) → [LuaTechnology](../classes/LuaTechnology.md)] |  |
| [train_braking_force_bonus](#train-braking-force-bonus) | [double](../concepts/double.md) |  |
| [unlock_logistic_network](#unlock-logistic-network) | [boolean](../concepts/boolean.md) |  |
| [unlock_travel_to_space_platforms](#unlock-travel-to-space-platforms) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [vehicle_logistics](#vehicle-logistics) | [boolean](../concepts/boolean.md) |  |
| [worker_robots_battery_modifier](#worker-robots-battery-modifier) | [double](../concepts/double.md) |  |
| [worker_robots_speed_modifier](#worker-robots-speed-modifier) | [double](../concepts/double.md) |  |
| [worker_robots_storage_bonus](#worker-robots-storage-bonus) | [double](../concepts/double.md) |  |

### ai_controllable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Enables some higher-level AI behaviour for this force. When set to `true`, biters belonging to this force will automatically expand into new territories, build new spawners, and form unit groups. By default, this value is `true` for the enemy force and `false` for all others.

Setting this to `false` does not turn off biters' AI. They will still move around and attack players who come close.

It is necessary for a force to be AI controllable in order to be able to create unit groups or build bases from scripts.

### artillery_range_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### beacon_distribution_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### belt_stack_size_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Belt stack size bonus.

### bulk_inserter_capacity_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Number of items that can be transferred by bulk inserters. When writing to this value, it must be >= 0 and <= 254.

### cargo_landing_pad_limit

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The maximum cargo landing pads that can be built per surface by this force.

### character_build_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

### character_health_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### character_inventory_slots_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The number of additional inventory slots the character main inventory has.

### character_item_drop_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

### character_item_pickup_distance_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### character_logistic_requests

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if character requester logistics is enabled.

### character_loot_pickup_distance_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### character_reach_distance_bonus

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

### character_resource_reach_distance_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### character_running_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Modifies the running speed of all characters in this force by the given value as a percentage. Setting the running modifier to `0.5` makes the character run 50% faster. The minimum value of `-1` reduces the movement speed by 100%, resulting in a speed of `0`.

### character_trash_slot_count

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Number of character trash slots.

### circuit_network_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### cliff_deconstruction_enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When true, cliffs will be marked for deconstruction when trying to force-build things that collide.

### color

**Read:** [Color](../concepts/Color.md) · _read-only_

Effective color of this force.

### connected_players

**Read:** array[[LuaPlayer](../classes/LuaPlayer.md)] · _read-only_

The connected players belonging to this force.

This is primarily useful when you want to do some action against all online players of this force.

This does *not* index using player index. See [LuaPlayer::index](../classes/LuaPlayer.md#index) on each player instance for the player index.

### create_ghost_on_entity_death

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When an entity dies, a ghost will be placed for automatic reconstruction.

### current_research

**Read:** [LuaTechnology](../classes/LuaTechnology.md) · _read-only_ · _optional_

The currently ongoing technology research, if any.

### custom_color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md) · _optional_

Custom color for this force. If specified, will take priority over other sources of the force color. Writing `nil` clears custom color. Will return `nil` if it was not specified or if was set to `{0,0,0,0}`.

### deconstruction_time_to_live

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The time, in ticks, before a deconstruction order is removed.

### following_robots_lifetime_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Additional lifetime for following robots.

### friendly_fire

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If friendly fire is enabled for this force.

### index

**Read:** [uint32](../concepts/uint32.md) · _read-only_

This force's index in [LuaGameScript::forces](../classes/LuaGameScript.md#forces) (unique ID). It is assigned when a force is created, and remains so until it is [merged](../events/on_forces_merged.md) (ie. deleted). Indexes of merged forces can be reused.

### inserter_stack_size_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

The inserter stack size bonus for non stack inserters

### items_launched

**Read:** dictionary[[string](../concepts/string.md) → [ItemCountType](../concepts/ItemCountType.md)] · _read-only_

All of the items that have been launched in rockets.

### laboratory_productivity_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### laboratory_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### logistic_networks

**Read:** dictionary[[string](../concepts/string.md) → array[[LuaLogisticNetwork](../classes/LuaLogisticNetwork.md)]] · _read-only_

List of logistic networks, grouped by surface.

### manual_crafting_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Multiplier of the manual crafting speed. Default value is `0`. The actual crafting speed will be multiplied by `1 + manual_crafting_speed_modifier`.

**Example:**

```
-- Double the player's crafting speed
game.player.force.manual_crafting_speed_modifier = 1
```

### manual_mining_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Multiplier of the manual mining speed. Default value is `0`. The actual mining speed will be multiplied by `1 + manual_mining_speed_modifier`.

**Example:**

```
-- Double the player's mining speed
game.player.force.manual_mining_speed_modifier = 1
```

### max_cargo_bay_unloading_distance

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Maximum distance between cargo bay from its connected cargo landing pad that allows unloading. Only relevant for cargo bays that have both [LuaEntityPrototype::allow_unloading](../classes/LuaEntityPrototype.md#allow-unloading) and [LuaEntityPrototype::use_unloading_distance_limit](../classes/LuaEntityPrototype.md#use-unloading-distance-limit) set to `true`.

### max_failed_attempts_per_tick_per_construction_queue

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

### max_successful_attempts_per_tick_per_construction_queue

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

### maximum_following_robot_count

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Maximum number of follower robots.

### mining_drill_productivity_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### mining_with_fluid

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of the force.

**Example:**

```
game.player.print(game.player.force.name) -- => "player"
```

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### platforms

**Read:** dictionary[[uint32](../concepts/uint32.md) → [LuaSpacePlatform](../classes/LuaSpacePlatform.md)] · _read-only_

The space platforms that belong to this force mapped by their index value.

This will include platforms that are pending deletion.

### players

**Read:** array[[LuaPlayer](../classes/LuaPlayer.md)] · _read-only_

Players belonging to this force.

### previous_research

**Read:** [LuaTechnology](../classes/LuaTechnology.md) · **Write:** [LuaTechnology](../classes/LuaTechnology.md) · _optional_

The previous research, if any.

### rail_planner_allow_elevated_rails

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### rail_support_on_deep_oil_ocean

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

### recipes

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaRecipe](../classes/LuaRecipe.md)] · _read-only_

Recipes available to this force, indexed by `name`.

**Example:**

```
-- Prints the category of the given recipe
game.player.print(game.player.force.recipes["transport-belt"].category)
```

### research_enabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Whether research is enabled for this force, see [LuaForce::enable_research](../classes/LuaForce.md#enable-research) and [LuaForce::disable_research](../classes/LuaForce.md#disable-research).

### research_progress

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Progress of current research, as a number in range `[0, 1]`.

### research_queue

**Read:** array[[TechnologyID](../concepts/TechnologyID.md)] · **Write:** array[[TechnologyID](../concepts/TechnologyID.md)]

The research queue of this force. The first technology in the array is the currently active one. Reading this attribute gives an array of [LuaTechnology](../classes/LuaTechnology.md).

To write to this, the entire table must be written. Providing an empty table or `nil` will empty the research queue and cancel the current research.  Writing to this when the research queue is disabled will simply set the last research in the table as the current research.

This only allows mods to queue research that this force is able to research in the first place. As an example, an already researched technology or one whose prerequisites are not fulfilled will not be queued, but dropped silently instead.

### rockets_launched

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The number of rockets launched.

### share_chart

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If sharing chart data is enabled for this force.

### technologies

**Read:** LuaCustomTable[[string](../concepts/string.md) → [LuaTechnology](../classes/LuaTechnology.md)] · _read-only_

Technologies owned by this force, indexed by `name`.

**Example:**

```
-- Researches the technology for the player's force
game.player.force.technologies["steel-processing"].researched = true
```

### train_braking_force_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### unlock_logistic_network

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When true, a "connect to logistic network" button will become enabled for entities that can connect to a logistic network.

### unlock_travel_to_space_platforms

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Whether traveling to space platforms via rockets is unlocked.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### vehicle_logistics

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

When true, cars/tanks that support logistics will be able to use them.

### worker_robots_battery_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### worker_robots_speed_modifier

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

### worker_robots_storage_bonus

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

## Methods

| Method | Summary |
| --- | --- |
| [add_alert](#add-alert) | Adds an alert to every connected player on this force. |
| [add_chart_tag](#add-chart-tag) | Adds a custom chart tag to the given surface and returns the new tag or `nil` if the given position isn't valid for a chart tag. |
| [add_custom_alert](#add-custom-alert) | Adds a custom alert to every connected player on this force. |
| [add_research](#add-research) | Add this technology to the back of the research queue if the queue is enabled. Otherwise, set this technology to be researched now. |
| [cancel_charting](#cancel-charting) | Cancels pending chart requests for the given surface or all surfaces. |
| [cancel_current_research](#cancel-current-research) | Stop the research currently in progress. This will remove any dependent technologies from the research queue. |
| [chart](#chart) | Chart a portion of the map. The chart for the given area is refreshed; it creates chart for any parts of the given area that haven't been charted yet. |
| [chart_all](#chart-all) | Chart all generated chunks. |
| [clear_chart](#clear-chart) | Erases chart data for this force. |
| [copy_chart](#copy-chart) | Copies the given surface's chart from the given force to this force. |
| [copy_from](#copy-from) | Copies all of the given changeable values (except charts) from the given force to this force. |
| [create_logistic_group](#create-logistic-group) | Creates the given group if it doesn't already exist. |
| [create_space_platform](#create-space-platform) | Creates a new space platform on this force. |
| [delete_logistic_group](#delete-logistic-group) | Deletes the given logistic group if it exists. |
| [disable_all_prototypes](#disable-all-prototypes) | Disable all recipes and technologies. Only recipes and technologies enabled explicitly will be useable from this point. |
| [disable_research](#disable-research) | Disable research for this force. |
| [enable_all_prototypes](#enable-all-prototypes) | Enables all recipes and technologies. The opposite of LuaForce::disable_all_prototypes. |
| [enable_all_recipes](#enable-all-recipes) | Unlock all recipes. |
| [enable_all_technologies](#enable-all-technologies) | Unlock all technologies. |
| [enable_research](#enable-research) | Enable research for this force. |
| [find_chart_tags](#find-chart-tags) | Finds all custom chart tags within a given area on the given surface. If no area is given all custom chart tags on the surface are returned. |
| [find_logistic_network_by_position](#find-logistic-network-by-position) |  |
| [get_ammo_damage_modifier](#get-ammo-damage-modifier) |  |
| [get_cease_fire](#get-cease-fire) | Is `other` force in this force's cease fire list? |
| [get_chunk_chart](#get-chunk-chart) | Gets the raw chart data for a given chunk as a binary string. |
| [get_entity_build_count_statistics](#get-entity-build-count-statistics) | The entity build statistics for this force (built and mined) for the given surface. |
| [get_entity_count](#get-entity-count) | Count entities of given type. |
| [get_evolution_factor](#get-evolution-factor) | Fetches the evolution factor of this force on the given surface. |
| [get_evolution_factor_by_killing_spawners](#get-evolution-factor-by-killing-spawners) | Fetches the spawner kill part of the evolution factor of this force on the given surface. |
| [get_evolution_factor_by_pollution](#get-evolution-factor-by-pollution) | Fetches the pollution part of the evolution factor of this force on the given surface. |
| [get_evolution_factor_by_time](#get-evolution-factor-by-time) | Fetches the time part of the evolution factor of this force on the given surface. |
| [get_fluid_production_statistics](#get-fluid-production-statistics) | The fluid production statistics for this force for the given surface. |
| [get_friend](#get-friend) | Is `other` force in this force's friends list. |
| [get_gun_speed_modifier](#get-gun-speed-modifier) |  |
| [get_hand_crafting_disabled_for_recipe](#get-hand-crafting-disabled-for-recipe) | Gets if the given recipe is explicitly disabled from being hand crafted. |
| [get_item_launched](#get-item-launched) | Gets the count of a given item launched in rockets. |
| [get_item_production_statistics](#get-item-production-statistics) | The item production statistics for this force for the given surface. |
| [get_kill_count_statistics](#get-kill-count-statistics) | The kill counter statistics for this force for the given surface. |
| [get_linked_inventory](#get-linked-inventory) | Gets the linked inventory for the given prototype and link ID if it exists or `nil`. |
| [get_logistic_group](#get-logistic-group) | Gets the information about the given logistic group. |
| [get_logistic_groups](#get-logistic-groups) | Gets the names of the current logistic groups. |
| [get_script_visible](#get-script-visible) | Gets the unlockable script state for the given ID. |
| [get_space_platforms](#get-space-platforms) | Gets the built space platforms at the given space location for this force. |
| [get_spawn_position](#get-spawn-position) |  |
| [get_surface_hidden](#get-surface-hidden) |  |
| [get_turret_attack_modifier](#get-turret-attack-modifier) |  |
| [is_chunk_charted](#is-chunk-charted) | Has a chunk been charted? |
| [is_chunk_requested_for_charting](#is-chunk-requested-for-charting) | Has a chunk been requested for charting? |
| [is_chunk_visible](#is-chunk-visible) | Is the given chunk currently charted and visible (not covered by fog of war) on the map. |
| [is_enemy](#is-enemy) | Is this force an enemy? This differs from `get_cease_fire` in that it is always false for neutral force. This is equivalent to checking the `enemy` ForceCondition. |
| [is_friend](#is-friend) | Is this force a friend? This differs from `get_friend` in that it is always true for neutral force. This is equivalent to checking the `friend` ForceCondition. |
| [is_pathfinder_busy](#is-pathfinder-busy) | Is pathfinder busy? When the pathfinder is busy, it won't accept any more pathfinding requests. |
| [is_quality_unlocked](#is-quality-unlocked) | Is the specified quality unlocked for this force? |
| [is_space_location_unlocked](#is-space-location-unlocked) | Is the specified planet unlocked for this force? |
| [is_space_platforms_unlocked](#is-space-platforms-unlocked) | Are the space platforms unlocked? This basically just controls the availability of the space platforms button. |
| [is_visible](#is-visible) | Is the given unlockable ID visible either through computed technologies or script set state. |
| [kill_all_units](#kill-all-units) | Kill all units and flush the pathfinder. |
| [lock_quality](#lock-quality) | Locks the quality to not be accessible to this force. |
| [lock_space_location](#lock-space-location) | Locks the planet to not be accessible to this force. |
| [lock_space_platforms](#lock-space-platforms) | Locks the space platforms, which disables the space platforms button |
| [play_music](#play-music) | Play a music track for every player in this force. |
| [play_sound](#play-sound) | Play a sound for every player in this force. |
| [print](#print) | Print text to the chat console of all players on this force. |
| [rechart](#rechart) | Force a rechart of the whole chart. |
| [remove_alert](#remove-alert) | For every connected player on this force - removes all alerts matching the given filters or if an empty filters table is given all alerts are removed. |
| [research_all_technologies](#research-all-technologies) | Research all technologies. |
| [reset](#reset) | Reset everything. All technologies are set to not researched, all modifiers are set to default values. |
| [reset_evolution](#reset-evolution) | Resets evolution for this force to zero. |
| [reset_recipes](#reset-recipes) | Load the original version of all recipes from the prototypes. |
| [reset_technologies](#reset-technologies) | Load the original versions of technologies from prototypes. Preserves research, enabled and visible_when_disabled state of technologies. |
| [reset_technology_effects](#reset-technology-effects) | Reapplies all possible research effects, including unlocked recipes. Any custom changes are lost. Preserves research state of technologies. |
| [script_trigger_research](#script-trigger-research) | Trigger the "scripted" research trigger of a technology, researching it. Does nothing if the technology does not have a "scripted" research trigger. |
| [set_ammo_damage_modifier](#set-ammo-damage-modifier) |  |
| [set_cease_fire](#set-cease-fire) | Add `other` force to this force's cease fire list. Forces on the cease fire list won't be targeted for attack. |
| [set_evolution_factor](#set-evolution-factor) | Sets the evolution factor of this force on the given surface. |
| [set_evolution_factor_by_killing_spawners](#set-evolution-factor-by-killing-spawners) | Sets the spawner kill part of the evolution factor of this force on the given surface. |
| [set_evolution_factor_by_pollution](#set-evolution-factor-by-pollution) | Sets the pollution part of the evolution factor of this force on the given surface. |
| [set_evolution_factor_by_time](#set-evolution-factor-by-time) | Sets the time part of the evolution factor of this force on the given surface. |
| [set_friend](#set-friend) | Add `other` force to this force's friends list. Friends have unrestricted access to buildings and turrets won't fire at them. |
| [set_gun_speed_modifier](#set-gun-speed-modifier) |  |
| [set_hand_crafting_disabled_for_recipe](#set-hand-crafting-disabled-for-recipe) | Sets if the given recipe can be hand-crafted. This is used to explicitly disable hand crafting a recipe - it won't allow hand-crafting otherwise not hand-craftable recipes. |
| [set_item_launched](#set-item-launched) | Sets the count of a given item launched in rockets. |
| [set_script_visible](#set-script-visible) | Sets the given unlockable ID state. When set to explicitly hidden or visible the value overrides the state computed through technologies. |
| [set_spawn_position](#set-spawn-position) |  |
| [set_surface_hidden](#set-surface-hidden) |  |
| [set_turret_attack_modifier](#set-turret-attack-modifier) |  |
| [unchart_chunk](#unchart-chunk) |  |
| [unlock_quality](#unlock-quality) | Unlocks the quality to be accessible to this force. |
| [unlock_space_location](#unlock-space-location) | Unlocks the planet to be accessible to this force. |
| [unlock_space_platforms](#unlock-space-platforms) | Unlocks the space platforms, which enables the space platforms button |

### add_alert

`add_alert(entity, type)`

Adds an alert to every connected player on this force.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

##### type

**Type:** [defines.alert_type](../defines/defines.md)

### add_chart_tag

`add_chart_tag(surface, tag)`

Adds a custom chart tag to the given surface and returns the new tag or `nil` if the given position isn't valid for a chart tag.

The chunk must be charted for a tag to be valid at that location.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Which surface to add the tag to.

##### tag

**Type:** [ChartTagSpec](../concepts/ChartTagSpec.md)

The tag to add.

#### Return values

- [LuaCustomChartTag](../classes/LuaCustomChartTag.md) _(optional)_

#### Raises

- `on_chart_tag_added` — Raised if the chart tag was successfully added.

### add_custom_alert

`add_custom_alert(entity, icon, message, show_on_map)`

Adds a custom alert to every connected player on this force.

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

If the alert is clicked, the map will open at the position of this entity.

##### icon

**Type:** [SignalID](../concepts/SignalID.md)

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### show_on_map

**Type:** [boolean](../concepts/boolean.md)

### add_research

`add_research(technology)`

Add this technology to the back of the research queue if the queue is enabled. Otherwise, set this technology to be researched now.

#### Parameters

##### technology

**Type:** [TechnologyID](../concepts/TechnologyID.md)

#### Return values

- [boolean](../concepts/boolean.md) — Whether the technology was successfully added.

#### Raises

- `on_research_started` — Raised if the technology was successfully added.

### cancel_charting

`cancel_charting(surface)`

Cancels pending chart requests for the given surface or all surfaces.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

### cancel_current_research

`cancel_current_research()`

Stop the research currently in progress. This will remove any dependent technologies from the research queue.

### chart

`chart(area, surface)`

Chart a portion of the map. The chart for the given area is refreshed; it creates chart for any parts of the given area that haven't been charted yet.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md)

The area on the given surface to chart.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

**Example:**

```
-- Charts a 2048x2048 rectangle centered around the origin.
game.player.force.chart(game.player.surface, {{x = -1024, y = -1024}, {x = 1024, y = 1024}})
```

### chart_all

`chart_all(surface)`

Chart all generated chunks.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Which surface to chart or all if not given.

### clear_chart

`clear_chart(surface)`

Erases chart data for this force.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Which surface to erase chart data for or if not provided all surfaces charts are erased.

### copy_chart

`copy_chart(destination_surface, source_force, source_surface)`

Copies the given surface's chart from the given force to this force.

#### Parameters

##### destination_surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

The surface to copy to.

##### source_force

**Type:** [ForceID](../concepts/ForceID.md)

The force to copy from

##### source_surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

The surface to copy from.

### copy_from

`copy_from(force)`

Copies all of the given changeable values (except charts) from the given force to this force.

#### Parameters

##### force

**Type:** [ForceID](../concepts/ForceID.md)

The force to copy from.

### create_logistic_group

`create_logistic_group(name, type)`

Creates the given group if it doesn't already exist.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

##### type

**Type:** [defines.logistic_group_type](../defines/defines.md) · _optional_

Defaults to `defines.logistic_group_type.with_trash`.

### create_space_platform

`create_space_platform({name, planet, starter_pack})`

Creates a new space platform on this force.

#### Parameters

##### name

**Type:** [string](../concepts/string.md) · _optional_

The platform name. If not provided, a random name will be used.

##### planet

**Type:** [SpaceLocationID](../concepts/SpaceLocationID.md)

The planet that the platform will orbit.

##### starter_pack

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

The starter pack required to build the platform.

#### Return values

- [LuaSpacePlatform](../classes/LuaSpacePlatform.md) _(optional)_

### delete_logistic_group

`delete_logistic_group(name, type)`

Deletes the given logistic group if it exists.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

##### type

**Type:** [defines.logistic_group_type](../defines/defines.md) · _optional_

Defaults to `defines.logistic_group_type.with_trash`.

### disable_all_prototypes

`disable_all_prototypes()`

Disable all recipes and technologies. Only recipes and technologies enabled explicitly will be useable from this point.

### disable_research

`disable_research()`

Disable research for this force.

### enable_all_prototypes

`enable_all_prototypes()`

Enables all recipes and technologies. The opposite of [LuaForce::disable_all_prototypes](../classes/LuaForce.md#disable-all-prototypes).

### enable_all_recipes

`enable_all_recipes()`

Unlock all recipes.

### enable_all_technologies

`enable_all_technologies()`

Unlock all technologies.

### enable_research

`enable_research()`

Enable research for this force.

### find_chart_tags

`find_chart_tags(area, surface)`

Finds all custom chart tags within a given area on the given surface. If no area is given all custom chart tags on the surface are returned.

#### Parameters

##### area

**Type:** [BoundingBox](../concepts/BoundingBox.md) · _optional_

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- array[[LuaCustomChartTag](../classes/LuaCustomChartTag.md)]

### find_logistic_network_by_position

`find_logistic_network_by_position(position, surface)`

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

Position to find a network for

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to search on

#### Return values

- [LuaLogisticNetwork](../classes/LuaLogisticNetwork.md) _(optional)_ — The found network or `nil`.

### get_ammo_damage_modifier

`get_ammo_damage_modifier(ammo)`

#### Parameters

##### ammo

**Type:** [string](../concepts/string.md)

Ammo category

#### Return values

- [double](../concepts/double.md)

### get_cease_fire

`get_cease_fire(other)`

Is `other` force in this force's cease fire list?

#### Parameters

##### other

**Type:** [ForceID](../concepts/ForceID.md)

#### Return values

- [boolean](../concepts/boolean.md)

### get_chunk_chart

`get_chunk_chart(chunk_position, surface)`

Gets the raw chart data for a given chunk as a binary string.

The pixel data is returned in RGB565 format (2 bytes per pixel).

Returns `nil` if the chunk has not been charted for this force.

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [string](../concepts/string.md) _(optional)_ — The raw pixel data.

### get_entity_build_count_statistics

`get_entity_build_count_statistics(surface)`

The entity build statistics for this force (built and mined) for the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [LuaFlowStatistics](../classes/LuaFlowStatistics.md)

### get_entity_count

`get_entity_count(name)`

Count entities of given type.

This function has O(1) time complexity as entity counts are kept and maintained in the game engine.

#### Parameters

##### name

**Type:** [EntityID](../concepts/EntityID.md)

Prototype name of the entity.

#### Return values

- [uint32](../concepts/uint32.md) — Number of entities of given prototype belonging to this force.

### get_evolution_factor

`get_evolution_factor(surface)`

Fetches the evolution factor of this force on the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

#### Return values

- [double](../concepts/double.md)

### get_evolution_factor_by_killing_spawners

`get_evolution_factor_by_killing_spawners(surface)`

Fetches the spawner kill part of the evolution factor of this force on the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

#### Return values

- [double](../concepts/double.md)

### get_evolution_factor_by_pollution

`get_evolution_factor_by_pollution(surface)`

Fetches the pollution part of the evolution factor of this force on the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

#### Return values

- [double](../concepts/double.md)

### get_evolution_factor_by_time

`get_evolution_factor_by_time(surface)`

Fetches the time part of the evolution factor of this force on the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

#### Return values

- [double](../concepts/double.md)

### get_fluid_production_statistics

`get_fluid_production_statistics(surface)`

The fluid production statistics for this force for the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [LuaFlowStatistics](../classes/LuaFlowStatistics.md)

### get_friend

`get_friend(other)`

Is `other` force in this force's friends list.

#### Parameters

##### other

**Type:** [ForceID](../concepts/ForceID.md)

#### Return values

- [boolean](../concepts/boolean.md)

### get_gun_speed_modifier

`get_gun_speed_modifier(ammo)`

#### Parameters

##### ammo

**Type:** [string](../concepts/string.md)

Ammo category

#### Return values

- [double](../concepts/double.md)

### get_hand_crafting_disabled_for_recipe

`get_hand_crafting_disabled_for_recipe(recipe)`

Gets if the given recipe is explicitly disabled from being hand crafted.

#### Parameters

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

#### Return values

- [boolean](../concepts/boolean.md)

### get_item_launched

`get_item_launched(item)`

Gets the count of a given item launched in rockets.

#### Parameters

##### item

**Type:** [ItemID](../concepts/ItemID.md)

The item to get

#### Return values

- [uint32](../concepts/uint32.md) — The count of the item that has been launched.

### get_item_production_statistics

`get_item_production_statistics(surface)`

The item production statistics for this force for the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [LuaFlowStatistics](../classes/LuaFlowStatistics.md)

### get_kill_count_statistics

`get_kill_count_statistics(surface)`

The kill counter statistics for this force for the given surface.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [LuaFlowStatistics](../classes/LuaFlowStatistics.md)

### get_linked_inventory

`get_linked_inventory(link_id, prototype)`

Gets the linked inventory for the given prototype and link ID if it exists or `nil`.

#### Parameters

##### link_id

**Type:** [uint32](../concepts/uint32.md)

##### prototype

**Type:** [EntityID](../concepts/EntityID.md)

#### Return values

- [LuaInventory](../classes/LuaInventory.md) _(optional)_

### get_logistic_group

`get_logistic_group(name, type)`

Gets the information about the given logistic group.

#### Parameters

##### name

**Type:** [string](../concepts/string.md)

##### type

**Type:** [defines.logistic_group_type](../defines/defines.md) · _optional_

Defaults to `defines.logistic_group_type.with_trash`.

#### Return values

- [LogisticGroup](../concepts/LogisticGroup.md) _(optional)_

### get_logistic_groups

`get_logistic_groups(type)`

Gets the names of the current logistic groups.

#### Parameters

##### type

**Type:** [defines.logistic_group_type](../defines/defines.md) · _optional_

Defaults to `defines.logistic_group_type.with_trash`.

#### Return values

- array[[string](../concepts/string.md)]

### get_script_visible

`get_script_visible(unlockable)`

Gets the unlockable script state for the given ID.

#### Parameters

##### unlockable

**Type:** [UnlockableID](../concepts/UnlockableID.md)

#### Return values

- [boolean](../concepts/boolean.md) _(optional)_

### get_space_platforms

`get_space_platforms(location)`

Gets the built space platforms at the given space location for this force.

Note, this does not include platforms that have not yet been built.

#### Parameters

##### location

**Type:** [SpaceLocationID](../concepts/SpaceLocationID.md)

#### Return values

- array[[LuaSpacePlatform](../classes/LuaSpacePlatform.md)]

### get_spawn_position

`get_spawn_position(surface)`

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [MapPosition](../concepts/MapPosition.md)

### get_surface_hidden

`get_surface_hidden(surface)`

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md)

### get_turret_attack_modifier

`get_turret_attack_modifier(turret)`

#### Parameters

##### turret

**Type:** [EntityID](../concepts/EntityID.md)

Turret prototype name

#### Return values

- [double](../concepts/double.md)

### is_chunk_charted

`is_chunk_charted(chunk_position, surface)`

Has a chunk been charted?

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

Position of the chunk.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_chunk_requested_for_charting

`is_chunk_requested_for_charting(chunk_position, surface)`

Has a chunk been requested for charting?

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

Position of the chunk.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_chunk_visible

`is_chunk_visible(chunk_position, surface)`

Is the given chunk currently charted and visible (not covered by fog of war) on the map.

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_enemy

`is_enemy(other)`

Is this force an enemy? This differs from `get_cease_fire` in that it is always false for neutral force. This is equivalent to checking the `enemy` ForceCondition.

#### Parameters

##### other

**Type:** [ForceID](../concepts/ForceID.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_friend

`is_friend(other)`

Is this force a friend? This differs from `get_friend` in that it is always true for neutral force. This is equivalent to checking the `friend` ForceCondition.

#### Parameters

##### other

**Type:** [ForceID](../concepts/ForceID.md)

#### Return values

- [boolean](../concepts/boolean.md)

### is_pathfinder_busy

`is_pathfinder_busy()`

Is pathfinder busy? When the pathfinder is busy, it won't accept any more pathfinding requests.

#### Return values

- [boolean](../concepts/boolean.md)

### is_quality_unlocked

`is_quality_unlocked(quality)`

Is the specified quality unlocked for this force?

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md)

Name of the quality.

### is_space_location_unlocked

`is_space_location_unlocked(name)`

Is the specified planet unlocked for this force?

#### Parameters

##### name

**Type:** [SpaceLocationID](../concepts/SpaceLocationID.md)

Name of the planet.

### is_space_platforms_unlocked

`is_space_platforms_unlocked()`

Are the space platforms unlocked? This basically just controls the availability of the space platforms button.

#### Return values

- [boolean](../concepts/boolean.md)

### is_visible

`is_visible(unlockable)`

Is the given unlockable ID visible either through computed technologies or script set state.

#### Parameters

##### unlockable

**Type:** [UnlockableID](../concepts/UnlockableID.md)

#### Return values

- [boolean](../concepts/boolean.md)

### kill_all_units

`kill_all_units()`

Kill all units and flush the pathfinder.

### lock_quality

`lock_quality(quality)`

Locks the quality to not be accessible to this force.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md)

Name of the quality.

### lock_space_location

`lock_space_location(name)`

Locks the planet to not be accessible to this force.

#### Parameters

##### name

**Type:** [SpaceLocationID](../concepts/SpaceLocationID.md)

Name of the planet.

### lock_space_platforms

`lock_space_platforms()`

Locks the space platforms, which disables the space platforms button

### play_music

`play_music(music_specification)`

Play a music track for every player in this force.

#### Parameters

##### music_specification

**Type:** [PlayMusicSpecification](../concepts/PlayMusicSpecification.md)

The track to play.

### play_sound

`play_sound(sound_specification)`

Play a sound for every player in this force.

The sound is not played if its location is not [charted](../classes/LuaForce.md#chart) for this force.

#### Parameters

##### sound_specification

**Type:** [PlaySoundSpecification](../concepts/PlaySoundSpecification.md)

The sound to play.

### print

`print(message, print_settings)`

Print text to the chat console of all players on this force.

By default, messages that are identical to a message sent in the last 60 ticks are not printed again.

#### Parameters

##### message

**Type:** [LocalisedString](../concepts/LocalisedString.md)

##### print_settings

**Type:** [PrintSettings](../concepts/PrintSettings.md) · _optional_

### rechart

`rechart(surface)`

Force a rechart of the whole chart.

#### Parameters

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Which surface to rechart or all if not given.

### remove_alert

`remove_alert(filter)`

For every connected player on this force - removes all alerts matching the given filters or if an empty filters table is given all alerts are removed.

#### Parameters

##### filter

**Type:** [AlertFilter](../concepts/AlertFilter.md)

### research_all_technologies

`research_all_technologies(include_disabled_prototypes)`

Research all technologies.

#### Parameters

##### include_disabled_prototypes

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether technologies that are explicitly disabled in the prototype should also be researched. Defaults to `false`.

#### Raises

- `on_research_finished` — 

### reset

`reset()`

Reset everything. All technologies are set to not researched, all modifiers are set to default values.

#### Raises

- `on_force_reset` — 

### reset_evolution

`reset_evolution()`

Resets evolution for this force to zero.

### reset_recipes

`reset_recipes()`

Load the original version of all recipes from the prototypes.

### reset_technologies

`reset_technologies()`

Load the original versions of technologies from prototypes. Preserves research, enabled and visible_when_disabled state of technologies.

### reset_technology_effects

`reset_technology_effects()`

Reapplies all possible research effects, including unlocked recipes. Any custom changes are lost. Preserves research state of technologies.

#### Raises

- `on_technology_effects_reset` — 

### script_trigger_research

`script_trigger_research(technology)`

Trigger the "scripted" [research trigger](../concepts/ResearchTrigger.md) of a technology, researching it. Does nothing if the technology does not have a "scripted" research trigger.

#### Parameters

##### technology

**Type:** [TechnologyID](../concepts/TechnologyID.md)

### set_ammo_damage_modifier

`set_ammo_damage_modifier(ammo, modifier)`

#### Parameters

##### ammo

**Type:** [string](../concepts/string.md)

Ammo category

##### modifier

**Type:** [double](../concepts/double.md)

### set_cease_fire

`set_cease_fire(cease_fire, other)`

Add `other` force to this force's cease fire list. Forces on the cease fire list won't be targeted for attack.

#### Parameters

##### cease_fire

**Type:** [boolean](../concepts/boolean.md)

##### other

**Type:** [ForceID](../concepts/ForceID.md)

#### Raises

- `on_force_cease_fire_changed` — 

### set_evolution_factor

`set_evolution_factor(factor, surface)`

Sets the evolution factor of this force on the given surface.

#### Parameters

##### factor

**Type:** [double](../concepts/double.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

### set_evolution_factor_by_killing_spawners

`set_evolution_factor_by_killing_spawners(factor, surface)`

Sets the spawner kill part of the evolution factor of this force on the given surface.

#### Parameters

##### factor

**Type:** [double](../concepts/double.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

### set_evolution_factor_by_pollution

`set_evolution_factor_by_pollution(factor, surface)`

Sets the pollution part of the evolution factor of this force on the given surface.

#### Parameters

##### factor

**Type:** [double](../concepts/double.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

### set_evolution_factor_by_time

`set_evolution_factor_by_time(factor, surface)`

Sets the time part of the evolution factor of this force on the given surface.

#### Parameters

##### factor

**Type:** [double](../concepts/double.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md) · _optional_

Defaults to "nauvis".

### set_friend

`set_friend(friend, other)`

Add `other` force to this force's friends list. Friends have unrestricted access to buildings and turrets won't fire at them.

#### Parameters

##### friend

**Type:** [boolean](../concepts/boolean.md)

##### other

**Type:** [ForceID](../concepts/ForceID.md)

#### Raises

- `on_force_friends_changed` — 

### set_gun_speed_modifier

`set_gun_speed_modifier(ammo, modifier)`

#### Parameters

##### ammo

**Type:** [string](../concepts/string.md)

Ammo category

##### modifier

**Type:** [double](../concepts/double.md)

### set_hand_crafting_disabled_for_recipe

`set_hand_crafting_disabled_for_recipe(hand_crafting_disabled, recipe)`

Sets if the given recipe can be hand-crafted. This is used to explicitly disable hand crafting a recipe - it won't allow hand-crafting otherwise not hand-craftable recipes.

#### Parameters

##### hand_crafting_disabled

**Type:** [boolean](../concepts/boolean.md)

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

### set_item_launched

`set_item_launched(count, item)`

Sets the count of a given item launched in rockets.

#### Parameters

##### count

**Type:** [uint32](../concepts/uint32.md)

The count to set

##### item

**Type:** [ItemID](../concepts/ItemID.md)

The item to set

### set_script_visible

`set_script_visible(unlockable, value)`

Sets the given unlockable ID state. When set to explicitly hidden or visible the value overrides the state computed through technologies.

#### Parameters

##### unlockable

**Type:** [UnlockableID](../concepts/UnlockableID.md)

##### value

**Type:** [boolean](../concepts/boolean.md) · _optional_

### set_spawn_position

`set_spawn_position(position, surface)`

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The new position on the given surface.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to set the spawn position for.

### set_surface_hidden

`set_surface_hidden(hidden, surface)`

#### Parameters

##### hidden

**Type:** [boolean](../concepts/boolean.md)

Whether to hide the surface or not.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to set hidden for.

### set_turret_attack_modifier

`set_turret_attack_modifier(modifier, turret)`

#### Parameters

##### modifier

**Type:** [double](../concepts/double.md)

##### turret

**Type:** [EntityID](../concepts/EntityID.md)

Turret prototype name

### unchart_chunk

`unchart_chunk(chunk_position, surface)`

#### Parameters

##### chunk_position

**Type:** [ChunkPosition](../concepts/ChunkPosition.md)

The chunk position to unchart.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

Surface to unchart on.

### unlock_quality

`unlock_quality(quality)`

Unlocks the quality to be accessible to this force.

#### Parameters

##### quality

**Type:** [QualityID](../concepts/QualityID.md)

Name of the quality.

### unlock_space_location

`unlock_space_location(name)`

Unlocks the planet to be accessible to this force.

#### Parameters

##### name

**Type:** [SpaceLocationID](../concepts/SpaceLocationID.md)

Name of the planet.

### unlock_space_platforms

`unlock_space_platforms()`

Unlocks the space platforms, which enables the space platforms button
