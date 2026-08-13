# UndoRedoAction

_concept_

**Definition:** table{tags, type}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [type](#type) | `"built-entity"` ∣ `"built-tile"` ∣ `"copy-entity-settings"` ∣ `"removed-entity"` ∣ `"removed-tile"` ∣ `"upgraded-entity"` ∣ `"upgraded-modules"` ∣ `"wire-added"` ∣ `"wire-removed"` ∣ `"rotated-entity"` |  |

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The tags attached to the undo action, if any.

### type

**Type:** `"built-entity"` ∣ `"built-tile"` ∣ `"copy-entity-settings"` ∣ `"removed-entity"` ∣ `"removed-tile"` ∣ `"upgraded-entity"` ∣ `"upgraded-modules"` ∣ `"wire-added"` ∣ `"wire-removed"` ∣ `"rotated-entity"`

The type of action that was undone or redone.
