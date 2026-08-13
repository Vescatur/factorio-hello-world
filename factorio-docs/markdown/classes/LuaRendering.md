# LuaRendering

_class_

Allows rendering of geometric shapes, text and sprites in the game world through the global object named `rendering`. Each render object is identified by an id that is universally unique for the lifetime of a whole game.

If an entity target of an object (except its `orientation_target`) is destroyed or changes surface, then the object is also destroyed.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [object_name](#object-name) | [string](../concepts/string.md) |  |

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

## Methods

| Method | Summary |
| --- | --- |
| [clear](#clear) | Destroys all render objects. |
| [draw_animation](#draw-animation) | Create an animation. |
| [draw_arc](#draw-arc) | Create an arc. |
| [draw_circle](#draw-circle) | Create a circle. |
| [draw_light](#draw-light) | Create a gradient light which is not occluded by any sprites. It is rendered at lower resolution, so it takes less GPU power. The same technique is used for lights drawn by LightDefinition. |
| [draw_line](#draw-line) | Create a line. |
| [draw_polygon](#draw-polygon) | Create a triangle mesh defined by a triangle strip. |
| [draw_rectangle](#draw-rectangle) | Create a rectangle. |
| [draw_sprite](#draw-sprite) | Create a sprite. |
| [draw_text](#draw-text) | Create a text. |
| [get_all_objects](#get-all-objects) | Gets an array of all valid objects. |
| [get_object_by_id](#get-object-by-id) | Gives LuaRenderObject for given object ID. May return nil if object does not exist or is invalid. |

### clear

`clear(mod_name)`

Destroys all render objects.

#### Parameters

##### mod_name

**Type:** [string](../concepts/string.md) · _optional_

If provided, only the render objects created by this mod are destroyed. An empty string (`""`) refers to all objects not belonging to a mod, such as those created using console commands.

### draw_animation

`draw_animation({animation, animation_offset, animation_speed, blink_interval, forces, light_mode, only_in_alt_mode, orientation, orientation_target, oriented_offset, players, render_layer, render_mode, surface, target, time_to_live, tint, use_target_orientation, visible, x_scale, y_scale})`

Create an animation.

#### Parameters

##### animation

**Type:** [string](../concepts/string.md)

Name of an [AnimationPrototype](../prototypes/AnimationPrototype.md).

##### animation_offset

**Type:** [double](../concepts/double.md) · _optional_

Offset of the animation in frames. Default is 0.

##### animation_speed

**Type:** [double](../concepts/double.md) · _optional_

How many frames the animation goes forward per tick. Default is 1.

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### light_mode

**Type:** [ScriptSpriteLightMode](../concepts/ScriptSpriteLightMode.md) · _optional_

Whether this object should be rendered as a sprite, light or both at once. Defaults to "occluder".

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of the animation. Default is 0.

##### orientation_target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · _optional_

If given, the animation rotates so that it faces this target. Note that `orientation` is still applied to the animation.

##### oriented_offset

**Type:** [Vector](../concepts/Vector.md) · _optional_

Offsets the center of the animation if `orientation_target` is given. This offset will rotate together with the animation.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_layer

**Type:** [RenderLayer](../concepts/RenderLayer.md) · _optional_

Render layer of the animation. Defaults to `"arrow"`.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Center of the animation.

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### tint

**Type:** [Color](../concepts/Color.md) · _optional_

##### use_target_orientation

**Type:** [boolean](../concepts/boolean.md) · _optional_

Only used if `orientation_target` is a LuaEntity.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

##### x_scale

**Type:** [double](../concepts/double.md) · _optional_

Horizontal scale of the animation. Default is 1.

##### y_scale

**Type:** [double](../concepts/double.md) · _optional_

Vertical scale of the animation. Default is 1.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

### draw_arc

`draw_arc({angle, blink_interval, color, draw_on_ground, forces, max_radius, min_radius, only_in_alt_mode, players, render_mode, start_angle, surface, target, time_to_live, visible})`

Create an arc.

#### Parameters

##### angle

**Type:** [float](../concepts/float.md)

The angle of the arc, in radian.

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md)

##### draw_on_ground

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should be drawn below sprites and entities. Defaults to false.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### max_radius

**Type:** [double](../concepts/double.md)

The radius of the outer edge of the arc, in tiles.

##### min_radius

**Type:** [double](../concepts/double.md)

The radius of the inner edge of the arc, in tiles.

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### start_angle

**Type:** [float](../concepts/float.md)

Where the arc starts, in radian.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

### draw_circle

`draw_circle({blink_interval, color, draw_on_ground, filled, forces, only_in_alt_mode, players, radius, render_mode, surface, target, time_to_live, visible, width})`

Create a circle.

#### Parameters

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md)

##### draw_on_ground

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should be drawn below sprites and entities. Defaults to false.

##### filled

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the circle should be filled. Defaults to false.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### radius

**Type:** [double](../concepts/double.md)

In tiles.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

##### width

**Type:** [float](../concepts/float.md) · _optional_

Width of the outline, used only if filled = false. Value is in pixels (32 per tile). Defaults to 1.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

### draw_light

`draw_light({blink_interval, color, forces, intensity, minimum_darkness, only_in_alt_mode, orientation, oriented, players, render_mode, scale, sprite, surface, target, time_to_live, visible})`

Create a gradient light which is not occluded by any sprites. It is rendered at lower resolution, so it takes less GPU power. The same technique is used for lights drawn by [LightDefinition](../types/LightDefinition.md).

The base game uses the utility sprites `light_medium` and `light_small` for lights.

#### Parameters

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md) · _optional_

Defaults to white (no tint).

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### intensity

**Type:** [float](../concepts/float.md) · _optional_

Default is 1.

##### minimum_darkness

**Type:** [float](../concepts/float.md) · _optional_

The minimum darkness at which this light is rendered. Default is 0.

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of the light. Default is 0.

##### oriented

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this light has the same orientation as the entity target, default is false. Note that `orientation` is still applied to the sprite.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### scale

**Type:** [float](../concepts/float.md) · _optional_

Default is 1.

##### sprite

**Type:** [SpritePath](../concepts/SpritePath.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Center of the light.

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

### draw_line

`draw_line({blink_interval, color, dash_length, dash_offset, draw_on_ground, forces, from, gap_length, only_in_alt_mode, players, render_mode, surface, time_to_live, to, visible, width})`

Create a line.

#### Parameters

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md)

##### dash_length

**Type:** [double](../concepts/double.md) · _optional_

Length of the dashes that this line has. Used only if gap_length > 0. Default is 0.

##### dash_offset

**Type:** [double](../concepts/double.md) · _optional_

Starting offset to apply to dashes. Cannot be greater than dash_length + gap_length. Default is 0.

##### draw_on_ground

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should be drawn below sprites and entities. Defaults to false.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### from

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### gap_length

**Type:** [double](../concepts/double.md) · _optional_

Length of the gaps that this line has, in tiles. Default is 0.

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### to

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

##### width

**Type:** [float](../concepts/float.md)

In pixels (32 per tile).

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

**Examples:**

```
-- Draw a white and 2 pixel wide line from {0, 0} to {2, 2}.
rendering.draw_line{surface = game.player.surface, from = {0, 0}, to = {2, 2}, color = {1, 1, 1}, width = 2}
```

```
-- Draw a red and 3 pixel wide line from {0, 0} to {0, 5}. The line has 1 tile long dashes and gaps.
rendering.draw_line{surface = game.player.surface, from = {0, 0}, to = {0, 5}, color = {r = 1}, width = 3, gap_length = 1, dash_length = 1}
```

### draw_polygon

`draw_polygon({blink_interval, color, draw_on_ground, forces, only_in_alt_mode, orientation, orientation_target, players, render_mode, surface, target, time_to_live, use_target_orientation, vertices, visible})`

Create a triangle mesh defined by a triangle strip.

#### Parameters

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md)

##### draw_on_ground

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should be drawn below sprites and entities. Defaults to false.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation applied to all vertices. Default is 0.

##### orientation_target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · _optional_

If given, the vertices (that are not set to an entity) rotate so that it faces this target. Note that `orientation` is still applied.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · _optional_

Acts like an offset applied to all vertices that are not set to an entity.

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### use_target_orientation

**Type:** [boolean](../concepts/boolean.md) · _optional_

Only used if `orientation_target` is a LuaEntity.

##### vertices

**Type:** array[[ScriptRenderTarget](../concepts/ScriptRenderTarget.md)]

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

### draw_rectangle

`draw_rectangle({blink_interval, color, draw_on_ground, filled, forces, left_top, only_in_alt_mode, players, render_mode, right_bottom, surface, time_to_live, visible, width})`

Create a rectangle.

#### Parameters

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md)

##### draw_on_ground

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should be drawn below sprites and entities. Defaults to false.

##### filled

**Type:** [boolean](../concepts/boolean.md) · _optional_

If the rectangle should be filled. Defaults to false.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### left_top

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### right_bottom

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

##### width

**Type:** [float](../concepts/float.md) · _optional_

Width of the outline, used only if filled = false. Value is in pixels (32 per tile). Defaults to 1.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

**Example:**

```
-- Draw a white and 1 pixel wide square outline with the corners {0, 0} and {2, 2}.
rendering.draw_rectangle{surface = game.player.surface, left_top = {0, 0}, right_bottom = {2, 2}, color = {1, 1, 1}}
```

### draw_sprite

`draw_sprite({blink_interval, forces, light_mode, only_in_alt_mode, orientation, orientation_target, oriented_offset, players, render_layer, render_mode, sprite, surface, target, time_to_live, tint, use_target_orientation, visible, x_scale, y_scale})`

Create a sprite.

#### Parameters

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### light_mode

**Type:** [ScriptSpriteLightMode](../concepts/ScriptSpriteLightMode.md) · _optional_

Whether this object should be rendered as a sprite, light or both at once. Defaults to "occluder".

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of the sprite. Default is 0.

##### orientation_target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md) · _optional_

If given, the sprite rotates so that it faces this target. Note that `orientation` is still applied to the sprite.

##### oriented_offset

**Type:** [Vector](../concepts/Vector.md) · _optional_

Offsets the center of the sprite if `orientation_target` is given. This offset will rotate together with the sprite.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_layer

**Type:** [RenderLayer](../concepts/RenderLayer.md) · _optional_

Render layer of the sprite. Defaults to `"arrow"`.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### sprite

**Type:** [SpritePath](../concepts/SpritePath.md)

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

Center of the sprite.

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### tint

**Type:** [Color](../concepts/Color.md) · _optional_

##### use_target_orientation

**Type:** [boolean](../concepts/boolean.md) · _optional_

Only used if `orientation_target` is a LuaEntity.

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

##### x_scale

**Type:** [double](../concepts/double.md) · _optional_

Horizontal scale of the sprite. Default is 1.

##### y_scale

**Type:** [double](../concepts/double.md) · _optional_

Vertical scale of the sprite. Default is 1.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

**Examples:**

```
-- This will draw an iron plate icon at the character's feet. The sprite will move together with the character.
rendering.draw_sprite{sprite = "item.iron-plate", target = game.player.character, surface = game.player.surface}
```

```
-- This will draw an iron plate icon at the character's head. The sprite will move together with the character.
rendering.draw_sprite{sprite = "item.iron-plate", target = {entity = game.player.character, offset = {0, -2}}, surface = game.player.surface}
```

### draw_text

`draw_text({alignment, blink_interval, color, draw_on_ground, font, forces, only_in_alt_mode, orientation, players, render_mode, scale, scale_with_zoom, surface, target, text, time_to_live, use_rich_text, vertical_alignment, visible})`

Create a text.

Not all fonts support scaling.

#### Parameters

##### alignment

**Type:** [TextAlign](../concepts/TextAlign.md) · _optional_

Defaults to "left".

##### blink_interval

**Type:** [uint16](../concepts/uint16.md) · _optional_

In ticks. Defaults to 0 (no blinking). Game alerts use 30.

##### color

**Type:** [Color](../concepts/Color.md)

##### draw_on_ground

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should be drawn below sprites and entities. Rich text does not support this option. Defaults to false.

##### font

**Type:** [string](../concepts/string.md) · _optional_

Name of font to use. Defaults to the same font as flying-text.

##### forces

**Type:** [ForceSet](../concepts/ForceSet.md) · _optional_

The forces that this object is rendered to. Passing `nil` or an empty table will render it to all forces.

##### only_in_alt_mode

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this should only be rendered in alt mode. Defaults to false.

##### orientation

**Type:** [RealOrientation](../concepts/RealOrientation.md) · _optional_

The orientation of the text. Default is 0.

##### players

**Type:** array[[PlayerIdentification](../concepts/PlayerIdentification.md)] · _optional_

The players that this object is rendered to. Passing `nil` or an empty table will render it to all players.

##### render_mode

**Type:** [ScriptRenderMode](../concepts/ScriptRenderMode.md) · _optional_

Mode which this object should render in. Defaults to "game".

##### scale

**Type:** [double](../concepts/double.md) · _optional_

##### scale_with_zoom

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to false. If true, the text scales with player zoom, resulting in it always being the same size on screen, and the size compared to the game world changes.

##### surface

**Type:** [SurfaceIdentification](../concepts/SurfaceIdentification.md)

##### target

**Type:** [ScriptRenderTarget](../concepts/ScriptRenderTarget.md)

##### text

**Type:** [LocalisedString](../concepts/LocalisedString.md)

The text to display.

##### time_to_live

**Type:** [uint32](../concepts/uint32.md) · _optional_

In ticks. Defaults to living forever.

##### use_rich_text

**Type:** [boolean](../concepts/boolean.md) · _optional_

If rich text rendering is enabled. Defaults to false.

##### vertical_alignment

**Type:** [VerticalTextAlign](../concepts/VerticalTextAlign.md) · _optional_

Defaults to "top".

##### visible

**Type:** [boolean](../concepts/boolean.md) · _optional_

If this is rendered to anyone at all. Defaults to true.

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md)

### get_all_objects

`get_all_objects(mod_name)`

Gets an array of all valid objects.

#### Parameters

##### mod_name

**Type:** [string](../concepts/string.md) · _optional_

If provided, get only the render objects created by this mod. An empty string (`""`) refers to all objects not belonging to a mod, such as those created using console commands.

#### Return values

- array[[LuaRenderObject](../classes/LuaRenderObject.md)]

### get_object_by_id

`get_object_by_id(object_id)`

Gives LuaRenderObject for given object ID. May return nil if object does not exist or is invalid.

#### Parameters

##### object_id

**Type:** [uint64](../concepts/uint64.md)

#### Return values

- [LuaRenderObject](../classes/LuaRenderObject.md) _(optional)_
