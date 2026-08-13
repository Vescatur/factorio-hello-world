# Color

_concept_

Red, green, blue and alpha values, all in range [0, 1] or all in range [0, 255] if any value is > 1. All values here are optional. Color channels default to `0`, the alpha channel defaults to `1`.

Similar to [MapPosition](../concepts/MapPosition.md), Color allows the short-hand notation of passing an array of exactly 3 or 4 numbers. The game usually expects colors to be in pre-multiplied form (color channels are pre-multiplied by alpha).

**Example:**

```
red1 = {r = 0.5, g = 0, b = 0, a = 0.5}  -- Half-opacity red
red2 = {r = 0.5, a = 0.5}                -- Same color as red1
black = {}                               -- All channels omitted: black
red1_short = {0.5, 0, 0, 0.5}            -- Same color as red1 in short-hand notation
```

**Definition:** table{a, b, g, r} ∣ tuple[[float](../concepts/float.md), [float](../concepts/float.md), [float](../concepts/float.md), [float](../concepts/float.md)]
