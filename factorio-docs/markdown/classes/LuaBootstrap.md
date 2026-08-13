# LuaBootstrap

_class_

Entry point for registering event handlers. It is accessible through the global object named `script`.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [active_mods](#active-mods) | dictionary[[string](../concepts/string.md) → [string](../concepts/string.md)] |  |
| [feature_flags](#feature-flags) | table{expansion, expansion_shaders, freezing, quality, rail_bridges, segmented_units, space_travel, spoiling} |  |
| [level](#level) | table{campaign_name, is_simulation, is_tutorial, level_name, mod_name} |  |
| [mod_name](#mod-name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |

### active_mods

**Read:** dictionary[[string](../concepts/string.md) → [string](../concepts/string.md)] · _read-only_

A dictionary listing the names of all currently active mods and mapping them to their version.

**Example:**

```
-- This will print the names and versions of all active mods to the console.
for name, version in pairs(script.active_mods) do
  game.print(name .. " version " .. version)
end
```

### feature_flags

**Read:** table{expansion, expansion_shaders, freezing, quality, rail_bridges, segmented_units, space_travel, spoiling} · _read-only_

A dictionary of feature flags mapping to whether they are enabled.

### level

**Read:** table{campaign_name, is_simulation, is_tutorial, level_name, mod_name} · _read-only_

Information about the currently running scenario/campaign/tutorial.

### mod_name

**Read:** [string](../concepts/string.md) · _read-only_

The name of the mod from the environment this is used in.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

## Methods

| Method | Summary |
| --- | --- |
| [generate_event_name](#generate-event-name) | Generate a new, unique event ID that can be used to raise custom events with LuaBootstrap::raise_event. |
| [get_event_filter](#get-event-filter) | Gets the filters for the given event. |
| [get_event_handler](#get-event-handler) | Find the event handler for an event. |
| [get_event_id](#get-event-id) | Converts LuaEventType into related value of defines.events. Value will be provided also if event was not given a constant inside of defines.events. |
| [get_event_name](#get-event-name) | Converts LuaEventType into corresponding event name. If event has no name, no value will be given. |
| [get_event_order](#get-event-order) | Gets the mod event order as a string. |
| [new_notification_queue](#new-notification-queue) | Creates new empty instance of LuaNotificationQueue |
| [on_configuration_changed](#on-configuration-changed) | Register a function to be run when mod configuration changes. |
| [on_event](#on-event) | Register a handler to run on the specified event(s). Each mod can only register once for every event, as any additional registration will overwrite the previous one. This holds true even if different filters are used for subsequent registrations. |
| [on_init](#on-init) | Register a function to be run on mod initialization. |
| [on_load](#on-load) | Register a function to be run on save load. This is only called for mods that have been part of the save previously, or for players connecting to a running multiplayer session. |
| [on_nth_tick](#on-nth-tick) | Register a handler to run every nth-tick(s). When the game is on tick 0 it will trigger all registered handlers. |
| [raise_biter_base_built](#raise-biter-base-built) |  |
| [raise_console_chat](#raise-console-chat) |  |
| [raise_event](#raise-event) | Raise an event. Only events generated with LuaBootstrap::generate_event_name and the following can be raised: |
| [raise_market_item_purchased](#raise-market-item-purchased) |  |
| [raise_player_crafted_item](#raise-player-crafted-item) |  |
| [raise_player_fast_transferred](#raise-player-fast-transferred) |  |
| [raise_script_built](#raise-script-built) |  |
| [raise_script_destroy](#raise-script-destroy) |  |
| [raise_script_destroy_segmented_unit](#raise-script-destroy-segmented-unit) |  |
| [raise_script_revive](#raise-script-revive) |  |
| [raise_script_set_tiles](#raise-script-set-tiles) |  |
| [raise_script_teleported](#raise-script-teleported) |  |
| [register_metatable](#register-metatable) | Register a metatable to have linkage recorded and restored when saving/loading. |
| [register_on_object_destroyed](#register-on-object-destroyed) | Registers an object so that after it's destroyed, on_object_destroyed is called. |
| [set_event_filter](#set-event-filter) | Sets the filters for the given event. The filters are only retained when set after the actual event registration, because registering for an event with different or no filters will overwrite previously set ones. |

### generate_event_name

`generate_event_name()`

Generate a new, unique event ID that can be used to raise custom events with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event).

#### Return values

- [defines.events](../defines/defines.md) — The newly generated event ID. This will be a new value that does not correspond to any named entry in defines.events.

### get_event_filter

`get_event_filter(event)`

Gets the filters for the given event.

#### Parameters

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md)

ID of the event to get.

#### Return values

- [EventFilter](../concepts/EventFilter.md) _(optional)_ — The filters or `nil` if none are defined.

### get_event_handler

`get_event_handler(event)`

Find the event handler for an event.

#### Parameters

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md)

The event identifier to get a handler for.

#### Return values

- function([EventData](../concepts/EventData.md)) _(optional)_ — Reference to the function currently registered as the handler, if it was found.

### get_event_id

`get_event_id(event)`

Converts LuaEventType into related value of defines.events. Value will be provided also if event was not given a constant inside of defines.events.

#### Parameters

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md)

#### Return values

- [defines.events](../defines/defines.md)

### get_event_name

`get_event_name(event)`

Converts LuaEventType into corresponding event name. If event has no name, no value will be given.

#### Parameters

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md)

#### Return values

- [string](../concepts/string.md) _(optional)_

### get_event_order

`get_event_order()`

Gets the mod event order as a string.

#### Return values

- [string](../concepts/string.md)

### new_notification_queue

`new_notification_queue()`

Creates new empty instance of LuaNotificationQueue

#### Return values

- [LuaNotificationQueue](../classes/LuaNotificationQueue.md)

### on_configuration_changed

`on_configuration_changed(handler)`

Register a function to be run when mod configuration changes.

This is called when the game version or any mod version changed, when any mod was added or removed, when a startup setting has changed, when any prototypes have been added or removed, or when a migration was applied. It allows the mod to make any changes it deems appropriate to both the data structures in its [storage](../auxiliary/storage.md) table or to the game state through [LuaGameScript](../classes/LuaGameScript.md).

For more context, refer to the [Data Lifecycle](../auxiliary/data-lifecycle.md) page.

#### Parameters

##### handler

**Type:** function([ConfigurationChangedData](../concepts/ConfigurationChangedData.md)) ∣ [nil](../concepts/nil.md)

The handler for this event. Passing `nil` will unregister it.

### on_event

`on_event(event, filters, handler)`

Register a handler to run on the specified event(s). Each mod can only register once for every event, as any additional registration will overwrite the previous one. This holds true even if different filters are used for subsequent registrations.

#### Parameters

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md) ∣ array[[LuaEventType](../concepts/LuaEventType.md)]

The event(s) or custom-input to invoke the handler on.

##### filters

**Type:** [EventFilter](../concepts/EventFilter.md) · _optional_

The filters for this event. Can only be used when registering for individual events.

##### handler

**Type:** function([EventData](../concepts/EventData.md)) ∣ [nil](../concepts/nil.md)

The handler for this event. Passing `nil` will unregister it.

**Examples:**

```
-- Register for the on_tick event to print the current tick to console each tick
script.on_event(defines.events.on_tick,
function(event) game.print(event.tick) end)
```

```
-- Register for the on_built_entity event, limiting it to only be received when a `"fast-inserter"` is built
script.on_event(defines.events.on_built_entity,
function(event) game.print("Gotta go fast!") end,
{{filter = "name", name = "fast-inserter"}})
```

### on_init

`on_init(handler)`

Register a function to be run on mod initialization.

This is only called when a new save game is created or when a save file is loaded that previously didn't contain the mod. During it, the mod gets the chance to set up initial values that it will use for its lifetime. It has full access to [LuaGameScript](../classes/LuaGameScript.md) and the [storage](../auxiliary/storage.md) table and can change anything about them that it deems appropriate. No other events will be raised for the mod until it has finished this step.

For more context, refer to the [Data Lifecycle](../auxiliary/data-lifecycle.md) page.

#### Parameters

##### handler

**Type:** function() ∣ [nil](../concepts/nil.md)

The handler for this event. Passing `nil` will unregister it.

**Example:**

```
-- Initialize a `players` table in `storage` for later use
script.on_init(function()
  storage.players = {}
end)
```

### on_load

`on_load(handler)`

Register a function to be run on save load. This is only called for mods that have been part of the save previously, or for players connecting to a running multiplayer session.

It gives the mod the opportunity to rectify potential differences in local state introduced by the save/load cycle. Doing anything other than the following three will lead to desyncs, breaking multiplayer and replay functionality. Access to [LuaGameScript](../classes/LuaGameScript.md) is not available. The [storage](../auxiliary/storage.md) table can be accessed and is safe to read from, but not write to, as doing so will lead to an error.

The only legitimate uses of this event are these:

- Re-setup [metatables](https://www.lua.org/pil/13.html) as they are not persisted through the save/load cycle.

- Re-setup conditional event handlers, meaning subscribing to an event only when some condition is met to save processing time.

- Create local references to data stored in the [storage](../auxiliary/storage.md) table.

For all other purposes, [LuaBootstrap::on_init](../classes/LuaBootstrap.md#on-init), [LuaBootstrap::on_configuration_changed](../classes/LuaBootstrap.md#on-configuration-changed) or [migrations](../auxiliary/migrations.md) should be used instead.

For more context, refer to the [Data Lifecycle](../auxiliary/data-lifecycle.md) page.

#### Parameters

##### handler

**Type:** function() ∣ [nil](../concepts/nil.md)

The handler for this event. Passing `nil` will unregister it.

### on_nth_tick

`on_nth_tick(handler, tick)`

Register a handler to run every nth-tick(s). When the game is on tick 0 it will trigger all registered handlers.

#### Parameters

##### handler

**Type:** function([NthTickEventData](../concepts/NthTickEventData.md)) ∣ [nil](../concepts/nil.md)

The handler to run. Passing `nil` will unregister it for the provided nth-tick(s).

##### tick

**Type:** [MapTick](../concepts/MapTick.md) ∣ array[[MapTick](../concepts/MapTick.md)] ∣ [nil](../concepts/nil.md)

The nth-tick(s) to invoke the handler on. Passing `nil` as the only parameter will unregister all nth-tick handlers.

### raise_biter_base_built

`raise_biter_base_built({entity})`

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was built.

#### Raises

- `on_biter_base_built` — Raised with the provided arguments.

### raise_console_chat

`raise_console_chat({message, player_index})`

#### Parameters

##### message

**Type:** [string](../concepts/string.md)

The chat message to send.

##### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the chatting.

#### Raises

- `on_console_chat` — Raised with the provided arguments.

### raise_event

`raise_event(data, event)`

Raise an event. Only events generated with [LuaBootstrap::generate_event_name](../classes/LuaBootstrap.md#generate-event-name) and the following can be raised:

Events that can be raised manually:

- [on_console_chat](../events/on_console_chat.md)
- [on_player_crafted_item](../events/on_player_crafted_item.md)
- [on_player_fast_transferred](../events/on_player_fast_transferred.md)
- [on_biter_base_built](../events/on_biter_base_built.md)
- [on_market_item_purchased](../events/on_market_item_purchased.md)
- [script_raised_built](../events/script_raised_built.md)
- [script_raised_destroy](../events/script_raised_destroy.md)
- [script_raised_revive](../events/script_raised_revive.md)
- [script_raised_teleported](../events/script_raised_teleported.md)
- [script_raised_set_tiles](../events/script_raised_set_tiles.md)

#### Parameters

##### data

**Type:** [table](../concepts/table.md)

Table with extra data that will be passed to the event handler. Any invalid LuaObjects will silently stop the event from being raised.

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md)

ID or name of the event to raise.

**Example:**

```
-- Raise the on_console_chat event with the desired message 'from' the first player
local data = {player_index = 1, message = "Hello friends!"}
script.raise_event(defines.events.on_console_chat, data)
```

### raise_market_item_purchased

`raise_market_item_purchased({count, market, offer_index, player_index})`

#### Parameters

##### count

**Type:** [uint32](../concepts/uint32.md)

The amount of offers purchased.

##### market

**Type:** [LuaEntity](../classes/LuaEntity.md)

The market entity.

##### offer_index

**Type:** [uint32](../concepts/uint32.md)

The index of the offer purchased.

##### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the purchasing.

#### Raises

- `on_market_item_purchased` — Raised with the provided arguments.

### raise_player_crafted_item

`raise_player_crafted_item({item_stack, player_index, recipe})`

#### Parameters

##### item_stack

**Type:** [LuaItemStack](../classes/LuaItemStack.md)

The item that has been crafted.

##### player_index

**Type:** [uint32](../concepts/uint32.md)

The player doing the crafting.

##### recipe

**Type:** [RecipeID](../concepts/RecipeID.md)

The recipe used to craft this item.

#### Raises

- `on_player_crafted_item` — Raised with the provided arguments.

### raise_player_fast_transferred

`raise_player_fast_transferred({entity, from_player, is_split, player_index})`

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity transferred from or to.

##### from_player

**Type:** [boolean](../concepts/boolean.md)

Whether the transfer was from player to entity. If `false`, the transfer was from entity to player.

##### is_split

**Type:** [boolean](../concepts/boolean.md)

Whether the transfer was a split action (half stack).

##### player_index

**Type:** [uint32](../concepts/uint32.md)

The player transferred from or to.

#### Raises

- `on_player_fast_transferred` — Raised with the provided arguments.

### raise_script_built

`raise_script_built({entity})`

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that has been built.

#### Raises

- `script_raised_built` — Raised with the provided arguments.

### raise_script_destroy

`raise_script_destroy({entity})`

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was destroyed.

#### Raises

- `script_raised_destroy` — Raised with the provided arguments.

### raise_script_destroy_segmented_unit

`raise_script_destroy_segmented_unit({segmented_unit})`

#### Parameters

##### segmented_unit

**Type:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md)

The segmented unit that was destroyed.

#### Raises

- `script_raised_destroy_segmented_unit` — Raised with the provided arguments.

### raise_script_revive

`raise_script_revive({entity, tags})`

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was revived.

##### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The tags associated with this entity, if any.

#### Raises

- `script_raised_revive` — Raised with the provided arguments.

### raise_script_set_tiles

`raise_script_set_tiles({surface_index, tiles})`

#### Parameters

##### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface whose tiles have been changed.

##### tiles

**Type:** array[[Tile](../concepts/Tile.md)]

The tiles that have been changed.

#### Raises

- `script_raised_set_tiles` — Raised with the provided arguments.

### raise_script_teleported

`raise_script_teleported({entity, old_position, old_surface_index})`

#### Parameters

##### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was teleported.

##### old_position

**Type:** [MapPosition](../concepts/MapPosition.md)

The entity's position before the teleportation.

##### old_surface_index

**Type:** [uint8](../concepts/uint8.md)

The entity's surface before the teleportation.

#### Raises

- `script_raised_teleported` — Raised with the provided arguments.

### register_metatable

`register_metatable(metatable, name)`

Register a metatable to have linkage recorded and restored when saving/loading.

The metatable itself will not be saved. Instead, only the linkage to a registered metatable is saved, and the metatable registered under that name will be used when loading the table.

`register_metatable()` can not be used in the console, in event listeners or during a `remote.call()`.

The metatable first needs to be defined in the mod's root scope, then registered using this method. From then on, it will be properly restored for tables in [storage](../auxiliary/storage.md).

```
local metatable =
{
  __index = function(key)
    return "no value for key " .. key
  end
}
script.register_metatable("my_metatable", metatable)
```

This previously defined `metatable` can then be set on any table as usual:

```
local table = {key="value"}
setmetatable(table, metatable)
```

#### Parameters

##### metatable

**Type:** [table](../concepts/table.md)

The metatable to register.

##### name

**Type:** [string](../concepts/string.md)

The name of this metatable. Names must be unique per mod.

### register_on_object_destroyed

`register_on_object_destroyed(object)`

Registers an object so that after it's destroyed, [on_object_destroyed](../events/on_object_destroyed.md) is called.

Once an object is registered, it stays registered until it is actually destroyed, even through save/load cycles. The registration is global across all mods, meaning once one mod registers an object, all mods listening to [on_object_destroyed](../events/on_object_destroyed.md) will receive the event when it is destroyed. Registering the same object multiple times will still only fire the destruction event once, and will return the same registration number.

Depending on when a given object is destroyed, [on_object_destroyed](../events/on_object_destroyed.md) will either be fired at the end of the current tick or at the end of the next tick.

#### Parameters

##### object

**Type:** [RegistrationTarget](../concepts/RegistrationTarget.md)

The object to register.

#### Return values

- [uint64](../concepts/uint64.md) — The registration number. It is used to identify the object in the [on_object_destroyed](../events/on_object_destroyed.md) event.
- [uint64](../concepts/uint64.md) — The [useful identifier](../concepts/RegistrationTarget.md) of the object if it has one or `0` if it doesn't. This identifier is specific to the object type, for example for trains it is the value [LuaTrain::id](../classes/LuaTrain.md#id).
- [defines.target_type](../defines/defines.md) — Type of the target object.

### set_event_filter

`set_event_filter(event, filters)`

Sets the filters for the given event. The filters are only retained when set after the actual event registration, because registering for an event with different or no filters will overwrite previously set ones.

Limit the [on_marked_for_deconstruction](../events/on_marked_for_deconstruction.md) event to only be received when a non-ghost entity is marked for deconstruction.

```
script.set_event_filter(defines.events.on_marked_for_deconstruction, {{filter = "ghost", invert = true}})
```

Limit the [on_built_entity](../events/on_built_entity.md) event to only be received when either a `unit` or a `unit-spawner` is built.

```
script.set_event_filter(defines.events.on_built_entity, {{filter = "type", type = "unit"}, {filter = "type", type = "unit-spawner"}})
```

Limit the [on_entity_damaged](../events/on_entity_damaged.md) event to only be received when a `rail` is damaged by an `acid` attack.

```
script.set_event_filter(defines.events.on_entity_damaged, {{filter = "rail"}, {filter = "damage-type", type = "acid", mode = "and"}})
```

#### Parameters

##### event

**Type:** [LuaEventType](../concepts/LuaEventType.md)

ID of the event to filter.

##### filters

**Type:** [EventFilter](../concepts/EventFilter.md) · _optional_

The filters or `nil` to clear them.
