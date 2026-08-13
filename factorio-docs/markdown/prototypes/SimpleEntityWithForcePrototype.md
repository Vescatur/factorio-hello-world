# SimpleEntityWithForcePrototype

_prototype_

**Prototype type string:** `type = "simple-entity-with-force"`

**Inherits from:** [SimpleEntityWithOwnerPrototype](../prototypes/SimpleEntityWithOwnerPrototype.md)

By default, this entity will be a priority target for units/turrets, who will choose to attack it even if it does not block their path. Setting [EntityWithOwnerPrototype::is_military_target](../prototypes/EntityWithOwnerPrototype.md#is-military-target) to `false` will turn this off, which then makes this type equivalent to [SimpleEntityWithOwnerPrototype](../prototypes/SimpleEntityWithOwnerPrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).
