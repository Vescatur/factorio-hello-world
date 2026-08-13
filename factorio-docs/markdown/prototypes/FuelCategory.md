# FuelCategory

_prototype_

**Prototype type string:** `type = "fuel-category"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

Each item which has a fuel_value must have a fuel category. The fuel categories are used to allow only certain fuels to be used in [EnergySource](../types/EnergySource.md).

**Example:**

```
{
  type = "fuel-category",
  name = "best-fuel"
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [fuel_value_type](#fuel-value-type) | [LocalisedString](../types/LocalisedString.md) | yes |

### fuel_value_type

**Type:** [LocalisedString](../types/LocalisedString.md) · _optional_ · **Default:** ``{"description.fuel-value"}``
