# ModulePrototype

_prototype_

**Prototype type string:** `type = "module"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

A [module](https://wiki.factorio.com/Module). They are used to affect the capabilities of existing machines, for example by increasing the crafting speed of a [crafting machine](../prototypes/CraftingMachinePrototype.md).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [art_style](#art-style) | [string](../types/string.md) | yes |
| [beacon_tint](#beacon-tint) | [BeaconVisualizationTints](../types/BeaconVisualizationTints.md) | yes |
| [category](#category) | [ModuleCategoryID](../types/ModuleCategoryID.md) |  |
| [consumption_quality_multiplier](#consumption-quality-multiplier) | [float](../types/float.md) | yes |
| [effect](#effect) | [Effect](../types/Effect.md) |  |
| [pollution_quality_multiplier](#pollution-quality-multiplier) | [float](../types/float.md) | yes |
| [productivity_quality_multiplier](#productivity-quality-multiplier) | [float](../types/float.md) | yes |
| [quality_quality_multiplier](#quality-quality-multiplier) | [float](../types/float.md) | yes |
| [requires_beacon_alt_mode](#requires-beacon-alt-mode) | [boolean](../types/boolean.md) | yes |
| [speed_quality_multiplier](#speed-quality-multiplier) | [float](../types/float.md) | yes |
| [tier](#tier) | [uint32](../types/uint32.md) |  |

### art_style

**Type:** [string](../types/string.md) · _optional_

Chooses with what art style the module is shown inside [beacons](../prototypes/BeaconPrototype.md). See [BeaconModuleVisualizations::art_style](../types/BeaconModuleVisualizations.md#art-style). Vanilla uses `"vanilla"` here.

### beacon_tint

**Type:** [BeaconVisualizationTints](../types/BeaconVisualizationTints.md) · _optional_

### category

**Type:** [ModuleCategoryID](../types/ModuleCategoryID.md)

Used when upgrading modules: Ctrl + click modules into an entity and it will replace lower tier modules of the same category with higher tier modules.

### consumption_quality_multiplier

**Type:** [float](../types/float.md) · _optional_

0.0 means that no quality scaling is applied (common for penalties). 1.0 means that the full scaling of the quality prototype applies.

Defaults to 1.0 if the module consumption effect is < 0, otherwise 0.0.

### effect

**Type:** [Effect](../types/Effect.md)

The effect of the module on the machine it's inserted in, such as increased pollution.

### pollution_quality_multiplier

**Type:** [float](../types/float.md) · _optional_

0.0 means that no quality scaling is applied (common for penalties). 1.0 means that the full scaling of the quality prototype applies.

Defaults to 1.0 if the module pollution effect is < 0, otherwise 0.0.

### productivity_quality_multiplier

**Type:** [float](../types/float.md) · _optional_

0.0 means that no quality scaling is applied (common for penalties). 1.0 means that the full scaling of the quality prototype applies.

Defaults to 1.0 if the module productivity effect is > 0, otherwise 0.0.

### quality_quality_multiplier

**Type:** [float](../types/float.md) · _optional_

0.0 means that no quality scaling is applied (common for penalties). 1.0 means that the full scaling of the quality prototype applies.

Defaults to 1.0 if the module quality effect is > 0, otherwise 0.0.

### requires_beacon_alt_mode

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### speed_quality_multiplier

**Type:** [float](../types/float.md) · _optional_

0.0 means that no quality scaling is applied (common for penalties). 1.0 means that the full scaling of the quality prototype applies.

Defaults to 1.0 if the module speed effect is > 0, otherwise 0.0.

### tier

**Type:** [uint32](../types/uint32.md)

Tier of the module inside its category. Used when upgrading modules: Ctrl + click modules into an entity and it will replace lower tier modules with higher tier modules if they have the same category.
