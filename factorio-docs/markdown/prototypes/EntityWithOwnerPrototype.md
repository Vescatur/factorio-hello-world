# EntityWithOwnerPrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithHealthPrototype](../prototypes/EntityWithHealthPrototype.md)

Abstract base of all entities with a force in the game. These entities have a [LuaEntity::unit_number](../classes/LuaEntity.md#unit-number) during runtime. Can be high priority [military targets](https://wiki.factorio.com/Military_units_and_structures).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_run_time_change_of_is_military_target](#allow-run-time-change-of-is-military-target) | [boolean](../types/boolean.md) | yes |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [quality_indicator_scale](#quality-indicator-scale) | [double](../types/double.md) | yes |
| [quality_indicator_shift](#quality-indicator-shift) | [Vector](../types/Vector.md) | yes |

### allow_run_time_change_of_is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is true, this entity's `is_military_target` property can be changed during runtime (on the entity, not on the prototype itself).

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### quality_indicator_scale

**Type:** [double](../types/double.md) · _optional_ · **Default:** `Calculated based on entity tile_width and height`

The default scale is based on the tile distance of the shorter dimension. Where size 3 results into scale 1. The default minimum is 0.5 and maximum 1.0.

### quality_indicator_shift

**Type:** [Vector](../types/Vector.md) · _optional_

The shift from the bottom left corner of the selection box.
