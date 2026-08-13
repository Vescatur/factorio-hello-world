# Color

_type_

Table of red, green, blue, and alpha float values between 0 and 1. Alternatively, values can be from 0-255, they are interpreted as such if at least one value is `> 1`.

Color allows the short-hand notation of passing an array of exactly 3 or 4 numbers. The array items are r, g, b and optionally a, in that order.

The game usually expects colors to be in pre-multiplied form (color channels are pre-multiplied by alpha).

**Example:**

```
color = {r=1, g=0, b=0, a=1} -- red, full opacity
color = {r=1} -- the same red, omitting default values
color = {1, 0, 0, 1} -- also the same red
color = {0, 0, 1} -- blue
color = {r=0, g=0.5, b=0, a=0.5} -- half transparency green
color = {} -- full opacity black
```

**Definition:** struct (see properties below) ∣ tuple[[float](../types/float.md), [float](../types/float.md), [float](../types/float.md)] ∣ tuple[[float](../types/float.md), [float](../types/float.md), [float](../types/float.md), [float](../types/float.md)]

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [a](#a) | [float](../types/float.md) | yes |
| [b](#b) | [float](../types/float.md) | yes |
| [g](#g) | [float](../types/float.md) | yes |
| [r](#r) | [float](../types/float.md) | yes |

### a

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

alpha value (opacity)

### b

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

blue value

### g

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

green value

### r

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

red value
