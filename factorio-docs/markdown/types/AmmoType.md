# AmmoType

_type_

Definition of actual parameters used in attack.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [clamp_position](#clamp-position) | [boolean](../types/boolean.md) | yes |
| [consumption_modifier](#consumption-modifier) | [float](../types/float.md) | yes |
| [cooldown_modifier](#cooldown-modifier) | [double](../types/double.md) | yes |
| [energy_consumption](#energy-consumption) | [Energy](../types/Energy.md) | yes |
| [force_clamp_to_max_range](#force-clamp-to-max-range) | [boolean](../types/boolean.md) | yes |
| [range_modifier](#range-modifier) | [double](../types/double.md) | yes |
| [source_type](#source-type) | [AmmoSourceType](../types/AmmoSourceType.md) | yes |
| [target_filter](#target-filter) | array[[EntityID](../types/EntityID.md)] | yes |
| [target_type](#target-type) | `"entity"` ∣ `"position"` ∣ `"direction"` | yes |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

Describes actions taken upon attack happening.

### clamp_position

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When true, the gun will be able to shoot even when the target is out of range. Only applies when `target_type` equals `"position"`. The gun will fire at the maximum range in the direction of the target position.

### consumption_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### cooldown_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

### energy_consumption

**Type:** [Energy](../types/Energy.md) · _optional_

Energy consumption of a single shot, if applicable.

### force_clamp_to_max_range

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If true, attacks will always be clamped to max range even if the target is within range. Used for shotguns.

### range_modifier

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Affects the `range` value of the shooting gun prototype's [BaseAttackParameters](../types/BaseAttackParameters.md) to give a modified maximum range. The `min_range` value of the gun is unaffected.

This has no effect on artillery turrets and wagons even though the bonus appears in the GUI. [Forum thread](https://forums.factorio.com/103658).

### source_type

**Type:** [AmmoSourceType](../types/AmmoSourceType.md) · _optional_

Only exists (and is then mandatory) if the [AmmoItemPrototype::ammo_type](../prototypes/AmmoItemPrototype.md#ammo-type) this AmmoType is defined on has multiple ammo types.

Defines for which kind of entity this ammo type applies. Each entity kind can only be used once per array.

### target_filter

**Type:** array[[EntityID](../types/EntityID.md)] · _optional_

List of entities that can be targeted by this ammo type.

### target_type

**Type:** `"entity"` ∣ `"position"` ∣ `"direction"` · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'entity'}`

`"entity"` fires at an entity, `"position"` fires directly at a position, `"direction"` fires in a direction.

If this is `"entity"`, `clamp_position` is forced to be `false`.
