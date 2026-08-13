# ProjectilePrototype

_prototype_

**Prototype type string:** `type = "projectile"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Entity with limited lifetime that can hit other entities and has triggers when this happens.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [acceleration](#acceleration) | [double](../types/double.md) |  |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [animation](#animation) | [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) | yes |
| [direction_only](#direction-only) | [boolean](../types/boolean.md) | yes |
| [enable_drawing_with_mask](#enable-drawing-with-mask) | [boolean](../types/boolean.md) | yes |
| [final_action](#final-action) | [Trigger](../types/Trigger.md) | yes |
| [force_condition](#force-condition) | [ForceCondition](../types/ForceCondition.md) | yes |
| [height](#height) | [double](../types/double.md) | yes |
| [hit_at_collision_position](#hit-at-collision-position) | [boolean](../types/boolean.md) | yes |
| [hit_collision_mask](#hit-collision-mask) | [CollisionMaskConnector](../types/CollisionMaskConnector.md) | yes |
| [light](#light) | [LightDefinition](../types/LightDefinition.md) | yes |
| [max_speed](#max-speed) | [double](../types/double.md) | yes |
| [piercing_damage](#piercing-damage) | [float](../types/float.md) | yes |
| [rotatable](#rotatable) | [boolean](../types/boolean.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shadow](#shadow) | [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) | yes |
| [smoke](#smoke) | array[[SmokeSource](../types/SmokeSource.md)] | yes |
| [speed_modifier](#speed-modifier) | [Vector](../types/Vector.md) | yes |
| [turn_speed](#turn-speed) | [float](../types/float.md) | yes |
| [turning_speed_increases_exponentially_with_projectile_speed](#turning-speed-increases-exponentially-with-projectile-speed) | [boolean](../types/boolean.md) | yes |

### acceleration

**Type:** [double](../types/double.md)

Must be != 0 if `turning_speed_increases_exponentially_with_projectile_speed` is true.

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Executed when the projectile hits something.

### animation

**Type:** [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) · _optional_

### direction_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Setting this to true can be used to disable projectile homing behaviour.

### enable_drawing_with_mask

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### final_action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Executed when the projectile hits something, after `action` and only if the entity that was hit was destroyed. The projectile is destroyed right after the final_action.

### force_condition

**Type:** [ForceCondition](../types/ForceCondition.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'all'}`

### height

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### hit_at_collision_position

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When true the entity is hit at the position on its collision box the projectile first collides with. When false the entity is hit at its own position.

### hit_collision_mask

**Type:** [CollisionMaskConnector](../types/CollisionMaskConnector.md) · _optional_

Defaults to the mask from [UtilityConstants::default_collision_masks](../prototypes/UtilityConstants.md#default-collision-masks) when indexed by `"projectile/hit"`.

### light

**Type:** [LightDefinition](../types/LightDefinition.md) · _optional_

### max_speed

**Type:** [double](../types/double.md) · _optional_ · **Default:** `MAX_DOUBLE`

Must be greater than or equal to 0.

### piercing_damage

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Whenever an entity is hit by the projectile, this number gets reduced by the health of the entity. If the number is then below 0, the `final_action` is applied and the projectile destroyed. Otherwise, the projectile simply continues to its destination.

### rotatable

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the animation of the projectile is rotated to match the direction of travel.

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shadow

**Type:** [RotatedAnimationVariations](../types/RotatedAnimationVariations.md) · _optional_

### smoke

**Type:** array[[SmokeSource](../types/SmokeSource.md)] · _optional_

### speed_modifier

**Type:** [Vector](../types/Vector.md) · _optional_ · **Default:** ``{1, 1}``

### turn_speed

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Must be greater than or equal to 0.

### turning_speed_increases_exponentially_with_projectile_speed

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
