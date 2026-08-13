# EventData

_concept_

Information about the event that has been raised. The table can also contain other fields depending on the type of event. See the list of Factorio events for more information on these.

**Definition:** table{mod_name, name, tick}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [mod_name](#mod-name) | [string](../concepts/string.md) | yes |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### mod_name

**Type:** [string](../concepts/string.md) · _optional_

The name of the mod that raised the event if it was raised using [LuaBootstrap::raise_event](../classes/LuaBootstrap.md#raise-event).

### name

**Type:** [defines.events](../defines/defines.md)

The identifier of the event this handler was registered to.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

The tick during which the event happened.
