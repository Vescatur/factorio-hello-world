# CargoStationParameters

_type_

A cargo station is any entity that has the capacity to send cargo units. In Space Age those are [RocketSiloPrototype](../prototypes/RocketSiloPrototype.md), [SpacePlatformHubPrototype](../prototypes/SpacePlatformHubPrototype.md) and [CargoLandingPadPrototype](../prototypes/CargoLandingPadPrototype.md). [Cargo bays](../prototypes/CargoBayPrototype.md) may provide additional cargo hatches to cargo stations which are cargo bay connectable.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [giga_hatch_definitions](#giga-hatch-definitions) | array[[GigaCargoHatchDefinition](../types/GigaCargoHatchDefinition.md)] | yes |
| [hatch_definitions](#hatch-definitions) | array[[CargoHatchDefinition](../types/CargoHatchDefinition.md)] | yes |
| [is_input_station](#is-input-station) | [boolean](../types/boolean.md) | yes |
| [is_output_station](#is-output-station) | [boolean](../types/boolean.md) | yes |
| [prefer_packed_cargo_units](#prefer-packed-cargo-units) | [boolean](../types/boolean.md) | yes |

### giga_hatch_definitions

**Type:** array[[GigaCargoHatchDefinition](../types/GigaCargoHatchDefinition.md)] · _optional_

Big additional hatch that goes over the actual hatches.

### hatch_definitions

**Type:** array[[CargoHatchDefinition](../types/CargoHatchDefinition.md)] · _optional_

### is_input_station

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If set to false, this station will not accept incoming cargo units even if it has hatches that can. (can occur through linked cargo bays)

### is_output_station

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If set to false, this station will not dispatch cargo units even if it has hatches that can. (can occur through linked cargo bays)

### prefer_packed_cargo_units

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Packed cargo units will wait for the full order to be completed. This is useful to save rockets in rocket silos when items trickle in slowly. The platform hub has immediate access to items so false is better to allow partial fulfillments.
