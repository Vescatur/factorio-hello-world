# SpacePlatformStarterPackPrototype

_prototype_

**Prototype type string:** `type = "space-platform-starter-pack"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [create_electric_network](#create-electric-network) | [boolean](../types/boolean.md) | yes |
| [initial_items](#initial-items) | array[[ItemProductPrototype](../types/ItemProductPrototype.md)] | yes |
| [surface](#surface) | [SurfaceID](../types/SurfaceID.md) | yes |
| [tiles](#tiles) | array[[SpacePlatformTileDefinition](../types/SpacePlatformTileDefinition.md)] | yes |
| [trigger](#trigger) | [Trigger](../types/Trigger.md) | yes |

### create_electric_network

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### initial_items

**Type:** array[[ItemProductPrototype](../types/ItemProductPrototype.md)] · _optional_

The quality of the items will match the quality of the starter pack.

### surface

**Type:** [SurfaceID](../types/SurfaceID.md) · _optional_

### tiles

**Type:** array[[SpacePlatformTileDefinition](../types/SpacePlatformTileDefinition.md)] · _optional_

### trigger

**Type:** [Trigger](../types/Trigger.md) · _optional_
