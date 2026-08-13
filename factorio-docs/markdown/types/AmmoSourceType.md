# AmmoSourceType

_type_

Used to allow specifying different ammo effects depending on which kind of entity the ammo is used in.

If ammo is used in an entity that isn't covered by the defined source_types, e.g. only `"player"` and `"vehicle"` are defined and the ammo is used by a turret, the first defined AmmoType in the [AmmoItemPrototype::ammo_type](../prototypes/AmmoItemPrototype.md#ammo-type) array is used.

**Definition:** `"default"` ∣ `"player"` ∣ `"turret"` ∣ `"vehicle"`
