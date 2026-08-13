# on_segmented_unit_created

_event_

Called when a segmented unit is created for any reason.

**Filter:** [LuaSegmentedUnitCreatedEventFilter](../concepts/LuaSegmentedUnitCreatedEventFilter.md)

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [cause](#cause) | [defines.segmented_unit_created_cause](../defines/defines.md) |  |
| [clone_source](#clone-source) | [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [segmented_unit](#segmented-unit) | [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### cause

**Type:** [defines.segmented_unit_created_cause](../defines/defines.md)

The reason that the segmented unit was created.

### clone_source

**Type:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md) · _optional_

If the new segmented unit was cloned, the segmented unit from which the new unit was cloned.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### segmented_unit

**Type:** [LuaSegmentedUnit](../classes/LuaSegmentedUnit.md)

The segmented unit that was created.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
