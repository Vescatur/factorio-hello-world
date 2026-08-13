# on_script_inventory_resized

_event_

Called just after a script inventory is resized.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [inventory](#inventory) | [LuaInventory](../classes/LuaInventory.md) |  |
| [mod](#mod) | [string](../concepts/string.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [new_size](#new-size) | [uint32](../concepts/uint32.md) |  |
| [old_size](#old-size) | [uint32](../concepts/uint32.md) |  |
| [overflow_inventory](#overflow-inventory) | [LuaInventory](../classes/LuaInventory.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

### mod

**Type:** [string](../concepts/string.md)

The mod that did the resizing. This will be `"core"` if done by console command or scenario script.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### new_size

**Type:** [uint32](../concepts/uint32.md)

The new inventory size.

### old_size

**Type:** [uint32](../concepts/uint32.md)

The old inventory size.

### overflow_inventory

**Type:** [LuaInventory](../classes/LuaInventory.md)

Any items which didn't fit into the new inventory size.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

If done by console command; the player who ran the command.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
