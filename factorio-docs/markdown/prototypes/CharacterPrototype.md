# CharacterPrototype

_prototype_

**Prototype type string:** `type = "character"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Entity that you move around on the screen during the campaign and freeplay.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animations](#animations) | array[[CharacterArmorAnimation](../types/CharacterArmorAnimation.md)] |  |
| [build_distance](#build-distance) | [uint32](../types/uint32.md) |  |
| [character_corpse](#character-corpse) | [EntityID](../types/EntityID.md) | yes |
| [crafting_categories](#crafting-categories) | array[[RecipeCategoryID](../types/RecipeCategoryID.md)] | yes |
| [crafting_speed](#crafting-speed) | [double](../types/double.md) | yes |
| [damage_hit_tint](#damage-hit-tint) | [Color](../types/Color.md) |  |
| [distance_per_frame](#distance-per-frame) | [double](../types/double.md) |  |
| [drop_item_distance](#drop-item-distance) | [uint32](../types/uint32.md) |  |
| [enter_vehicle_distance](#enter-vehicle-distance) | [double](../types/double.md) | yes |
| [flying_bob_speed](#flying-bob-speed) | [float](../types/float.md) | yes |
| [flying_collision_mask](#flying-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [footprint_particles](#footprint-particles) | array[[FootprintParticle](../types/FootprintParticle.md)] | yes |
| [footstep_particle_triggers](#footstep-particle-triggers) | [FootstepTriggerEffectList](../types/FootstepTriggerEffectList.md) | yes |
| [grounded_landing_search_radius](#grounded-landing-search-radius) | [double](../types/double.md) | yes |
| [guns_inventory_size](#guns-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [has_belt_immunity](#has-belt-immunity) | [boolean](../types/boolean.md) | yes |
| [heartbeat](#heartbeat) | [Sound](../types/Sound.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [is_military_target](#is-military-target) | [boolean](../types/boolean.md) | yes |
| [item_pickup_distance](#item-pickup-distance) | [double](../types/double.md) |  |
| [left_footprint_frames](#left-footprint-frames) | array[[float](../types/float.md)] | yes |
| [left_footprint_offset](#left-footprint-offset) | [Vector](../types/Vector.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [loot_pickup_distance](#loot-pickup-distance) | [double](../types/double.md) |  |
| [maximum_corner_sliding_distance](#maximum-corner-sliding-distance) | [double](../types/double.md) |  |
| [mining_categories](#mining-categories) | array[[ResourceCategoryID](../types/ResourceCategoryID.md)] | yes |
| [mining_speed](#mining-speed) | [double](../types/double.md) |  |
| [mining_with_tool_particles_animation_positions](#mining-with-tool-particles-animation-positions) | array[[float](../types/float.md)] |  |
| [moving_sound_animation_positions](#moving-sound-animation-positions) | array[[float](../types/float.md)] |  |
| [reach_distance](#reach-distance) | [uint32](../types/uint32.md) |  |
| [reach_resource_distance](#reach-resource-distance) | [double](../types/double.md) |  |
| [respawn_time](#respawn-time) | [uint32](../types/uint32.md) | yes |
| [right_footprint_frames](#right-footprint-frames) | array[[float](../types/float.md)] | yes |
| [right_footprint_offset](#right-footprint-offset) | [Vector](../types/Vector.md) | yes |
| [running_sound_animation_positions](#running-sound-animation-positions) | array[[float](../types/float.md)] |  |
| [running_speed](#running-speed) | [double](../types/double.md) |  |
| [synced_footstep_particle_triggers](#synced-footstep-particle-triggers) | [FootstepTriggerEffectList](../types/FootstepTriggerEffectList.md) | yes |
| [ticks_to_keep_aiming_direction](#ticks-to-keep-aiming-direction) | [uint32](../types/uint32.md) |  |
| [ticks_to_keep_gun](#ticks-to-keep-gun) | [uint32](../types/uint32.md) |  |
| [ticks_to_stay_in_combat](#ticks-to-stay-in-combat) | [uint32](../types/uint32.md) |  |
| [tool_attack_distance](#tool-attack-distance) | [double](../types/double.md) | yes |
| [tool_attack_result](#tool-attack-result) | [Trigger](../types/Trigger.md) | yes |

### animations

**Type:** array[[CharacterArmorAnimation](../types/CharacterArmorAnimation.md)]

### build_distance

**Type:** [uint32](../types/uint32.md)

### character_corpse

**Type:** [EntityID](../types/EntityID.md) · _optional_

Name of the character corpse that is spawned when this character dies.

### crafting_categories

**Type:** array[[RecipeCategoryID](../types/RecipeCategoryID.md)] · _optional_

Names of the crafting categories the character can craft recipes from. The built-in categories can be found [here](https://wiki.factorio.com/Data.raw#recipe-category). See also [RecipeCategory](../prototypes/RecipeCategory.md).

### crafting_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### damage_hit_tint

**Type:** [Color](../types/Color.md)

### distance_per_frame

**Type:** [double](../types/double.md)

### drop_item_distance

**Type:** [uint32](../types/uint32.md)

### enter_vehicle_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3.0}`

Must be >= 0.

### flying_bob_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### flying_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

This collision mask is used when the character is flying.

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by `"character/flying"`.

### footprint_particles

**Type:** array[[FootprintParticle](../types/FootprintParticle.md)] · _optional_

Triggered when the running animation (`animations`) rolls over the frames defined in `right_footprint_frames` and `left_footprint_frames`.

### footstep_particle_triggers

**Type:** [FootstepTriggerEffectList](../types/FootstepTriggerEffectList.md) · _optional_

Triggered every tick of the running animation.

### grounded_landing_search_radius

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The search radius for a non-colliding position to move the player to if they are grounded mid-flight. Must be >= 0.

### guns_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 3}`

Must be between 1 and 15.

### has_belt_immunity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether this character is moved by belts when standing on them.

### heartbeat

**Type:** [Sound](../types/Sound.md) · _optional_

The sound played when the character's health is low.

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

Number of slots in the main inventory. May be 0.

### is_military_target

**Type:** [boolean](../types/boolean.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### item_pickup_distance

**Type:** [double](../types/double.md)

### left_footprint_frames

**Type:** array[[float](../types/float.md)] · _optional_

The frames in the running animation (`animations`) where the left foot touches the ground.

### left_footprint_offset

**Type:** [Vector](../types/Vector.md) · _optional_

Offset from the center of the entity for the left footprint. Used by `footprint_particles`.

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### loot_pickup_distance

**Type:** [double](../types/double.md)

### maximum_corner_sliding_distance

**Type:** [double](../types/double.md)

### mining_categories

**Type:** array[[ResourceCategoryID](../types/ResourceCategoryID.md)] · _optional_

Names of the resource categories the character can mine resources from.

### mining_speed

**Type:** [double](../types/double.md)

### mining_with_tool_particles_animation_positions

**Type:** array[[float](../types/float.md)]

List of positions in the mining with tool animation when the mining sound and mining particles are created.

**Example:**

```
mining_with_tool_particles_animation_positions = {28}
```

### moving_sound_animation_positions

**Type:** array[[float](../types/float.md)]

List of positions in the running animation when the moving sound is played.

### reach_distance

**Type:** [uint32](../types/uint32.md)

### reach_resource_distance

**Type:** [double](../types/double.md)

### respawn_time

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

Time in seconds. Must be positive

### right_footprint_frames

**Type:** array[[float](../types/float.md)] · _optional_

The frames in the running animation (`animations`) where the right foot touches the ground.

### right_footprint_offset

**Type:** [Vector](../types/Vector.md) · _optional_

Offset from the center of the entity for the right footprint. Used by `footprint_particles`.

### running_sound_animation_positions

**Type:** array[[float](../types/float.md)]

List of positions in the running animation when the walking sound is played.

**Example:**

```
running_sound_animation_positions = {14, 29}
```

### running_speed

**Type:** [double](../types/double.md)

### synced_footstep_particle_triggers

**Type:** [FootstepTriggerEffectList](../types/FootstepTriggerEffectList.md) · _optional_

Triggered when the running animation (`animations`) rolls over the frames defined in `right_footprint_frames` and `left_footprint_frames`.

### ticks_to_keep_aiming_direction

**Type:** [uint32](../types/uint32.md)

### ticks_to_keep_gun

**Type:** [uint32](../types/uint32.md)

### ticks_to_stay_in_combat

**Type:** [uint32](../types/uint32.md)

### tool_attack_distance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.5}`

### tool_attack_result

**Type:** [Trigger](../types/Trigger.md) · _optional_
