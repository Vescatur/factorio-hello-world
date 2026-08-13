# LabPrototype

_prototype_

**Prototype type string:** `type = "lab"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

A [lab](https://wiki.factorio.com/Lab). It consumes science packs (items) to research [technologies](../prototypes/TechnologyPrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allowed_effects](#allowed-effects) | [EffectTypeLimitation](../types/EffectTypeLimitation.md) | yes |
| [allowed_module_categories](#allowed-module-categories) | array[[ModuleCategoryID](../types/ModuleCategoryID.md)] | yes |
| [circuit_connector](#circuit-connector) | [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) | yes |
| [circuit_wire_max_distance](#circuit-wire-max-distance) | [double](../types/double.md) | yes |
| [default_technology_level_signal](#default-technology-level-signal) | [SignalIDConnector](../types/SignalIDConnector.md) | yes |
| [draw_circuit_wires](#draw-circuit-wires) | [boolean](../types/boolean.md) | yes |
| [draw_copper_wires](#draw-copper-wires) | [boolean](../types/boolean.md) | yes |
| [effect_receiver](#effect-receiver) | [EffectReceiver](../types/EffectReceiver.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [frozen_patch](#frozen-patch) | [Sprite](../types/Sprite.md) | yes |
| [inputs](#inputs) | array[[ItemID](../types/ItemID.md)] |  |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [module_slots](#module-slots) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [off_animation](#off-animation) | [Animation](../types/Animation.md) | yes |
| [on_animation](#on-animation) | [Animation](../types/Animation.md) | yes |
| [quality_affects_module_slots](#quality-affects-module-slots) | [boolean](../types/boolean.md) | yes |
| [researching_speed](#researching-speed) | [double](../types/double.md) | yes |
| [science_pack_drain_rate_percent](#science-pack-drain-rate-percent) | [uint8](../types/uint8.md) | yes |
| [trash_inventory_size](#trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [uses_quality_drain_modifier](#uses-quality-drain-modifier) | [boolean](../types/boolean.md) | yes |

### allowed_effects

**Type:** [EffectTypeLimitation](../types/EffectTypeLimitation.md) · _optional_ · **Default:** `All effects except quality are allowed`

Sets the [modules](../prototypes/ModulePrototype.md) and [beacon](../prototypes/BeaconPrototype.md) effects that are allowed to be used on this lab.

### allowed_module_categories

**Type:** array[[ModuleCategoryID](../types/ModuleCategoryID.md)] · _optional_ · **Default:** `All module categories are allowed`

Sets the [module categories](../prototypes/ModuleCategory.md) that are allowed to be inserted into this machine.

### circuit_connector

**Type:** [CircuitConnectorDefinition](../types/CircuitConnectorDefinition.md) · _optional_

### circuit_wire_max_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The maximum circuit wire distance for this entity.

### default_technology_level_signal

**Type:** [SignalIDConnector](../types/SignalIDConnector.md) · _optional_

### draw_circuit_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### draw_copper_wires

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### effect_receiver

**Type:** [EffectReceiver](../types/EffectReceiver.md) · _optional_

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

Defines how this lab gets energy.

### energy_usage

**Type:** [Energy](../types/Energy.md)

The amount of energy this lab uses.

### frozen_patch

**Type:** [Sprite](../types/Sprite.md) · _optional_

### inputs

**Type:** array[[ItemID](../types/ItemID.md)]

A list of the names of science packs that can be used in this lab.

If a technology requires other types of science packs, it cannot be researched in this lab.

**Example:**

```
inputs = {"automation-science-pack", "logistic-science-pack", "chemical-science-pack", "military-science-pack", "production-science-pack", "utility-science-pack", "space-science-pack"}
```

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### module_slots

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_

The number of module slots in this lab.

### off_animation

**Type:** [Animation](../types/Animation.md) · _optional_

The animation that plays when the lab is idle.

### on_animation

**Type:** [Animation](../types/Animation.md) · _optional_

The animation that plays when the lab is active.

### quality_affects_module_slots

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::lab_module_slots_bonus](../prototypes/QualityPrototype.md#lab-module-slots-bonus) will be added to module slots count.

### researching_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### science_pack_drain_rate_percent

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 100}`

May not be `0` or larger than `100`.

### trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_

### uses_quality_drain_modifier

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the [QualityPrototype::science_pack_drain_multiplier](../prototypes/QualityPrototype.md#science-pack-drain-multiplier) of the quality of this lab should affect how much science is consumed to research one unit of technology.
