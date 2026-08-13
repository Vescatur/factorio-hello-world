# Effect

_type_

When applied to [modules](../prototypes/ModulePrototype.md), the resulting effect is a sum of all module effects, multiplied through calculations: `(1 + sum module effects)`, or `(0 + sum)` for productivity.

**Example:**

```
-- These are the effects of the vanilla Speed Module 3
{speed = 0.5, consumption = 0.7, quality = -0.025}
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [consumption](#consumption) | [EffectValue](../types/EffectValue.md) | yes |
| [pollution](#pollution) | [EffectValue](../types/EffectValue.md) | yes |
| [productivity](#productivity) | [EffectValue](../types/EffectValue.md) | yes |
| [quality](#quality) | [EffectValue](../types/EffectValue.md) | yes |
| [speed](#speed) | [EffectValue](../types/EffectValue.md) | yes |

### consumption

**Type:** [EffectValue](../types/EffectValue.md) · _optional_

Multiplier to energy used during operation (not idle/drain use). The minimum possible sum is -80%.

### pollution

**Type:** [EffectValue](../types/EffectValue.md) · _optional_

Multiplier to the pollution factor of an entity's pollution during use. The minimum possible sum is -80%.

### productivity

**Type:** [EffectValue](../types/EffectValue.md) · _optional_

Multiplied against work completed, adds to the bonus results of operating. E.g. an extra crafted recipe or immediate research bonus. The minimum possible sum is 0%.

### quality

**Type:** [EffectValue](../types/EffectValue.md) · _optional_

Adds a bonus chance to increase a product's quality. The minimum possible sum is 0%.

### speed

**Type:** [EffectValue](../types/EffectValue.md) · _optional_

Modifier to crafting speed, research speed, etc. The minimum possible sum is -80%.
