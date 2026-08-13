# script_raised_destroy_segmented_unit

_event_

A static event that mods can use to tell other mods they destroyed a segmented unit by script. This event is only raised if a mod does so with [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event), or [LuaBootstrap::raise_script_destroy_segmented_unit](../classes/LuaBootstrap.md#raise-script-destroy-segmented-unit), or when `raise_destroy` is passed to [LuaSegmentedUnit::destroy](../classes/LuaSegmentedUnit.md#destroy).

**Filter:** [LuaScriptRaisedDestroySegmentedUnitEventFilter](../concepts/LuaScriptRaisedDestroySegmentedUnitEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [segmented_unit](#segmented-unit) | [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### segmented_unit

**Type:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md)

The segmented unit that was destroyed.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
