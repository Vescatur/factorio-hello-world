# TipsAndTricksItem

_prototype_

**Prototype type string:** `type = "tips-and-tricks-item"`

**Inherits from:** [PrototypeBase](../prototypes/PrototypeBase.md)

A tips and tricks entry.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [category](#category) | [string](../types/string.md) | yes |
| [dependencies](#dependencies) | array[[string](../types/string.md)] | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [image](#image) | [FileName](../types/FileName.md) | yes |
| [indent](#indent) | [uint8](../types/uint8.md) | yes |
| [is_title](#is-title) | [boolean](../types/boolean.md) | yes |
| [order](#order) | [Order](../types/Order.md) | yes |
| [player_input_method_filter](#player-input-method-filter) | [PlayerInputMethodFilter](../types/PlayerInputMethodFilter.md) | yes |
| [simulation](#simulation) | [SimulationDefinition](../types/SimulationDefinition.md) | yes |
| [skip_trigger](#skip-trigger) | [TipTrigger](../types/TipTrigger.md) | yes |
| [starting_status](#starting-status) | [TipStatus](../types/TipStatus.md) | yes |
| [tag](#tag) | [string](../types/string.md) | yes |
| [trigger](#trigger) | [TipTrigger](../types/TipTrigger.md) | yes |
| [tutorial](#tutorial) | [string](../types/string.md) | yes |

### category

**Type:** [string](../types/string.md) · _optional_ · **Default:** `the `name` of this prototype`

Name of a [TipsAndTricksItemCategory](../prototypes/TipsAndTricksItemCategory.md), used for the sorting of this tips and tricks entry. Tips and trick entries are sorted first by category and then by their `order` within that category.

### dependencies

**Type:** array[[string](../types/string.md)] · _optional_ · **Default:** `none`

An array of names of other tips and tricks items. This tips and tricks entry is only shown to the player once they have marked all dependencies as read.

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file.

Only loaded if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array.

### image

**Type:** [FileName](../types/FileName.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

### indent

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The tips and tricks entry is indented by `indent`×6 spaces.

### is_title

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the tip title on the left in the tips and tricks GUI should use the "title_tip_item" style (semi bold font).

### order

**Type:** [Order](../types/Order.md) · _optional_ · _overrides parent_ · **Default:** `Value of `name``

Used to order prototypes in inventory, recipes and GUIs. May not exceed a length of 200 characters.

### player_input_method_filter

**Type:** [PlayerInputMethodFilter](../types/PlayerInputMethodFilter.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

### simulation

**Type:** [SimulationDefinition](../types/SimulationDefinition.md) · _optional_

### skip_trigger

**Type:** [TipTrigger](../types/TipTrigger.md) · _optional_

Condition for never showing the tip notification to the player.

### starting_status

**Type:** [TipStatus](../types/TipStatus.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'locked'}`

### tag

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

String to add in front of the tips and trick entries name. Can be anything, the base game tends to use [rich text](https://wiki.factorio.com/Rich_text) tags for items, e.g. `[item=wooden-chest]` here.

### trigger

**Type:** [TipTrigger](../types/TipTrigger.md) · _optional_

Condition for when the tip notification should be shown to the player.

### tutorial

**Type:** [string](../types/string.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': ''}`

Name of a [TutorialDefinition](../prototypes/TutorialDefinition.md).
