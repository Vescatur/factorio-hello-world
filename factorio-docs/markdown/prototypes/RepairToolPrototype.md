# RepairToolPrototype

_prototype_

**Prototype type string:** `type = "repair-tool"`

**Inherits from:** [ToolPrototype](../prototypes/ToolPrototype.md)

A [repair pack](https://wiki.factorio.com/Repair_pack). Using the tool decreases durability to restore entity health.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [speed](#speed) | [float](../types/float.md) |  |

### speed

**Type:** [float](../types/float.md)

Entity health repaired per used [ToolPrototype::durability](../prototypes/ToolPrototype.md#durability). E.g. a repair tool with 5 durability and a repair speed of 2 will restore 10 health.

This is then multiplied by the [EntityWithHealthPrototype::repair_speed_modifier](../prototypes/EntityWithHealthPrototype.md#repair-speed-modifier) of the entity.
