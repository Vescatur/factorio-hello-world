# SoundPath

_concept_

It can be either the name of a [SoundPrototype](../prototypes/SoundPrototype.md) defined in the data stage, or a path in the form `"type/name"`. The latter option can be sorted into four categories.

The validity of a SoundPath can be verified at runtime using [LuaHelpers::is_valid_sound_path](../classes/LuaHelpers.md#is-valid-sound-path).

The utility and ambient types each contain general use sound prototypes defined by the game itself.

- `"utility"` - Uses [UtilitySounds](../prototypes/UtilitySounds.md). Example: `"utility/wire_connect_pole"`
- `"ambient"` - Uses [AmbientSound::sound](../prototypes/AmbientSound.md#sound). Variable sounds cannot be used. Example: `"ambient/resource-deficiency"`

The following types can be combined with any tile name as long as its prototype defines the corresponding sound.

- `"tile-walking"` - Uses [TilePrototype::walking_sound](../prototypes/TilePrototype.md#walking-sound). Example: `"tile-walking/concrete"`
- `"tile-mined"` - Uses [TilePrototype::mined_sound](../prototypes/TilePrototype.md#mined-sound)
- `"tile-build-small"` - Uses [TilePrototype::build_sound](../prototypes/TilePrototype.md#build-sound). Example: `"tile-build-small/concrete"`
- `"tile-build-medium"` - Uses [TilePrototype::build_sound](../prototypes/TilePrototype.md#build-sound)
- `"tile-build-large"` - Uses [TilePrototype::build_sound](../prototypes/TilePrototype.md#build-sound)

The following types can be combined with any entity name as long as its prototype defines the corresponding sound.

- `"entity-build"` - Uses [EntityPrototype::build_sound](../prototypes/EntityPrototype.md#build-sound). Example: `"entity-build/wooden-chest"`
- `"entity-mined"` - Uses [EntityPrototype::mined_sound](../prototypes/EntityPrototype.md#mined-sound)
- `"entity-mining"` - Uses [EntityPrototype::mining_sound](../prototypes/EntityPrototype.md#mining-sound)
- `"entity-rotated"` - Uses [EntityPrototype::rotated_sound](../prototypes/EntityPrototype.md#rotated-sound)
- `"entity-open"` - Uses [EntityPrototype::open_sound](../prototypes/EntityPrototype.md#open-sound)
- `"entity-close"` - Uses [EntityPrototype::close_sound](../prototypes/EntityPrototype.md#close-sound)

The following types can be combined with any item name as long as its prototype defines the corresponding sound.

- `"item-open"` - Uses [ItemPrototype::open_sound](../prototypes/ItemPrototype.md#open-sound). Example: `"item-open/modular-armor"`
- `"item-close"` - Uses [ItemPrototype::close_sound](../prototypes/ItemPrototype.md#close-sound)
- `"item-pick"` - Uses [ItemPrototype::pick_sound](../prototypes/ItemPrototype.md#pick-sound). Example: `"item-pick/transport-belt"`
- `"item-drop"` - Uses [ItemPrototype::drop_sound](../prototypes/ItemPrototype.md#drop-sound)
- `"item-move"` - Uses [ItemPrototype::inventory_move_sound](../prototypes/ItemPrototype.md#inventory-move-sound)

**Definition:** [string](../concepts/string.md)
