# BurnerGeneratorPrototype

_prototype_

**Prototype type string:** `type = "burner-generator"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

An entity that produces power from a burner energy source.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [always_draw_idle_animation](#always-draw-idle-animation) | [boolean](../types/boolean.md) | yes |
| [animation](#animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [burner](#burner) | [BurnerEnergySource](../types/BurnerEnergySource.md) |  |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) |  |
| [idle_animation](#idle-animation) | [Animation4Way](../types/Animation4Way.md) | yes |
| [max_power_output](#max-power-output) | [Energy](../types/Energy.md) |  |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |

### always_draw_idle_animation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the `idle_animation` should also play when the generator is active.

### animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Plays when the generator is active. `idle_animation` must have the same frame count as animation.

### burner

**Type:** [BurnerEnergySource](../types/BurnerEnergySource.md)

The input energy source of the generator.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md)

The output energy source of the generator. Any emissions specified on this energy source are ignored, they must be specified on `burner`.

### idle_animation

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

Plays when the generator is inactive. Idle animation must have the same frame count as `animation`.

### max_power_output

**Type:** [Energy](../types/Energy.md)

How much energy this generator can produce.

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed and working sound.
