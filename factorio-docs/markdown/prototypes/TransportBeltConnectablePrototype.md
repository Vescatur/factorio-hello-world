# TransportBeltConnectablePrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Abstract class that anything that is a belt or can connect to belts uses.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation_speed_coefficient](#animation-speed-coefficient) | [double](../types/double.md) | yes |
| [belt_animation_set](#belt-animation-set) | [TransportBeltAnimationSet](../types/TransportBeltAnimationSet.md) | yes |
| [collision_box](#collision-box) | [BoundingBox](../types/BoundingBox.md) | yes |
| [flags](#flags) | [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [speed](#speed) | [double](../types/double.md) |  |

### animation_speed_coefficient

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### belt_animation_set

**Type:** [TransportBeltAnimationSet](../types/TransportBeltAnimationSet.md) · _optional_

### collision_box

**Type:** [BoundingBox](../types/BoundingBox.md) · _optional_ · _overrides parent_ · **Default:** `Empty = `{{0, 0}, {0, 0}}``

Transport belt connectable entities must have [collision_box](../prototypes/EntityPrototype.md#collision-box) of an appropriate minimal size, they should occupy more than half of every tile the entity covers.

**Example:**

```
collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
```

### flags

**Type:** [EntityPrototypeFlags](../types/EntityPrototypeFlags.md) · _optional_ · _overrides parent_

Transport belt connectable entities cannot have the `"building-direction-8-way"` flag.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 45}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### speed

**Type:** [double](../types/double.md)

The speed of the belt: `speed × 480 = x Items/second`.

The raw value is expressed as the number of tiles traveled by each item on the belt per tick, relative to the belt's maximum density - e.g. `x items/second ÷ (4 items/lane × 2 lanes/belt × 60 ticks/second) = <speed> belts/tick` where a "belt" is the size of one tile. See [Transport_belts/Physics](https://wiki.factorio.com/Transport_belts/Physics) for more details.

Must be a positive non-infinite number. The number is a fixed point number with 8 bits reserved for decimal precision, meaning the smallest value step is `1/2^8 = 0.00390625`. In the simple case of a non-curved belt, the rate is multiples of `1.875` items/s, even though the entity tooltip may show a different rate.
