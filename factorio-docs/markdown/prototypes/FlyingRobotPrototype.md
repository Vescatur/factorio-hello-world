# FlyingRobotPrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Abstract base for construction/logistics and combat robots.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [energy_per_move](#energy-per-move) | [Energy](../types/Energy.md) | yes |
| [energy_per_tick](#energy-per-tick) | [Energy](../types/Energy.md) | yes |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [max_energy](#max-energy) | [Energy](../types/Energy.md) | yes |
| [max_speed](#max-speed) | [double](../types/double.md) | yes |
| [max_to_charge](#max-to-charge) | [float](../types/float.md) | yes |
| [min_to_charge](#min-to-charge) | [float](../types/float.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [speed](#speed) | [double](../types/double.md) |  |
| [speed_multiplier_when_out_of_energy](#speed-multiplier-when-out-of-energy) | [float](../types/float.md) | yes |

### energy_per_move

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

How much energy does it cost to move 1 tile.

Used only by [robots with logistic interface](../prototypes/RobotWithLogisticInterfacePrototype.md).

**Example:**

```
energy_per_move = "5kJ"
```

### energy_per_tick

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

How much energy does it cost to fly for 1 tick.

Used only by [robots with logistic interface](../prototypes/RobotWithLogisticInterfacePrototype.md).

**Example:**

```
energy_per_tick = "0.05kJ"
```

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### max_energy

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

How much energy can be stored in the batteries.

Used only by [robots with logistic interface](../prototypes/RobotWithLogisticInterfacePrototype.md).

**Example:**

```
max_energy = "1.5MJ"
```

### max_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `max double`

The maximum flying speed of the robot, including bonuses, in tiles/tick. Useful to limit the impact of [worker robot speed research](../types/WorkerRobotSpeedModifier.md).

Must be >= speed.

### max_to_charge

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.95}`

If the robot's battery fill ratio is more than this, it does not need to charge before stationing.

Used only by [robots with logistic interface](../prototypes/RobotWithLogisticInterfacePrototype.md).

### min_to_charge

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.2}`

The robot will go to charge when its battery fill ratio is less than this.

Used only by [robots with logistic interface](../prototypes/RobotWithLogisticInterfacePrototype.md).

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 35}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### speed

**Type:** [double](../types/double.md)

The flying speed of the robot, in tiles/tick.

### speed_multiplier_when_out_of_energy

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Some robots simply crash, some slowdown but keep going. 0 means crash.

Used only by [robots with logistic interface](../prototypes/RobotWithLogisticInterfacePrototype.md).

**Example:**

```
speed_multiplier_when_out_of_energy = 0.2
```
