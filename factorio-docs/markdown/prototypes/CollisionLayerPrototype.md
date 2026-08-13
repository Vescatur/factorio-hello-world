# CollisionLayerPrototype

_prototype_

**Prototype type string:** `type = "collision-layer"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A collision layer. Used for [collision masks](../types/CollisionMaskConnector.md).

It's recommend to use underscores instead of dashes in `name` so that the name can easily be used as a table key when defining collision masks.

**Example:**

```
{
  type = "collision-layer",
  name = "is_lower_object"
}
```
