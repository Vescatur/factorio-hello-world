# on_surface_imported

_event_

Called after a surface is imported via the map editor.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [original_name](#original-name) | [string](../concepts/string.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### original_name

**Type:** [string](../concepts/string.md)

The original surface name.

### surface_index

**Type:** [uint32](../concepts/uint32.md)

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
