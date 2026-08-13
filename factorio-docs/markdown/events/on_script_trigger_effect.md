# on_script_trigger_effect

_event_

Called when a script trigger effect is triggered.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cause_entity](#cause-entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [effect_id](#effect-id) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [source_entity](#source-entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [source_position](#source-position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [target_entity](#target-entity) | [LuaEntity](../classes/LuaEntity.md) | yes |
| [target_position](#target-position) | [MapPosition](../concepts/MapPosition.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cause_entity

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

The entity that originally caused the sequence of triggers

### effect_id

**Type:** [string](../concepts/string.md)

The effect_id specified in the trigger effect.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### quality

**Type:** [string](../concepts/string.md) · _optional_

### source_entity

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### source_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface the effect happened on.

### target_entity

**Type:** [LuaEntity](../classes/LuaEntity.md) · _optional_

### target_position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
