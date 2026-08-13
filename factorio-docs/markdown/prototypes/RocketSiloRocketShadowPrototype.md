# RocketSiloRocketShadowPrototype

_prototype_

**Prototype type string:** `type = "rocket-silo-rocket-shadow"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The shadow of the rocket inside the rocket silo.

**Example:**

```
{
  type = "rocket-silo-rocket-shadow",
  name = "rocket-silo-rocket-shadow",
  flags = {"not-on-map"},
  hidden = true,
  collision_mask = {layers={}, not_colliding_with_itself=true},
  collision_box = {{0, 0}, {10, 3.5}},
  selection_box = {{0, 0}, {0, 0}}
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 19}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.
