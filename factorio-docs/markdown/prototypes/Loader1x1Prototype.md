# Loader1x1Prototype

_prototype_

**Prototype type string:** `type = "loader-1x1"`

**Inherits from:** [LoaderPrototype](../prototypes/LoaderPrototype.md)

Continuously loads and unloads machines, as an alternative to inserters.

This loader type is identical to [Loader1x2Prototype](../prototypes/Loader1x2Prototype.md) with the exception of its hardcoded belt_distance. The belt_distance of the loader determines the distance between the position of this loader and the tile of the loader's belt target.

This loader type always has a belt_distance of 0, meaning by default it is 1 tile long in total. For a loader type with a belt_distance of 0.5, see [Loader1x2Prototype](../prototypes/Loader1x2Prototype.md).
