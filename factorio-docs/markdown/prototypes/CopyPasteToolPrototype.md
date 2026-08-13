# CopyPasteToolPrototype

_prototype_

**Prototype type string:** `type = "copy-paste-tool"`

**Inherits from:** [SelectionToolPrototype](../prototypes/SelectionToolPrototype.md)

A copy-paste or cut-paste tool.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alt_select](#alt-select) | [SelectionModeData](../types/SelectionModeData.md) |  |
| [always_include_tiles](#always-include-tiles) | [boolean](../types/boolean.md) | yes |
| [cuts](#cuts) | [boolean](../types/boolean.md) | yes |
| [select](#select) | [SelectionModeData](../types/SelectionModeData.md) |  |
| [stack_size](#stack-size) | `1` |  |

### alt_select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _overrides parent_

The filters are parsed, but then ignored and forced to be empty.

### always_include_tiles

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

This property is hardcoded to `false`.

### cuts

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### select

**Type:** [SelectionModeData](../types/SelectionModeData.md) · _overrides parent_

The filters are parsed, but then ignored and forced to be empty.

### stack_size

**Type:** `1` · _overrides parent_

Count of items of the same name that can be stored in one inventory slot. Must be 1 when the `"not-stackable"` flag is set.

**Example:**

```
stack_size = 1
```
