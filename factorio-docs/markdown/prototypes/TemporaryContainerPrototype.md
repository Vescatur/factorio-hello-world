# TemporaryContainerPrototype

_prototype_

**Prototype type string:** `type = "temporary-container"`

**Inherits from:** [ContainerPrototype](../prototypes/ContainerPrototype.md)

A container that can automatically destroy itself when it is emptied or after it has existed for a certain time.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alert_after_time](#alert-after-time) | [uint32](../types/uint32.md) | yes |
| [destroy_on_empty](#destroy-on-empty) | [boolean](../types/boolean.md) | yes |
| [time_to_live](#time-to-live) | [uint32](../types/uint32.md) | yes |

### alert_after_time

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

If the container has existed for this long, [an alert](../prototypes/UtilitySprites.md#unclaimed-cargo-icon) is show on it. In ticks, 0 for no alert.

### destroy_on_empty

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the container is automatically destroyed when it is emptied.

### time_to_live

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Duration after which the container and its contents are automatically destroyed. In ticks, 0 for infinite.
