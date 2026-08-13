# AnimationSheet

_type_

**Inherits from:** [AnimationParameters](../types/AnimationParameters.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [filename](#filename) | [FileName](../types/FileName.md) | yes |
| [filenames](#filenames) | array[[FileName](../types/FileName.md)] | yes |
| [line_length](#line-length) | [uint32](../types/uint32.md) | yes |
| [lines_per_file](#lines-per-file) | [uint32](../types/uint32.md) | yes |
| [variation_count](#variation-count) | [uint32](../types/uint32.md) |  |

### filename

**Type:** [FileName](../types/FileName.md) · _optional_ · _overrides parent_

Only loaded, and mandatory if `filenames` is not defined.

The path to the animation file to use.

### filenames

**Type:** array[[FileName](../types/FileName.md)] · _optional_

### line_length

**Type:** [uint32](../types/uint32.md) · _optional_ · _overrides parent_ · **Default:** `Value of `variation_count``

### lines_per_file

**Type:** [uint32](../types/uint32.md) · _optional_

Mandatory if `filenames` is defined.

### variation_count

**Type:** [uint32](../types/uint32.md)
