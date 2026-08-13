# SpidertronRemotePrototype

_prototype_

**Prototype type string:** `type = "spidertron-remote"`

**Inherits from:** [SelectionToolPrototype](../prototypes/SelectionToolPrototype.md)

The [spidertron remote](https://wiki.factorio.com/Spidertron_remote). This remote can only be used for entities of type [SpiderVehiclePrototype](../prototypes/SpiderVehiclePrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [icon_color_indicator_mask](#icon-color-indicator-mask) | [FileName](../types/FileName.md) | yes |
| [stack_size](#stack-size) | `1` |  |

### icon_color_indicator_mask

**Type:** [FileName](../types/FileName.md) · _optional_

Color mask for the icon. This is used to show the color of the spidertron remote LEDS in the GUI.

### stack_size

**Type:** `1` · _overrides parent_

Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag is set.

**Example:**

```
stack_size = 1
```
