# RailPlannerPrototype

_prototype_

**Prototype type string:** `type = "rail-planner"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

A [rail planner](https://wiki.factorio.com/Rail_planner).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [manual_length_limit](#manual-length-limit) | [double](../types/double.md) | yes |
| [rails](#rails) | array[[EntityID](../types/EntityID.md)] |  |
| [support](#support) | [EntityID](../types/EntityID.md) | yes |

### manual_length_limit

**Type:** [double](../types/double.md) · _optional_ · **Default:** `8 * 2 + 1.41 + 0.5`

### rails

**Type:** array[[EntityID](../types/EntityID.md)]

May not be an empty array. Entities must be rails.

### support

**Type:** [EntityID](../types/EntityID.md) · _optional_

Name of a rail support.
