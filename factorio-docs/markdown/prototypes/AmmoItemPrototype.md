# AmmoItemPrototype

_prototype_

**Prototype type string:** `type = "ammo"`

**Inherits from:** [ItemPrototype](../prototypes/ItemPrototype.md)

Ammo used for a gun.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [ammo_category](#ammo-category) | [AmmoCategoryID](../types/AmmoCategoryID.md) |  |
| [ammo_type](#ammo-type) | [AmmoType](../types/AmmoType.md) ∣ array[[AmmoType](../types/AmmoType.md)] |  |
| [magazine_size](#magazine-size) | [float](../types/float.md) | yes |
| [reload_time](#reload-time) | [float](../types/float.md) | yes |
| [shoot_protected](#shoot-protected) | [boolean](../types/boolean.md) | yes |

### ammo_category

**Type:** [AmmoCategoryID](../types/AmmoCategoryID.md)

### ammo_type

**Type:** [AmmoType](../types/AmmoType.md) ∣ array[[AmmoType](../types/AmmoType.md)]

When using a plain [AmmoType](../types/AmmoType.md) (no array), the ammo type applies to everything (`"default"`).

When using an array of AmmoTypes, they have the additional [AmmoType::source_type](../types/AmmoType.md#source-type) property.

### magazine_size

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Number of shots before ammo item is consumed. Must be >= `1`.

### reload_time

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Amount of extra time (in ticks) it takes to reload the weapon after depleting the magazine. Must be >= `0`.

### shoot_protected

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`
