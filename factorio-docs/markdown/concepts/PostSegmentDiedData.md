# PostSegmentDiedData

_concept_

Information about an individual segment in a segmented unit when the unit died.

**Definition:** table{orientation, position}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [orientation](#orientation) | [RealOrientation](../concepts/RealOrientation.md) | yes |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) | yes |

### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The segment's orientation when the unit died, if it had one.

### position

**Type:** [MapPosition](../concepts/MapPosition.md) · _optional_

The segment's position when the unit died, if it had one.
