# SegmentSpecification

_concept_

A runtime representation of [SegmentSpecification](../types/SegmentSpecification.md).

**Definition:** table{distance_from_head, segment}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [distance_from_head](#distance-from-head) | [double](../concepts/double.md) |  |
| [segment](#segment) | [LuaEntityPrototype](../classes/LuaEntityPrototype.md) |  |

### distance_from_head

**Type:** [double](../concepts/double.md)

The distance (in tiles) along the unit's body between this segment's center and the head [SegmentedUnitPrototype](../prototypes/SegmentedUnitPrototype.md)'s center. This value is automatically pre-calculated after the prototype phase.

### segment

**Type:** [LuaEntityPrototype](../classes/LuaEntityPrototype.md)

The [SegmentPrototype](../prototypes/SegmentPrototype.md) at this position in the unit.
