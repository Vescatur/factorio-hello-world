# LightningPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "lightning"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Lightning randomly hits entities on planets with [lightning_properties](../prototypes/PlanetPrototype.md#lightning-properties).

If a [lightning attractor](../prototypes/LightningAttractorPrototype.md) is hit by lightning it will absorb the lightning hit for energy.

If a something that is not an attractor is hit by lightning it will be damaged by the strike.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [attracted_volume_modifier](#attracted-volume-modifier) | [float](../types/float.md) | yes |
| [attractor_hit_effect](#attractor-hit-effect) | [Trigger](../types/Trigger.md) | yes |
| [damage](#damage) | [DamageParameters](../types/DamageParameters.md) | yes |
| [effect_duration](#effect-duration) | [uint16](../types/uint16.md) |  |
| [energy](#energy) | [Energy](../types/Energy.md) | yes |
| [graphics_set](#graphics-set) | [LightningGraphicsSet](../types/LightningGraphicsSet.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |
| [source_offset](#source-offset) | [Vector](../types/Vector.md) | yes |
| [source_variance](#source-variance) | [Vector](../types/Vector.md) | yes |
| [strike_effect](#strike-effect) | [Trigger](../types/Trigger.md) | yes |
| [time_to_damage](#time-to-damage) | [uint16](../types/uint16.md) | yes |

### attracted_volume_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### attractor_hit_effect

**Type:** [Trigger](../types/Trigger.md) · _optional_

Effect that is triggered when lightning hits  a [lightning attractor](../prototypes/LightningAttractorPrototype.md). Triggered after the attractor is charged by the lightning hit.

### damage

**Type:** [DamageParameters](../types/DamageParameters.md) · _optional_

When lightning strikes something that is not a lightning attractor, this damage is applied to the target.

### effect_duration

**Type:** [uint16](../types/uint16.md)

### energy

**Type:** [Energy](../types/Energy.md) · _optional_ · **Default:** `Max double`

When lightning hits a [lightning attractor](../prototypes/LightningAttractorPrototype.md), this amount of energy is transferred to the lightning attractor.

### graphics_set

**Type:** [LightningGraphicsSet](../types/LightningGraphicsSet.md) · _optional_

### sound

**Type:** [Sound](../types/Sound.md) · _optional_

### source_offset

**Type:** [Vector](../types/Vector.md) · _optional_

### source_variance

**Type:** [Vector](../types/Vector.md) · _optional_

### strike_effect

**Type:** [Trigger](../types/Trigger.md) · _optional_

Effect that is triggered when lightning strikes something that is not a lightning attractor. Triggered before `damage` is applied.

### time_to_damage

**Type:** [uint16](../types/uint16.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be less than or equal to `effect_duration`.
