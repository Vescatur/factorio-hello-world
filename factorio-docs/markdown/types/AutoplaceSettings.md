# AutoplaceSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [settings](#settings) | dictionary[[EntityID](../types/EntityID.md) ∣ [TileID](../types/TileID.md) ∣ [DecorativeID](../types/DecorativeID.md) → [FrequencySizeRichness](../types/FrequencySizeRichness.md)] | yes |
| [treat_missing_as_default](#treat-missing-as-default) | [boolean](../types/boolean.md) | yes |

### settings

**Type:** dictionary[[EntityID](../types/EntityID.md) ∣ [TileID](../types/TileID.md) ∣ [DecorativeID](../types/DecorativeID.md) → [FrequencySizeRichness](../types/FrequencySizeRichness.md)] · _optional_

Overrides the FrequencySizeRichness provided to the [AutoplaceSpecification](../types/AutoplaceSpecification.md) of the entity/tile/decorative. Takes priority over the FrequencySizeRichness set in the [autoplace control](../types/AutoplaceSpecification.md#control).

### treat_missing_as_default

**Type:** [boolean](../types/boolean.md) · _optional_

Whether missing autoplace names for this type should be default enabled.
