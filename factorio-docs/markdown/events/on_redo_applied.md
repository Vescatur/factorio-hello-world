# on_redo_applied

_event_

Called when the player triggers "redo".

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [actions](#actions) | array[[UndoRedoAction](../concepts/UndoRedoAction.md)] |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### actions

**Type:** array[[UndoRedoAction](../concepts/UndoRedoAction.md)]

The context of the redo action.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who triggered the redo action.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
