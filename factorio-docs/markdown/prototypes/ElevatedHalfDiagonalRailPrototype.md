# ElevatedHalfDiagonalRailPrototype

_prototype_

**Prototype type string:** `type = "elevated-half-diagonal-rail"`

**Inherits from:** [HalfDiagonalRailPrototype](../prototypes/HalfDiagonalRailPrototype.md)

An elevated half diagonal rail.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../types/string.md) |  |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [tall](#tall) | [boolean](../types/boolean.md) | yes |

### name

**Type:** [string](../types/string.md) · _overrides parent_

Unique textual identification of the prototype. May only contain alphanumeric characters, dashes and underscores. May not exceed a length of 200 characters.

Requires Space Age to create prototypes with name not starting with `dummy-`. Dummy prototypes cannot be built.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 55}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### tall

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When this is true, this entity prototype will be translucent and unselectable when "Hide tall entities" mode is active.
