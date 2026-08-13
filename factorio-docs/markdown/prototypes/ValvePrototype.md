# ValvePrototype

_prototype_

**Prototype type string:** `type = "valve"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A passive device that provides limited control of fluid flow between pipelines.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animations](#animations) | [Animation4Way](../types/Animation4Way.md) | yes |
| [flow_rate](#flow-rate) | [FluidAmount](../types/FluidAmount.md) |  |
| [fluid_box](#fluid-box) | [FluidBox](../types/FluidBox.md) |  |
| [frozen_patch](#frozen-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [mode](#mode) | [ValveMode](../types/ValveMode.md) |  |
| [threshold](#threshold) | [float](../types/float.md) | yes |

### animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### flow_rate

**Type:** [FluidAmount](../types/FluidAmount.md)

The max flow rate through the valve per tick.

### fluid_box

**Type:** [FluidBox](../types/FluidBox.md)

Must have at least one `"output"` [FluidFlowDirection](../types/FluidFlowDirection.md) and at least one `"input-output"` [FluidFlowDirection](../types/FluidFlowDirection.md).

### frozen_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

### mode

**Type:** [ValveMode](../types/ValveMode.md)

### threshold

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Ignored if [ValvePrototype::mode](../prototypes/ValvePrototype.md#mode) is `"one-way"`. Must be between `0` and `1` inclusive.
