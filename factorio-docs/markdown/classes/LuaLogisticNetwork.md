# LuaLogisticNetwork

_class_

A single logistic network of a given force on a given surface.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [active_provider_points](#active-provider-points) | array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] |  |
| [all_construction_robots](#all-construction-robots) | [uint32](../concepts/uint32.md) |  |
| [all_logistic_robots](#all-logistic-robots) | [uint32](../concepts/uint32.md) |  |
| [available_construction_robots](#available-construction-robots) | [uint32](../concepts/uint32.md) |  |
| [available_logistic_robots](#available-logistic-robots) | [uint32](../concepts/uint32.md) |  |
| [cells](#cells) | array[[LuaLogisticCell](../classes/LuaLogisticCell.md)] |  |
| [construction_robots](#construction-robots) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [custom_name](#custom-name) | [string](../concepts/string.md) | yes |
| [empty_provider_points](#empty-provider-points) | array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] |  |
| [empty_providers](#empty-providers) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [logistic_members](#logistic-members) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [logistic_robots](#logistic-robots) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [network_id](#network-id) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [passive_provider_points](#passive-provider-points) | array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] |  |
| [provider_points](#provider-points) | array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] |  |
| [providers](#providers) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [requester_points](#requester-points) | array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] |  |
| [requesters](#requesters) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [robot_limit](#robot-limit) | [uint32](../concepts/uint32.md) |  |
| [robots](#robots) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [storage_points](#storage-points) | array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] |  |
| [storages](#storages) | array[[LuaEntity](../classes/LuaEntity.md)] |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |

### active_provider_points

**Read:** array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] · _read-only_

All active provider points in this network.

### all_construction_robots

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The total number of construction robots in the network (idle and active + in roboports).

### all_logistic_robots

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The total number of logistic robots in the network (idle and active + in roboports).

### available_construction_robots

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Number of construction robots available for a job.

### available_logistic_robots

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Number of logistic robots available for a job.

### cells

**Read:** array[[LuaLogisticCell](../classes/LuaLogisticCell.md)] · _read-only_

All cells in this network.

### construction_robots

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All currently deployed construction robots in this logistic network.

### custom_name

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md) · _optional_

The custom logistic network name set by the player or by script, if any.

### empty_provider_points

**Read:** array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] · _read-only_

All things that have empty provider points in this network.

### empty_providers

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All entities that have empty logistic provider points in this network.

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force this logistic network belongs to.

### logistic_members

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All other entities that have logistic points in this network (inserters mostly).

### logistic_robots

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All currently deployed logistic robots in this logistic network.

### network_id

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The unique logistic network ID.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### passive_provider_points

**Read:** array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] · _read-only_

All passive provider points in this network.

### provider_points

**Read:** array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] · _read-only_

All things that have provider points in this network.

### providers

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All entities that have logistic provider points in this network.

### requester_points

**Read:** array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] · _read-only_

All things that have requester points in this network.

### requesters

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All entities that have logistic requester points in this network.

### robot_limit

**Read:** [uint32](../concepts/uint32.md) · _read-only_

Maximum number of robots the network can work with. Currently only used for the personal roboport.

### robots

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All currently deployed robots in this logistic network.

### storage_points

**Read:** array[[LuaLogisticPoint](../classes/LuaLogisticPoint.md)] · _read-only_

All things that have storage points in this network.

### storages

**Read:** array[[LuaEntity](../classes/LuaEntity.md)] · _read-only_

All entities that have logistic storage points in this network.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

## Methods

| Method | Summary |
| --- | --- |
| [can_satisfy_request](#can-satisfy-request) | Can the network satisfy a request for a given item and count. |
| [find_cell_closest_to](#find-cell-closest-to) | Find logistic cell closest to a given position. |
| [get_contents](#get-contents) | Get item counts for the entire network, similar to how LuaInventory::get_contents does. |
| [get_item_count](#get-item-count) | Count given or all items in the network or given members. |
| [get_supply_counts](#get-supply-counts) | Get the amount of items of the given type indexed by the storage member. |
| [get_supply_points](#get-supply-points) | Gets the logistic points with of the given type indexed by the storage member. |
| [insert](#insert) | Insert items into the logistic network. This will actually insert the items into some logistic chests. |
| [remove_item](#remove-item) | Remove items from the logistic network. This will actually remove the items from some logistic chests. |
| [select_drop_point](#select-drop-point) | Find a logistic point to drop the specific item stack. |
| [select_pickup_point](#select-pickup-point) | Find the 'best' logistic point with this item ID and from the given position or from given chest type. |

### can_satisfy_request

`can_satisfy_request(count, include_buffers, item)`

Can the network satisfy a request for a given item and count.

#### Parameters

##### count

**Type:** [uint32](../concepts/uint32.md) · _optional_

Count to check. Defaults to 1.

##### include_buffers

**Type:** [boolean](../concepts/boolean.md) · _optional_

Should buffers be considered? Defaults to false.

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

Item name to check.

#### Return values

- [boolean](../concepts/boolean.md) — Whether the network can satisfy the request.

### find_cell_closest_to

`find_cell_closest_to(position)`

Find logistic cell closest to a given position.

#### Parameters

##### position

**Type:** [MapPosition](../concepts/MapPosition.md)

#### Return values

- [LuaLogisticCell](../classes/LuaLogisticCell.md) _(optional)_ — `nil` if no cell was found.

### get_contents

`get_contents(member)`

Get item counts for the entire network, similar to how [LuaInventory::get_contents](../classes/LuaInventory.md#get-contents) does.

#### Parameters

##### member

**Type:** `"storage"` ∣ `"providers"` · _optional_

Logistic members to check. If not given, gives item counts for the entire network.

#### Return values

- array[[ItemWithQualityCount](../concepts/ItemWithQualityCount.md)] — List of all items in the network.

### get_item_count

`get_item_count(item, member)`

Count given or all items in the network or given members.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md) · _optional_

Item name to count. If not given, gives counts of all items in the network.

##### member

**Type:** `"storage"` ∣ `"providers"` · _optional_

Logistic members to check. If not given, gives count in the entire network.

#### Return values

- [int32](../concepts/int32.md)

### get_supply_counts

`get_supply_counts(item)`

Get the amount of items of the given type indexed by the storage member.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

Item name to check.

#### Return values

- [LogisticsNetworkSupplyCounts](../concepts/LogisticsNetworkSupplyCounts.md)

### get_supply_points

`get_supply_points(item)`

Gets the logistic points with of the given type indexed by the storage member.

#### Parameters

##### item

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

Item name to check.

#### Return values

- [LogisticsNetworkSupplyPoints](../concepts/LogisticsNetworkSupplyPoints.md)

### insert

`insert(item, members)`

Insert items into the logistic network. This will actually insert the items into some logistic chests.

#### Parameters

##### item

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

What to insert.

##### members

**Type:** `"storage"` ∣ `"storage-empty"` ∣ `"storage-empty-slot"` ∣ `"requester"` · _optional_

Which logistic members to insert the items to. `"storage-empty"` inserts into storage chests that are completely empty, `"storage-empty-slot"` inserts into storage chests that have an empty slot. If not specified, inserts items into the logistic network in the usual order.

#### Return values

- [uint32](../concepts/uint32.md) — Number of items actually inserted.

### remove_item

`remove_item(item, members)`

Remove items from the logistic network. This will actually remove the items from some logistic chests.

#### Parameters

##### item

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

What to remove.

##### members

**Type:** `"active-provider"` ∣ `"passive-provider"` ∣ `"buffer"` ∣ `"storage"` · _optional_

Which logistic members to remove from. If not specified, removes from the network in the usual order.

#### Return values

- [uint32](../concepts/uint32.md) — Number of items removed.

### select_drop_point

`select_drop_point({members, stack})`

Find a logistic point to drop the specific item stack.

#### Parameters

##### members

**Type:** `"storage"` ∣ `"storage-empty"` ∣ `"storage-empty-slot"` ∣ `"requester"` · _optional_

When given, it will find from only the specific type of member. If not specified, selects with normal priorities.

##### stack

**Type:** [ItemStackIdentification](../concepts/ItemStackIdentification.md)

Name of the item to drop off.

#### Return values

- [LuaLogisticPoint](../classes/LuaLogisticPoint.md) _(optional)_ — `nil` if no point was found.

### select_pickup_point

`select_pickup_point({include_buffers, members, name, position})`

Find the 'best' logistic point with this item ID and from the given position or from given chest type.

#### Parameters

##### include_buffers

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether to consider buffer chests or not. Defaults to false. Only considered if selecting with position.

##### members

**Type:** `"active-provider"` ∣ `"passive-provider"` ∣ `"buffer"` ∣ `"storage"` · _optional_

When given, it will find from only the specific type of member. If not specified, selects with normal priorities. Not considered if position is specified.

##### name

**Type:** [ItemWithQualityID](../concepts/ItemWithQualityID.md)

Name of the item to pick up.

##### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

When given, it will find the storage 'best' storage point from this position.

#### Return values

- [LuaLogisticPoint](../classes/LuaLogisticPoint.md) _(optional)_ — `nil` if no point was found.
