# HighlightBoxEntityPrototype

_prototype_

**Prototype type string:** `type = "highlight-box"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Used to attach graphics for [cursor boxes](../types/CursorBoxType.md) to entities during runtime. HighlightBoxEntity can also be independent from entities so it is simply drawn somewhere in the world. See [LuaSurface::create_entity](../classes/LuaSurface.md#create-entity) for the available options for type "highlight-box".

The [collision_box](../prototypes/EntityPrototype.md#collision-box) of the highlight box prototype is ignored during runtime, instead the "bounding_box" given in create_entity() or the selection box of the target entity is used.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.
