# TilePrototype

_prototype_

**Prototype type string:** `type = "tile"`

**Inherits from:** [Prototype](../prototypes/Prototype.md)

A [tile](https://wiki.factorio.com/Tile).

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [absorptions_per_second](#absorptions-per-second) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] | yes |
| [allowed_neighbors](#allowed-neighbors) | array[[TileID](../types/TileID.md)] | yes |
| [allows_being_covered](#allows-being-covered) | [boolean](../types/boolean.md) | yes |
| [ambient_sounds](#ambient-sounds) | [WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md) ∣ array[[WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md)] | yes |
| [ambient_sounds_group](#ambient-sounds-group) | [TileID](../types/TileID.md) | yes |
| [autoplace](#autoplace) | [AutoplaceSpecification](../types/AutoplaceSpecification.md) | yes |
| [bound_decoratives](#bound-decoratives) | [DecorativeID](../types/DecorativeID.md) ∣ array[[DecorativeID](../types/DecorativeID.md)] | yes |
| [build_animations](#build-animations) | [Animation4Way](../types/Animation4Way.md) | yes |
| [build_animations_background](#build-animations-background) | [Animation4Way](../types/Animation4Way.md) | yes |
| [build_sound](#build-sound) | [Sound](../types/Sound.md) ∣ [TileBuildSound](../types/TileBuildSound.md) | yes |
| [built_animation_frame](#built-animation-frame) | [uint32](../types/uint32.md) | yes |
| [can_be_part_of_blueprint](#can-be-part-of-blueprint) | [boolean](../types/boolean.md) | yes |
| [check_collision_with_entities](#check-collision-with-entities) | [boolean](../types/boolean.md) | yes |
| [collision_mask](#collision-mask) | [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md) |  |
| [decorative_removal_probability](#decorative-removal-probability) | [float](../types/float.md) | yes |
| [default_cover_tile](#default-cover-tile) | [TileID](../types/TileID.md) | yes |
| [default_destroyed_dropped_item_trigger](#default-destroyed-dropped-item-trigger) | [Trigger](../types/Trigger.md) | yes |
| [destroys_dropped_items](#destroys-dropped-items) | [boolean](../types/boolean.md) | yes |
| [driving_sound](#driving-sound) | [InterruptibleSound](../types/InterruptibleSound.md) | yes |
| [dying_explosion](#dying-explosion) | [ExplosionDefinition](../types/ExplosionDefinition.md) ∣ array[[ExplosionDefinition](../types/ExplosionDefinition.md)] | yes |
| [effect](#effect) | [TileEffectDefinitionID](../types/TileEffectDefinitionID.md) | yes |
| [effect_color](#effect-color) | [Color](../types/Color.md) | yes |
| [effect_color_secondary](#effect-color-secondary) | [Color](../types/Color.md) | yes |
| [effect_is_opaque](#effect-is-opaque) | [boolean](../types/boolean.md) | yes |
| [fluid](#fluid) | [FluidID](../types/FluidID.md) | yes |
| [frozen_variant](#frozen-variant) | [TileID](../types/TileID.md) | yes |
| [icon](#icon) | [FileName](../types/FileName.md) | yes |
| [icon_size](#icon-size) | [SpriteSizeType](../types/SpriteSizeType.md) | yes |
| [icons](#icons) | array[[IconData](../types/IconData.md)] | yes |
| [is_foundation](#is-foundation) | [boolean](../types/boolean.md) | yes |
| [landing_steps_sound](#landing-steps-sound) | [Sound](../types/Sound.md) | yes |
| [layer](#layer) | [uint8](../types/uint8.md) |  |
| [layer_group](#layer-group) | [TileRenderLayer](../types/TileRenderLayer.md) | yes |
| [lowland_fog](#lowland-fog) | [boolean](../types/boolean.md) | yes |
| [map_color](#map-color) | [Color](../types/Color.md) |  |
| [max_health](#max-health) | [float](../types/float.md) | yes |
| [minable](#minable) | [MinableProperties](../types/MinableProperties.md) | yes |
| [mined_sound](#mined-sound) | [Sound](../types/Sound.md) | yes |
| [needs_correction](#needs-correction) | [boolean](../types/boolean.md) | yes |
| [next_direction](#next-direction) | [TileID](../types/TileID.md) | yes |
| [particle_tints](#particle-tints) | [TileBasedParticleTints](../types/TileBasedParticleTints.md) | yes |
| [placeable_by](#placeable-by) | [ItemToPlace](../types/ItemToPlace.md) ∣ array[[ItemToPlace](../types/ItemToPlace.md)] | yes |
| [scorch_mark_color](#scorch-mark-color) | [Color](../types/Color.md) | yes |
| [searchable](#searchable) | [boolean](../types/boolean.md) | yes |
| [sprite_usage_surface](#sprite-usage-surface) | [SpriteUsageSurfaceHint](../types/SpriteUsageSurfaceHint.md) | yes |
| [thawed_variant](#thawed-variant) | [TileID](../types/TileID.md) | yes |
| [tint](#tint) | [Color](../types/Color.md) | yes |
| [transition_merges_with_tile](#transition-merges-with-tile) | [TileID](../types/TileID.md) | yes |
| [transition_overlay_layer_offset](#transition-overlay-layer-offset) | [int8](../types/int8.md) | yes |
| [transitions](#transitions) | array[[TileTransitionsToTiles](../types/TileTransitionsToTiles.md)] | yes |
| [transitions_between_transitions](#transitions-between-transitions) | array[[TileTransitionsBetweenTransitions](../types/TileTransitionsBetweenTransitions.md)] | yes |
| [trigger_effect](#trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [variants](#variants) | [TileTransitionsVariants](../types/TileTransitionsVariants.md) |  |
| [vehicle_friction_modifier](#vehicle-friction-modifier) | [double](../types/double.md) | yes |
| [walking_sound](#walking-sound) | [Sound](../types/Sound.md) | yes |
| [walking_speed_modifier](#walking-speed-modifier) | [double](../types/double.md) | yes |
| [weight](#weight) | [Weight](../types/Weight.md) | yes |

### absorptions_per_second

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [double](../types/double.md)] · _optional_

### allowed_neighbors

**Type:** array[[TileID](../types/TileID.md)] · _optional_ · **Default:** `All tiles`

Array of tile names that are allowed next to this one.

### allows_being_covered

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### ambient_sounds

**Type:** [WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md) ∣ array[[WorldAmbientSoundDefinition](../types/WorldAmbientSoundDefinition.md)] · _optional_

### ambient_sounds_group

**Type:** [TileID](../types/TileID.md) · _optional_

### autoplace

**Type:** [AutoplaceSpecification](../types/AutoplaceSpecification.md) · _optional_

### bound_decoratives

**Type:** [DecorativeID](../types/DecorativeID.md) ∣ array[[DecorativeID](../types/DecorativeID.md)] · _optional_

### build_animations

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

The build animation used when this tile is built on a space platform.

### build_animations_background

**Type:** [Animation4Way](../types/Animation4Way.md) · _optional_

### build_sound

**Type:** [Sound](../types/Sound.md) ∣ [TileBuildSound](../types/TileBuildSound.md) · _optional_

If this is loaded as one Sound, it is loaded as the "small" build sound.

### built_animation_frame

**Type:** [uint32](../types/uint32.md) · _optional_

When the build_animations frame reaches this point the tile is built.

Mandatory if `build_animations` is defined.

### can_be_part_of_blueprint

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### check_collision_with_entities

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

If set to true, the game will check for collisions with entities before building or mining the tile. If entities are in the way it is not possible to mine/build the tile.

### collision_mask

**Type:** [TileCollisionMaskConnector](../types/TileCollisionMaskConnector.md)

### decorative_removal_probability

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### default_cover_tile

**Type:** [TileID](../types/TileID.md) · _optional_

### default_destroyed_dropped_item_trigger

**Type:** [Trigger](../types/Trigger.md) · _optional_

The effect/trigger that runs when an item is destroyed by being dropped on this tile.

If the item defines [its own trigger](../prototypes/ItemPrototype.md#destroyed-by-dropping-trigger) it will override this.

If this is defined, `destroys_dropped_items` must be `true`.

### destroys_dropped_items

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If items dropped on this tile are destroyed.

### driving_sound

**Type:** [InterruptibleSound](../types/InterruptibleSound.md) · _optional_

### dying_explosion

**Type:** [ExplosionDefinition](../types/ExplosionDefinition.md) ∣ array[[ExplosionDefinition](../types/ExplosionDefinition.md)] · _optional_

Triggers when a foundation tile is destroyed by an asteroid.

### effect

**Type:** [TileEffectDefinitionID](../types/TileEffectDefinitionID.md) · _optional_

### effect_color

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=1, g=1, b=1, a=1} (white)``

### effect_color_secondary

**Type:** [Color](../types/Color.md) · _optional_

Used by the [pollution](https://wiki.factorio.com/Pollution) shader.

### effect_is_opaque

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `true if `effect_color` alpha equals 1`

### fluid

**Type:** [FluidID](../types/FluidID.md) · _optional_

### frozen_variant

**Type:** [TileID](../types/TileID.md) · _optional_

### icon

**Type:** [FileName](../types/FileName.md) · _optional_

Path to the icon file. If this and `icons` is not set, the `material_background` in `variants` is used as the icon.

Only loaded if `icons` is not defined.

### icon_size

**Type:** [SpriteSizeType](../types/SpriteSizeType.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 64}`

The size of the square icon, in pixels. E.g. `32` for a 32px by 32px icon. Must be larger than `0`.

Only loaded if `icons` is not defined.

### icons

**Type:** array[[IconData](../types/IconData.md)] · _optional_

Can't be an empty array. If this and `icon` is not set, the `material_background` in `variants` is used as the icon.

### is_foundation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### landing_steps_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### layer

**Type:** [uint8](../types/uint8.md)

Specifies transition drawing priority. This represents the positive offset from this tile's `layer_group`. Internally, the final layer is computed as `layer_group + layer` (a [uint16](../types/uint16.md)), wrapping back to `"zero"` after the `"top"` layer.

### layer_group

**Type:** [TileRenderLayer](../types/TileRenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'ground-natural'}`

The base group of render layers this tile belongs to. It can be moved up inside this group using the `layer` property. See the [TileRenderLayer](../types/TileRenderLayer.md) page to see the sizes of all layer groups.

### lowland_fog

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

For surfaces that use [fog effect](../types/SurfaceRenderParameters.md#fog) of type `gleba`, this property determines whether given tile should contribute to fog intensity on a chunk or not.

### map_color

**Type:** [Color](../types/Color.md)

### max_health

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Must be equal to or greater than 0.

### minable

**Type:** [MinableProperties](../types/MinableProperties.md) · _optional_

If you want the tile to not be mineable, don't specify the minable property. Only non-mineable tiles become hidden tiles when placing mineable tiles on top of them.

### mined_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### needs_correction

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether the tile needs tile correction logic applied when it's generated in the world, to prevent graphical artifacts. The tile correction logic disallows 1-wide stripes of the tile, see [Friday Facts #346](https://factorio.com/blog/post/fff-346).

### next_direction

**Type:** [TileID](../types/TileID.md) · _optional_

### particle_tints

**Type:** [TileBasedParticleTints](../types/TileBasedParticleTints.md) · _optional_

### placeable_by

**Type:** [ItemToPlace](../types/ItemToPlace.md) ∣ array[[ItemToPlace](../types/ItemToPlace.md)] · _optional_

### scorch_mark_color

**Type:** [Color](../types/Color.md) · _optional_

### searchable

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### sprite_usage_surface

**Type:** [SpriteUsageSurfaceHint](../types/SpriteUsageSurfaceHint.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'any'}`

### thawed_variant

**Type:** [TileID](../types/TileID.md) · _optional_

### tint

**Type:** [Color](../types/Color.md) · _optional_ · **Default:** ``{r=1, g=1, b=1, a=1} (white)``

### transition_merges_with_tile

**Type:** [TileID](../types/TileID.md) · _optional_

### transition_overlay_layer_offset

**Type:** [int8](../types/int8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### transitions

**Type:** array[[TileTransitionsToTiles](../types/TileTransitionsToTiles.md)] · _optional_

Extra transitions.

### transitions_between_transitions

**Type:** array[[TileTransitionsBetweenTransitions](../types/TileTransitionsBetweenTransitions.md)] · _optional_

### trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

Called by [InvokeTileEffectTriggerEffectItem](../types/InvokeTileEffectTriggerEffectItem.md).

### variants

**Type:** [TileTransitionsVariants](../types/TileTransitionsVariants.md)

Graphics for this tile.

### vehicle_friction_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### walking_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### walking_speed_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### weight

**Type:** [Weight](../types/Weight.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Mass which this tile adds to total space platform mass when placed.
