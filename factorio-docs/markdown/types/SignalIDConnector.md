# SignalIDConnector

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [VirtualSignalID](../types/VirtualSignalID.md) ∣ [ItemID](../types/ItemID.md) ∣ [FluidID](../types/FluidID.md) ∣ [RecipeID](../types/RecipeID.md) ∣ [EntityID](../types/EntityID.md) ∣ [SpaceLocationID](../types/SpaceLocationID.md) ∣ [AsteroidChunkID](../types/AsteroidChunkID.md) ∣ [QualityID](../types/QualityID.md) |  |
| [quality](#quality) | [QualityID](../types/QualityID.md) | yes |
| [type](#type) | `"virtual"` ∣ `"item"` ∣ `"fluid"` ∣ `"recipe"` ∣ `"entity"` ∣ `"space-location"` ∣ `"asteroid-chunk"` ∣ `"quality"` |  |

### name

**Type:** [VirtualSignalID](../types/VirtualSignalID.md) ∣ [ItemID](../types/ItemID.md) ∣ [FluidID](../types/FluidID.md) ∣ [RecipeID](../types/RecipeID.md) ∣ [EntityID](../types/EntityID.md) ∣ [SpaceLocationID](../types/SpaceLocationID.md) ∣ [AsteroidChunkID](../types/AsteroidChunkID.md) ∣ [QualityID](../types/QualityID.md)

Name of the signal.

### quality

**Type:** [QualityID](../types/QualityID.md) · _optional_

Defaults to `normal`.

### type

**Type:** `"virtual"` ∣ `"item"` ∣ `"fluid"` ∣ `"recipe"` ∣ `"entity"` ∣ `"space-location"` ∣ `"asteroid-chunk"` ∣ `"quality"`
