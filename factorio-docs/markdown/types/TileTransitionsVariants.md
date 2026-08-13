# TileTransitionsVariants

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [empty_transitions](#empty-transitions) | [boolean](../types/boolean.md) | yes |
| [light](#light) | array[[TileLightPictures](../types/TileLightPictures.md)] | yes |
| [main](#main) | array[[TileMainPictures](../types/TileMainPictures.md)] | yes |
| [material_background](#material-background) | [MaterialTextureParameters](../types/MaterialTextureParameters.md) | yes |
| [material_light](#material-light) | [MaterialTextureParameters](../types/MaterialTextureParameters.md) | yes |
| [material_texture_height_in_tiles](#material-texture-height-in-tiles) | [uint8](../types/uint8.md) | yes |
| [material_texture_width_in_tiles](#material-texture-width-in-tiles) | [uint8](../types/uint8.md) | yes |
| [transition](#transition) | [TileTransitions](../types/TileTransitions.md) | yes |

### empty_transitions

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### light

**Type:** array[[TileLightPictures](../types/TileLightPictures.md)] · _optional_

### main

**Type:** array[[TileMainPictures](../types/TileMainPictures.md)] · _optional_

### material_background

**Type:** [MaterialTextureParameters](../types/MaterialTextureParameters.md) · _optional_

### material_light

**Type:** [MaterialTextureParameters](../types/MaterialTextureParameters.md) · _optional_

Must have the same `count` as material_background.

### material_texture_height_in_tiles

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 8}`

### material_texture_width_in_tiles

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 8}`

### transition

**Type:** [TileTransitions](../types/TileTransitions.md) · _optional_

Only loaded, and mandatory if `empty_transitions` is `false`.
