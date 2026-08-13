# InfinityCargoWagonPrototype

_prototype_

**Prototype type string:** `type = "infinity-cargo-wagon"`

**Inherits from:** [CargoWagonPrototype](../prototypes/CargoWagonPrototype.md)

A cargo wagon that can spawn or void items at will.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [erase_contents_when_mined](#erase-contents-when-mined) | [boolean](../types/boolean.md) | yes |
| [gui_mode](#gui-mode) | `"all"` ∣ `"none"` ∣ `"admins"` | yes |
| [preserve_contents_when_created](#preserve-contents-when-created) | [boolean](../types/boolean.md) | yes |

### erase_contents_when_mined

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### gui_mode

**Type:** `"all"` ∣ `"none"` ∣ `"admins"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

Controls which players can control what the chest spawns.

### preserve_contents_when_created

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

When true, items created inside the infinity cargo wagon will not start to spoil until they have been removed from the wagon.
