# SegmentEngineSpecification

_concept_

A runtime representation of [SegmentEngineSpecification](../types/SegmentEngineSpecification.md).

**Definition:** table{max_body_nodes, segments}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [max_body_nodes](#max-body-nodes) | [uint32](../concepts/uint32.md) |  |
| [segments](#segments) | array[[SegmentSpecification](../concepts/SegmentSpecification.md)] |  |

### max_body_nodes

**Type:** [uint32](../concepts/uint32.md)

The maximum number of body nodes that a segmented unit instance can have.

### segments

**Type:** array[[SegmentSpecification](../concepts/SegmentSpecification.md)]

All segments (except for the head segment) that compose the body of the segmented unit.
