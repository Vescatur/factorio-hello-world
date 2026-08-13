# ScrollPaneStyleSpecification

_type_

**Inherits from:** [BaseStyleSpecification](../types/BaseStyleSpecification.md)

Root style: `"scroll_pane"`

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [always_draw_borders](#always-draw-borders) | [boolean](../types/boolean.md) | yes |
| [background_graphical_set](#background-graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [dont_force_clipping_rect_for_contents](#dont-force-clipping-rect-for-contents) | [boolean](../types/boolean.md) | yes |
| [extra_bottom_margin_when_activated](#extra-bottom-margin-when-activated) | [int32](../types/int32.md) | yes |
| [extra_bottom_padding_when_activated](#extra-bottom-padding-when-activated) | [int32](../types/int32.md) | yes |
| [extra_left_margin_when_activated](#extra-left-margin-when-activated) | [int32](../types/int32.md) | yes |
| [extra_left_padding_when_activated](#extra-left-padding-when-activated) | [int32](../types/int32.md) | yes |
| [extra_margin_when_activated](#extra-margin-when-activated) | [int32](../types/int32.md) | yes |
| [extra_padding_when_activated](#extra-padding-when-activated) | [int32](../types/int32.md) | yes |
| [extra_right_margin_when_activated](#extra-right-margin-when-activated) | [int32](../types/int32.md) | yes |
| [extra_right_padding_when_activated](#extra-right-padding-when-activated) | [int32](../types/int32.md) | yes |
| [extra_top_margin_when_activated](#extra-top-margin-when-activated) | [int32](../types/int32.md) | yes |
| [extra_top_padding_when_activated](#extra-top-padding-when-activated) | [int32](../types/int32.md) | yes |
| [graphical_set](#graphical-set) | [ElementImageSet](../types/ElementImageSet.md) | yes |
| [horizontal_scrollbar_style](#horizontal-scrollbar-style) | [HorizontalScrollBarStyleSpecification](../types/HorizontalScrollBarStyleSpecification.md) | yes |
| [scrollbars_go_outside](#scrollbars-go-outside) | [boolean](../types/boolean.md) | yes |
| [type](#type) | `"scroll_pane_style"` |  |
| [vertical_flow_style](#vertical-flow-style) | [VerticalFlowStyleSpecification](../types/VerticalFlowStyleSpecification.md) | yes |
| [vertical_scrollbar_style](#vertical-scrollbar-style) | [VerticalScrollBarStyleSpecification](../types/VerticalScrollBarStyleSpecification.md) | yes |

### always_draw_borders

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### background_graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_

Required on the root style.

### dont_force_clipping_rect_for_contents

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### extra_bottom_margin_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_bottom_padding_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_left_margin_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_left_padding_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_margin_when_activated

**Type:** [int32](../types/int32.md) · _optional_

Sets `extra_top_margin_when_activated`, `extra_bottom_margin_when_activated`, `extra_left_margin_when_activated` and `extra_right_margin_when_activated`.

### extra_padding_when_activated

**Type:** [int32](../types/int32.md) · _optional_

Sets `extra_top_padding_when_activated`, `extra_bottom_padding_when_activated`, `extra_left_padding_when_activated` and `extra_right_padding_when_activated`.

### extra_right_margin_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_right_padding_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_top_margin_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### extra_top_padding_when_activated

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### graphical_set

**Type:** [ElementImageSet](../types/ElementImageSet.md) · _optional_

Required on the root style.

### horizontal_scrollbar_style

**Type:** [HorizontalScrollBarStyleSpecification](../types/HorizontalScrollBarStyleSpecification.md) · _optional_

Required on the root style.

### scrollbars_go_outside

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### type

**Type:** `"scroll_pane_style"`

### vertical_flow_style

**Type:** [VerticalFlowStyleSpecification](../types/VerticalFlowStyleSpecification.md) · _optional_

Required on the root style.

### vertical_scrollbar_style

**Type:** [VerticalScrollBarStyleSpecification](../types/VerticalScrollBarStyleSpecification.md) · _optional_

Required on the root style.
