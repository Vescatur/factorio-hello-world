# LightningAttractorPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "lightning-attractor"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Absorbs [lightning](../prototypes/LightningPrototype.md) and optionally converts it into electricity.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [chargable_graphics](#chargable-graphics) | [ChargableGraphics](../types/ChargableGraphics.md) | yes |
| [efficiency](#efficiency) | [double](../types/double.md) | yes |
| [energy_source](#energy-source) | [ElectricEnergySource](../types/ElectricEnergySource.md) | yes |
| [lightning_strike_offset](#lightning-strike-offset) | [MapPosition](../types/MapPosition.md) | yes |
| [range_elongation](#range-elongation) | [double](../types/double.md) | yes |

### chargable_graphics

**Type:** [ChargableGraphics](../types/ChargableGraphics.md) · _optional_

### efficiency

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Cannot be less than 0.

### energy_source

**Type:** [ElectricEnergySource](../types/ElectricEnergySource.md) · _optional_

Mandatory if `efficiency` is larger than 0. May not be defined if `efficiency` is 0.

### lightning_strike_offset

**Type:** [MapPosition](../types/MapPosition.md) · _optional_

### range_elongation

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
