# on_blueprint_settings_pasted

_event_

Called when a blueprint entity is pasted over an existing entity or entity ghost.

The entity's settings, rotation, mirroring, wire connections, etc. may have been updated. This event is raised even if no settings actually changed.

Note this event is not raised when an entity is upgraded or marked for upgrade, when a new entity is created, or when an entity ghost is instantly revived. [on_built_entity](../events/on_built_entity.md) is raised instead in those cases.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [entity](#entity) | [LuaEntity](../classes/LuaEntity.md) |  |
| [mirrored](#mirrored) | [boolean](../concepts/boolean.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [previous_direction](#previous-direction) | [defines.direction](../defines/defines.md) | yes |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### entity

**Type:** [LuaEntity](../classes/LuaEntity.md)

The entity that was updated. Can be either an entity or an entity ghost.

### mirrored

**Type:** [boolean](../concepts/boolean.md)

Whether the blueprint changed the entity's mirroring.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player who pasted the blueprint, if any. `nil` if pasted by script.

### previous_direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

If the blueprint rotated the entity, provides the entity's direction before the rotation. Note: not provided for rotations due to superforce printing.

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

Tags from the source blueprint, if any. Only provided for non-ghost entities. For ghost entities, access tags via `entity.tags`.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
