# script_raised_set_tiles

_event_

A static event mods can use to tell other mods they changed tiles on a surface by script. This event is only raised if a mod does so with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event) or [LuaBootstrap::raise_script_set_tiles](../classes/LuaBootstrap.md#raise-script-set-tiles), or when `raise_event` is passed to [LuaSurface::set_tiles](../classes/LuaSurface.md#set-tiles).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [surface_index](#surface-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |
| [tiles](#tiles) | array[[Tile](../concepts/Tile.md)] |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### surface_index

**Type:** [uint32](../concepts/uint32.md)

The surface whose tiles were changed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.

### tiles

**Type:** array[[Tile](../concepts/Tile.md)]

The tiles that were changed.
