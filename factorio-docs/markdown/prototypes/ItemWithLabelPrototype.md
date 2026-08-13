# ItemWithLabelPrototype

_prototype_

**Prototype type string:** `type = "item-with-label"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

Like a normal item but with the ability to have a colored label.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [default_label_color](#default-label-color) | [Color](../types/Color.md) | yes |
| [draw_label_for_cursor_render](#draw-label-for-cursor-render) | [boolean](../types/boolean.md) | yes |

### default_label_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** `Default item text color`

The default label color the item will use.

### draw_label_for_cursor_render

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If the item will draw its label when held in the cursor in place of the item count.
