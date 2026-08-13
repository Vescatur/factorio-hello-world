# LinkedBeltPrototype

_prototype_

**Prototype type string:** `type = "linked-belt"`

**Inherits from:** [TransportBeltConnectablePrototype](../prototypes/TransportBeltConnectablePrototype.md)

A belt that can be connected to a belt anywhere else, including on a different surface. The linked belts have to be [connected with console commands](https://wiki.factorio.com/Console#Connect_linked_belts) or runtime scripting in mods or scenarios. [LuaEntity::connect_linked_belts](../classes/LuaEntity.md#connect-linked-belts) and other runtime functions.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_blueprint_connection](#allow-blueprint-connection) | [boolean](../types/boolean.md) | yes |
| [allow_clone_connection](#allow-clone-connection) | [boolean](../types/boolean.md) | yes |
| [allow_side_loading](#allow-side-loading) | [boolean](../types/boolean.md) | yes |
| [structure](#structure) | [LinkedBeltStructure](../types/LinkedBeltStructure.md) | yes |
| [structure_render_layer](#structure-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |

### allow_blueprint_connection

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_clone_connection

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### allow_side_loading

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### structure

**Type:** [LinkedBeltStructure](../types/LinkedBeltStructure.md) · _optional_

### structure_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`
