# AnimationParameters

_type_ · **abstract**

**Inherits from:** [SpriteParameters](../types/SpriteParameters.md)

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allow_reducing_frames](#allow-reducing-frames) | [boolean](../types/boolean.md) | yes |
| [animation_speed](#animation-speed) | [float](../types/float.md) | yes |
| [dice](#dice) | [uint8](../types/uint8.md) | yes |
| [dice_x](#dice-x) | [uint8](../types/uint8.md) | yes |
| [dice_y](#dice-y) | [uint8](../types/uint8.md) | yes |
| [frame_count](#frame-count) | [uint32](../types/uint32.md) | yes |
| [frame_sequence](#frame-sequence) | [AnimationFrameSequence](../types/AnimationFrameSequence.md) | yes |
| [generate_sdf](#generate-sdf) | [boolean](../types/boolean.md) | yes |
| [height](#height) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [line_length](#line-length) | [uint32](../types/uint32.md) | yes |
| [max_advance](#max-advance) | [float](../types/float.md) | yes |
| [mipmap_count](#mipmap-count) | [uint8](../types/uint8.md) | yes |
| [repeat_count](#repeat-count) | [uint8](../types/uint8.md) | yes |
| [run_mode](#run-mode) | [AnimationRunMode](../types/AnimationRunMode.md) | yes |
| [size](#size) | [SpriteSizeType](../types/SpriteSizeType.md) ∣ tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] | yes |
| [width](#width) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |

### allow_reducing_frames

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If `true`, the animation frame count may be cut to half depending on detected hardware and other graphics settings.

### animation_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Modifier of the animation playing speed, the default of `1` means one animation frame per tick (60 fps). The speed of playing can often vary depending on the usage (output of steam engine for example). Has to be greater than `0`.

### dice

**Type:** [uint8](../types/uint8.md) · _optional_

Number of slices this is sliced into when using the "optimized atlas packing" option. If you are a modder, you can just ignore this property. Example: If this is 4, the sprite will be sliced into a 4×4 grid.

### dice_x

**Type:** [uint8](../types/uint8.md) · _optional_

Same as `dice` above, but this specifies only how many slices there are on the x axis.

### dice_y

**Type:** [uint8](../types/uint8.md) · _optional_

Same as `dice` above, but this specifies only how many slices there are on the y axis.

### frame_count

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Can't be `0`.

### frame_sequence

**Type:** [AnimationFrameSequence](../types/AnimationFrameSequence.md) · _optional_

### generate_sdf

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Unused.

### height

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · _overrides parent_

Mandatory if `size` is not defined.

Height of one frame in pixels, from 0-4096.

### line_length

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Specifies how many pictures are on each horizontal line in the image file. `0` means that all the pictures are in one horizontal line. Once the specified number of pictures are loaded from a line, the pictures from the next line are loaded. This is to allow having longer animations loaded in to Factorio's graphics matrix than the game engine's width limit of 8192px per input file. The restriction on input files is to be compatible with most graphics cards.

### max_advance

**Type:** [float](../types/float.md) · _optional_ · **Default:** `MAX_FLOAT`

Maximum amount of frames the animation can move forward in one update. Useful to cap the animation speed on entities where it is variable, such as car animations.

### mipmap_count

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Only loaded if this is an icon, that is it has the flag `"group=icon"` or `"group=gui"`.

Note that `mipmap_count` doesn't make sense in an animation, as it is not possible to layout mipmaps in a way that would load both the animation and the mipmaps correctly (besides animations with just one frame). See [here](https://forums.factorio.com/viewtopic.php?p=549058#p549058).

### repeat_count

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

How many times to repeat the animation to complete an animation cycle. E.g. if one layer is 10 frames, a second layer of 1 frame would need `repeat_count = 10` to match the complete cycle.

### run_mode

**Type:** [AnimationRunMode](../types/AnimationRunMode.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'forward'}`

### size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) ∣ tuple[[SpriteSizeType](../types/SpriteSizeType.md), [SpriteSizeType](../types/SpriteSizeType.md)] · _optional_ · _overrides parent_

The width and height of one frame. If this is a tuple, the first member of the tuple is the width and the second is the height. Otherwise the size is both width and height. Width and height may only be in the range of 0-4096.

### width

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · _overrides parent_

Mandatory if `size` is not defined.

Width of one frame in pixels, from 0-4096.
