# CargoBayConnections

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [bridge_crossing](#bridge-crossing) | [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) | yes |
| [bridge_horizontal_narrow](#bridge-horizontal-narrow) | [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) | yes |
| [bridge_horizontal_wide](#bridge-horizontal-wide) | [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) | yes |
| [bridge_vertical_narrow](#bridge-vertical-narrow) | [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) | yes |
| [bridge_vertical_wide](#bridge-vertical-wide) | [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) | yes |
| [tileset](#tileset) | array[array[[LayeredSpriteVariations](../types/LayeredSpriteVariations.md)]] | yes |
| [tileset_mapping](#tileset-mapping) | dictionary[[uint8](../types/uint8.md) → [uint8](../types/uint8.md) ∣ array[[uint8](../types/uint8.md)]] | yes |

### bridge_crossing

**Type:** [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) · _optional_

### bridge_horizontal_narrow

**Type:** [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) · _optional_

### bridge_horizontal_wide

**Type:** [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) · _optional_

### bridge_vertical_narrow

**Type:** [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) · _optional_

### bridge_vertical_wide

**Type:** [LayeredSpriteVariations](../types/LayeredSpriteVariations.md) · _optional_

### tileset

**Type:** array[array[[LayeredSpriteVariations](../types/LayeredSpriteVariations.md)]] · _optional_

An array of LayeredSpriteVariations groups. One tile can have a maximum of two groups. A group is selected based on tile position and a random variation is picked from that group. This allows having interleaved variations and makes sure the same variation isn't picked for surrounding tiles.

Supports at most 255 items.

### tileset_mapping

**Type:** dictionary[[uint8](../types/uint8.md) → [uint8](../types/uint8.md) ∣ array[[uint8](../types/uint8.md)]] · _optional_

A mapping from a bitmask index to a tileset index. A bitmask index mapped to 0 won't be drawn.

Tile bitmask uses 8 bits. Bits are assigned from the top-left corner and going clockwise (top-left tile has bit 0 and right tile has bit 7).

Mandatory if `tileset` is defined.
