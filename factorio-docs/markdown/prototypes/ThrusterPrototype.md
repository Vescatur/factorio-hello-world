# ThrusterPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "thruster"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Consumes two fluids as fuel to produce thrust for a space platform.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [fuel_fluid_box](#fuel-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [graphics_set](#graphics-set) | [ThrusterGraphicsSet](../types/ThrusterGraphicsSet.md) | yes |
| [max_performance](#max-performance) | [ThrusterPerformancePoint](../types/ThrusterPerformancePoint.md) |  |
| [min_performance](#min-performance) | [ThrusterPerformancePoint](../types/ThrusterPerformancePoint.md) |  |
| [oxidizer_fluid_box](#oxidizer-fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [plumes](#plumes) | [PlumesSpecification](../types/PlumesSpecification.md) | yes |

### fuel_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

If a [filter](../types/FluidBox.md#filter) is set for this fluidbox it determines what the thruster considers the first fuel.

### graphics_set

**Type:** [ThrusterGraphicsSet](../types/ThrusterGraphicsSet.md) · _optional_

### max_performance

**Type:** [ThrusterPerformancePoint](../types/ThrusterPerformancePoint.md)

`max_performance.fluid_volume` must not be smaller than `min_performance.fluid_volume`.

### min_performance

**Type:** [ThrusterPerformancePoint](../types/ThrusterPerformancePoint.md)

### oxidizer_fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

If a [filter](../types/FluidBox.md#filter) is set for this fluidbox it determines what the thruster considers the second fuel.

### plumes

**Type:** [PlumesSpecification](../types/PlumesSpecification.md) · _optional_
