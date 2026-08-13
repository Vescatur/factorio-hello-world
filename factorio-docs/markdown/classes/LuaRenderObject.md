# LuaRenderObject

_class_

Reference to a single [LuaRendering](../classes/LuaRendering.md) object.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [alignment](#alignment) | [TextAlign](../concepts/TextAlign.md) |  |
| [angle](#angle) | [float](../concepts/float.md) |  |
| [animation](#animation) | [string](../concepts/string.md) |  |
| [animation_offset](#animation-offset) | [double](../concepts/double.md) |  |
| [animation_speed](#animation-speed) | [double](../concepts/double.md) |  |
| [blink_interval](#blink-interval) | [uint16](../concepts/uint16.md) |  |
| [color](#color) | [Color](../concepts/Color.md) |  |
| [dash_length](#dash-length) | [double](../concepts/double.md) |  |
| [dash_offset](#dash-offset) | [double](../concepts/double.md) |  |
| [draw_on_ground](#draw-on-ground) | [boolean](../concepts/boolean.md) |  |
| [filled](#filled) | [boolean](../concepts/boolean.md) |  |
| [font](#font) | [string](../concepts/string.md) |  |
| [forces](#forces) | array[[LuaForce](../classes/LuaForce.md)] | yes |
| [from](#from) | [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) |  |
| [gap_length](#gap-length) | [double](../concepts/double.md) |  |
| [id](#id) | [uint64](../concepts/uint64.md) |  |
| [intensity](#intensity) | [float](../concepts/float.md) |  |
| [left_top](#left-top) | [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) |  |
| [light_mode](#light-mode) | [ScriptSpriteLightMode](../concepts/ScriptSpriteLightMode.md) |  |
| [max_radius](#max-radius) | [double](../concepts/double.md) |  |
| [min_radius](#min-radius) | [double](../concepts/double.md) |  |
| [minimum_darkness](#minimum-darkness) | [float](../concepts/float.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [only_in_alt_mode](#only-in-alt-mode) | [boolean](../concepts/boolean.md) |  |
| [orientation](#orientation) | [RealOrientation](../concepts/RealOrientation.md) |  |
| [orientation_target](#orientation-target) | [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) | yes |
| [oriented](#oriented) | [boolean](../concepts/boolean.md) |  |
| [oriented_offset](#oriented-offset) | [Vector](../concepts/Vector.md) |  |
| [players](#players) | array[[LuaPlayer](../classes/LuaPlayer.md)] ∣ array[[PlayerIdentification](../concepts/PlayerIdentification.md)] | yes |
| [radius](#radius) | [double](../concepts/double.md) |  |
| [render_layer](#render-layer) | [RenderLayer](../concepts/RenderLayer.md) |  |
| [render_mode](#render-mode) | [ScriptRenderMode](../concepts/ScriptRenderMode.md) |  |
| [right_bottom](#right-bottom) | [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) |  |
| [scale](#scale) | [double](../concepts/double.md) |  |
| [scale_with_zoom](#scale-with-zoom) | [boolean](../concepts/boolean.md) |  |
| [sprite](#sprite) | [SpritePath](../concepts/SpritePath.md) |  |
| [start_angle](#start-angle) | [float](../concepts/float.md) |  |
| [surface](#surface) | [LuaSurface](../classes/LuaSurface.md) |  |
| [target](#target) | [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) |  |
| [text](#text) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [time_to_live](#time-to-live) | [uint32](../concepts/uint32.md) |  |
| [to](#to) | [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) |  |
| [type](#type) | `"text"` ∣ `"line"` ∣ `"circle"` ∣ `"rectangle"` ∣ `"arc"` ∣ `"polygon"` ∣ `"sprite"` ∣ `"light"` ∣ `"animation"` |  |
| [use_rich_text](#use-rich-text) | [boolean](../concepts/boolean.md) |  |
| [use_target_orientation](#use-target-orientation) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [vertical_alignment](#vertical-alignment) | [VerticalTextAlign](../concepts/VerticalTextAlign.md) |  |
| [vertices](#vertices) | array[[ScriptRenderTarget](../concepts/ScriptRenderTarget.md)] |  |
| [visible](#visible) | [boolean](../concepts/boolean.md) |  |
| [width](#width) | [float](../concepts/float.md) |  |
| [x_scale](#x-scale) | [double](../concepts/double.md) |  |
| [y_scale](#y-scale) | [double](../concepts/double.md) |  |

### alignment

**Read:** [TextAlign](../concepts/TextAlign.md) · **Write:** [TextAlign](../concepts/TextAlign.md)

Alignment of this text.

### angle

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Angle of this arc. Angle in radian.

### animation

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

Animation prototype name of this animation.

### animation_offset

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Animation offset of this animation. Animation offset in frames.

### animation_speed

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Animation speed of this animation. Animation speed in frames per tick.

### blink_interval

**Read:** [uint16](../concepts/uint16.md) · **Write:** [uint16](../concepts/uint16.md)

Blink interval of this object based on the internal "update tick". When zero, blinking is disabled. For other values, the object will be visible the given number of ticks and then invisible for the same duration. Objects with the same blink interval will blink synchronously. Blink interval of game alerts is 30.

For example, when the interval is 60, the object is visible for 60 ticks and hidden for the next 60.

### color

**Read:** [Color](../concepts/Color.md) · **Write:** [Color](../concepts/Color.md)

Color or tint of the object.

### dash_length

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Dash length of this line.

### dash_offset

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Starting offset to apply to dashes of this line. Cannot be greater than dash_length + gap_length.

### draw_on_ground

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this object is being drawn on the ground, under most entities and sprites.

In [render_mode](../classes/LuaRenderObject.md#render-mode) == "chart", this value is unused.

### filled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this circle or rectangle is filled.

### font

**Read:** [string](../concepts/string.md) · **Write:** [string](../concepts/string.md)

Font of this text.

### forces

**Read:** array[[LuaForce](../classes/LuaForce.md)] · **Write:** [ForceSet](../concepts/ForceSet.md) · _optional_

Forces for which this object is rendered or `nil` if visible to all forces. Writing `nil` or empty array will make this object visible to all forces.

### from

**Read:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · **Write:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Where this line is drawn from.

### gap_length

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Length of the gaps in this line.

### id

**Read:** [uint64](../concepts/uint64.md) · _read-only_

Unique identifier of this render object.

### intensity

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Intensity of this light.

### left_top

**Read:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · **Write:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Where top left corner of this rectangle is drawn.

### light_mode

**Read:** [ScriptSpriteLightMode](../concepts/ScriptSpriteLightMode.md) · **Write:** [ScriptSpriteLightMode](../concepts/ScriptSpriteLightMode.md)

Whether this sprite or animation should be rendered as a sprite, light or both at once.

### max_radius

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Radius of the outer edge of this arc.

### min_radius

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Radius of the inner edge of this arc.

### minimum_darkness

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Minimum darkness at which this light is rendered.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### only_in_alt_mode

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this object is only rendered in alt-mode.

### orientation

**Read:** [RealOrientation](../concepts/RealOrientation.md) · **Write:** [RealOrientation](../concepts/RealOrientation.md)

Orientation of this object.

Polygon vertices that are set to an entity will ignore this.

### orientation_target

**Read:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · **Write:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · _optional_

Target to which this object rotates so that it faces the target. Note that `orientation` is still applied to the object. Writing `nil` will clear the orientation_target. `nil` if no target.

Polygon vertices that are set to an entity will ignore this.

### oriented

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this light is rendered with the same orientation as the target entity. Note that `orientation` is still applied to the sprite.

### oriented_offset

**Read:** [Vector](../concepts/Vector.md) · **Write:** [Vector](../concepts/Vector.md)

Offsets the center of the sprite or animation if `orientation_target` is given. This offset will rotate together with the sprite or animation.

### players

**Read:** array[[LuaPlayer](../classes/LuaPlayer.md)] ∣ array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · **Write:** array[[LuaPlayer](../classes/LuaPlayer.md)] ∣ array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

Players for which this object is visible or `nil` if visible to all players. Writing `nil` or empty array will make this object visible to all players.

### radius

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Radius of this circle.

### render_layer

**Read:** [RenderLayer](../concepts/RenderLayer.md) · **Write:** [RenderLayer](../concepts/RenderLayer.md)

Render layer of this sprite or animation.

### render_mode

**Read:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · **Write:** [ScriptRenderMode](../concepts/ScriptRenderMode.md)

Whether the object is rendered in game world or on the chart (map view).

When it is changed, the object is pushed to front of its new group.

### right_bottom

**Read:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · **Write:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Where bottom right corner of this rectangle is drawn.

### scale

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Scale of the text or light.

### scale_with_zoom

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this text scales with player zoom.

### sprite

**Read:** [SpritePath](../concepts/SpritePath.md) · **Write:** [SpritePath](../concepts/SpritePath.md)

Sprite of the sprite or light.

### start_angle

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Where this arc starts. Angle in radian.

### surface

**Read:** [LuaSurface](../classes/LuaSurface.md) · _read-only_

Surface this object is rendered on.

### target

**Read:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · **Write:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Where this object is drawn.

Polygon vertices that are set to an entity will ignore this.

### text

**Read:** [LocalisedString](../concepts/LocalisedString.md) · **Write:** [LocalisedString](../concepts/LocalisedString.md)

Text that is displayed by this text object.

### time_to_live

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

Time to live of this object. This will be 0 if the object does not expire.

### to

**Read:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · **Write:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Where this line is drawn to.

### type

**Read:** `"text"` ∣ `"line"` ∣ `"circle"` ∣ `"rectangle"` ∣ `"arc"` ∣ `"polygon"` ∣ `"sprite"` ∣ `"light"` ∣ `"animation"` · _read-only_

Type of this object.

### use_rich_text

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this text parses rich text tags.

### use_target_orientation

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this object uses the target orientation.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### vertical_alignment

**Read:** [VerticalTextAlign](../concepts/VerticalTextAlign.md) · **Write:** [VerticalTextAlign](../concepts/VerticalTextAlign.md)

Vertical alignment of this text.

### vertices

**Read:** array[[ScriptRenderTarget](../concepts/ScriptRenderTarget.md)] · **Write:** array[[ScriptRenderTarget](../concepts/ScriptRenderTarget.md)]

Vertices of this polygon.

### visible

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this object is rendered to anyone at all.

### width

**Read:** [float](../concepts/float.md) · **Write:** [float](../concepts/float.md)

Width of the object. Value is in pixels (32 per tile).

### x_scale

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Horizontal scale of this sprite or animation.

### y_scale

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Vertical scale of this sprite or animation.

## Methods

| Method | Summary |
| --- | --- |
| [bring_to_front](#bring-to-front) | Reorder this object so that it is drawn in front of the already existing objects. |
| [destroy](#destroy) | Destroys this object. Does not error when the object is invalid. |
| [move_to_back](#move-to-back) | Reorder this object so that it is drawn in the back of the already existing objects. |
| [set_corners](#set-corners) | Set the corners of the rectangle with this id. |
| [set_dashes](#set-dashes) | Set the length of the dashes and the length of the gaps in this line. |

### bring_to_front

`bring_to_front()`

Reorder this object so that it is drawn in front of the already existing objects.

### destroy

`destroy()`

Destroys this object. Does not error when the object is invalid.

### move_to_back

`move_to_back()`

Reorder this object so that it is drawn in the back of the already existing objects.

### set_corners

`set_corners(left_top, right_bottom)`

Set the corners of the rectangle with this id.

#### Parameters

##### left_top

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### right_bottom

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

### set_dashes

`set_dashes(dash_length, gap_length)`

Set the length of the dashes and the length of the gaps in this line.

#### Parameters

##### dash_length

**Type:** [double](../concepts/double.md)

##### gap_length

**Type:** [double](../concepts/double.md)
