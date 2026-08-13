# SegmentPrototype

_prototype_ · **space_age**

**Prototype type string:** `type = "segment"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Entity representing an individual segment in a [SegmentedUnitPrototype](../prototypes/SegmentedUnitPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [animation](#animation) | [RotatedAnimation](../types/RotatedAnimation.md) |  |
| [backward_overlap](#backward-overlap) | [uint8](../types/uint8.md) | yes |
| [backward_padding](#backward-padding) | [double](../types/double.md) | yes |
| [dying_sound](#dying-sound) | [Sound](../types/Sound.md) | yes |
| [dying_sound_volume_modifier](#dying-sound-volume-modifier) | [float](../types/float.md) | yes |
| [forward_overlap](#forward-overlap) | [uint8](../types/uint8.md) | yes |
| [forward_padding](#forward-padding) | [double](../types/double.md) | yes |
| [render_layer](#render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [update_effects](#update-effects) | array[[TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)] | yes |
| [update_effects_while_enraged](#update-effects-while-enraged) | array[[TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)] | yes |

### animation

**Type:** [RotatedAnimation](../types/RotatedAnimation.md)

The animation to use of the entity.

### backward_overlap

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of segments behind this one that should always be rendered atop this one, giving the illusion that at all orientations, those following segments overlap this current segment.

Must be 0 or greater, and the sum of `forward_overlap` and `backward_overlap` must be less than or equal to 4.

### backward_padding

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of tiles of spacing to add behind this segment. Can be negative. Scales with the segment scale when used in a [SegmentEngineSpecification](../types/SegmentEngineSpecification.md).

### dying_sound

**Type:** [Sound](../types/Sound.md) · _optional_

The sound to play when the entity dies.

If not specified, [UtilitySounds::segment_dying_sound](../prototypes/UtilitySounds.md#segment-dying-sound) is used.

### dying_sound_volume_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### forward_overlap

**Type:** [uint8](../types/uint8.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of segments ahead of this one that should always be rendered atop this one, giving the illusion that at all orientations, those preceding segments overlap this current segment.

Must be 0 or greater, and the sum of `forward_overlap` and `backward_overlap` must be less than or equal to 4.

### forward_padding

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of tiles of spacing to add in front of this segment. Can be negative. Scales with the segment scale when used in a [SegmentEngineSpecification](../types/SegmentEngineSpecification.md).

### render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'object'}`

The layer to render the entity in.

### update_effects

**Type:** array[[TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)] · _optional_

The effects to trigger every tick.

### update_effects_while_enraged

**Type:** array[[TriggerEffectWithCooldown](../types/TriggerEffectWithCooldown.md)] · _optional_

The effects to trigger every tick while enraged, in addition to `update_effects`.
