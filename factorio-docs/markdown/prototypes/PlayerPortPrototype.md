# PlayerPortPrototype

_prototype_ · **deprecated**

**Prototype type string:** `type = "player-port"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Deprecated in 2.0.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.
