## Mod Structure

Mods are expected to have a certain structure in order to be loaded by the game. This page aims to explain that file structure and what each file is used for.

### Mod folder and file structure

The mod must either be in a folder, or in a folder inside a zip file.

The mod folder (no zip file) must either be named in the pattern of `{mod-name}_{version-number}` or just `{mod-name}`, for example `better-armor`.

The mod zip must be named in the pattern of `{mod-name}_{version-number}`, for example `better-armor_0.3.6`. When using a zip file for the mod, the folder inside the zip file does not have any naming restrictions; only the zip file itself must be named with the `{mod-name}_{version-number}` pattern. The mod name and its version number are defined in the [info.json](#infojson) file.

#### Files

Inside the mod folder, the game automatically reads the following files during load:

- `info.json` — The only mandatory [file](#infojson). It identifies the mod, defines its version and other general properties.
- `changelog.txt` — Version history of the mod, to be shown in the mod browser. The changelog file must follow strict [formatting requirements](changelog-format.md).
- `thumbnail.png` — Thumbnail to be shown on the mod portal and in the mod browser in-game. Ideally a 144x144px image file.
- `settings.lua` — This and the next two files are used to set up mod [configuration options](https://wiki.factorio.com/Tutorial:Mod_settings).
- `settings-updates.lua`
- `settings-final-fixes.lua`
- `data.lua` — This and the next two files are used to define prototypes.
- `data-updates.lua` — The load order of the three `data*.lua` files is explained on [Data lifecycle](data-lifecycle.md).
- `data-final-fixes.lua`
- `control.lua` — This file is used for runtime scripting.

#### Subfolders

Furthermore, the following folders inside the mod folder are recognized by the game:

- `locale` — Can contain up to one subfolder per language, identified with the language code, for example `en` for English. The subfolder then has to contain at least one `*.cfg` file which defines the [translations](https://wiki.factorio.com/Tutorial:Localisation) for that language.
- `scenarios` — Custom [scenarios](https://wiki.factorio.com/Scenario_system) can be placed in subfolders of this folder.
- `campaigns` — Custom campaigns can be placed in subfolders of this folder.
- `tutorials` — Custom [tutorial](../prototypes/TutorialDefinition.md) scenarios can be placed in subfolders of this folder.
- `migrations` — [Migration files](migrations.md) are placed in this folder. They are a way to handle prototype changes and mod data structure changes between mod versions or game versions.

#### Example

Here is an example directory structure for a mod titled `better-armor` with a version number of `0.3.6`:

```

better-armor_0.3.6.zip
|- aFolderName/
  |- control.lua
  |- data.lua
  |- info.json
  |- thumbnail.png

```

### info.json

The info.json file identifies the mod and defines its version. If the game encounters a problem when parsing the file, the error message can be found in the [log file](https://wiki.factorio.com/Log_file). A minimal info.json file can look like this:

```

{
  "name": "better-armor",
  "version": "0.3.6",
  "title": "My better armor mod",
  "author": "A very great modder",
  "factorio_version": "2.0",
  "dependencies": ["? optional-mod"]
}

```

The `info.json` file supports the fields listed below.

#### name

**Type**: `string`

Mandatory field. The internal name of the mod. The game accepts anything as a mod name, however the mod portal restricts mod names to only consist of alphanumeric characters, dashes and underscores. Note that the mod folder or mod zip file name has to contain the mod name, where the restrictions of the file system apply.

The game accepts mod names with a maximum length of 100 characters. The mod portal only accepts mods with names that are longer than 3 characters and shorter than 50 characters.

#### version

**Type**: `string`

Mandatory field. Defines the version of the mod in the format `"number.number.number"`, for example `"0.6.4"`. Each number can range from `0` to `65535`. There is no inherent semantic meaning to these numbers.

#### title

**Type**: `string`

Mandatory field. The display name of the mod, intended to be human-readable. Can be overwritten with a locale entry in the `mod-name` category, using the internal mod name as the key.

The game will reject a title field that is longer than 100 characters. However, this can be worked around by using the locale entry. The mod portal does not restrict mod title length.

#### author

**Type**: `string`

Mandatory field. The author of the mod. This field does not have restrictions, it can also be a list of authors etc. The mod portal ignores this field, it will simply display the uploader's name as the author.

#### contact

**Type**: `string`

*Optional field.* How the mod author can be contacted, for example an email address.

#### homepage

**Type**: `string`

*Optional field.* Where the mod can be found on the internet, such as a website, forum thread or Discord. Note that the in-game mod browser shows the mod portal link additionally to this field.

The in-game mod browser and the mod portal display this field as a clickable link.

#### description

**Type**: `string`

*Optional field.* A short description of what the mod does. This is the only description that is displayed in the in-game mod browser. Can be overwritten with a locale entry in the `mod-description` category, using the internal mod name as the key.

#### factorio_version

**Type**: `string`

The major Factorio version that this mod is compatible with, formatted as `"number.number"` (e.g. `"2.0"`). Factorio's releases are categorized into major versions, which are indicated by the first two numbers in their version string (which notably does not follow [SemVer](https://semver.org)). As an example, Factorio 1.1.110 is part of the 1.1 major version.

Mods can only be compatible with one major version, not multiple. A `factorio_version` of `"2.0"` indicates support for all releases under that major version, and no other major releases. Even if a mod would otherwise work on a newer major release, this field needs to be updated to explicitly mark it as compatible.

This field is technically optional, as it defaults to `"0.12"`. To be able to release a mod for any modern version however, it has to be defined, so it is effectively mandatory.

Including a third number (e.g. "0.18.**27**") will make the mod portal reject the mod and may make the in-game mod management behave in unexpected ways.

As an exception, mods with the `factorio_version` `"0.18"` can also be loaded in 1.0, and the mod portal will return them when queried for `factorio_version` `"1.0"` mods.

#### dependencies

**Type**: array of [Dependency](#dependency)

**Default**: `["base"]`

*Optional field.* Mods that this mod depends on or is incompatible with. If this mod depends on another, the other mod will load first, see [Data Lifecycle](data-lifecycle.md). An empty array allows to work around the default and have no dependencies at all.

Example: `"dependencies": ["mod-a", "? mod-c > 0.4.3", "! mod-g"]`

#### Dependency

Each dependency is a string that consists of up to three parts: `"<prefix> internal-mod-name <equality-operator> <version>"`.

Example: `"? some-other-mod >= 4.2.0"`

The equality operator (`<, <=, =, >= or >`) combined with the version allows to define dependencies that require certain mod versions, but it is not required. Incompatibility does not support versions; if incompatibility is used, version is ignored. If a version is used for an optional dependency, the mod is considered incompatible (and disabled) if the dependency is present but does not fulfill the version requirement.

The possible prefixes are:

- `!` for incompatibility
- `?` for an optional dependency
- `+` for a recommended dependency
- `(?)` for a hidden optional dependency
- `~` for a dependency that does not affect load order
- no prefix for a hard requirement for the other mod

#### quality_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for quality, requiring ownership of the Space Age expansion.

This allows:

- [QualityPrototype::level](../prototypes/QualityPrototype.md#level) to be greater than 0
- [QualityPrototype::name](../prototypes/QualityPrototype.md#name) to be something other than "normal" or "quality-unknown"

#### rail_bridges_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for elevated rails, requiring ownership of the Space Age expansion.

This allows the following prototypes:

- [RailRampPrototype](../prototypes/RailRampPrototype.md)
- [RailSupportPrototype](../prototypes/RailSupportPrototype.md)
- [ElevatedCurvedRailAPrototype](../prototypes/ElevatedCurvedRailAPrototype.md)
- [ElevatedCurvedRailBPrototype](../prototypes/ElevatedCurvedRailBPrototype.md)
- [ElevatedHalfDiagonalRailPrototype](../prototypes/ElevatedHalfDiagonalRailPrototype.md)
- [ElevatedStraightRailPrototype](../prototypes/ElevatedStraightRailPrototype.md)

#### spoiling_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for spoiling, requiring ownership of the Space Age expansion.

This allows the following prototype properties:

- [ItemPrototype::spoil_result](../prototypes/ItemPrototype.md#spoil-result)
- [ItemPrototype::spoil_ticks](../prototypes/ItemPrototype.md#spoil-ticks)
- [ItemPrototype::spoil_to_trigger_result](../prototypes/ItemPrototype.md#spoil-to-trigger-result)

#### freezing_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for freezing, requiring ownership of the Space Age expansion.

This allows the following prototype properties:

- [EntityPrototype::heating_energy](../prototypes/EntityPrototype.md#heating-energy)
- [PlanetPrototype::entities_require_heating](../prototypes/PlanetPrototype.md#entities-require-heating)

#### segmented_units_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for segmented units, requiring ownership of the Space Age expansion.

This allows the following prototypes:

- [SegmentedUnitPrototype](../prototypes/SegmentedUnitPrototype.md)
- [SegmentPrototype](../prototypes/SegmentPrototype.md)

#### expansion_shaders_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for additional shaders, requiring ownership of the Space Age expansion.

This allows the following properties:

- [TileEffectDefinition::space](../prototypes/TileEffectDefinition.md#space)
- [TileEffectDefinition::puddle](../prototypes/TileEffectDefinition.md#puddle)
- [SurfaceRenderParameters::fog](../types/SurfaceRenderParameters.md#fog)
- [SurfaceRenderParameters::terrain_tint_effect](../types/SurfaceRenderParameters.md#terrain-tint-effect)
- [SurfaceRenderParameters::space_dust_background](../types/SurfaceRenderParameters.md#space-dust-background)
- [SurfaceRenderParameters::space_dust_foreground](../types/SurfaceRenderParameters.md#space-dust-foreground)
- [EffectVariation::lava](../types/EffectVariation.md#lava)
- [EffectVariation::wetland-water](../types/EffectVariation.md#wetland-water)
- [EffectVariation::oil](../types/EffectVariation.md#oil)

#### expansion_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for the expansion, requiring ownership of the Space Age expansion.

This allows the following properties:

- [InserterPrototype::max_belt_stack_size](../prototypes/InserterPrototype.md#max-belt-stack-size)
- [LoaderPrototype::max_belt_stack_size](../prototypes/LoaderPrototype.md#max-belt-stack-size)
- [LoaderPrototype::adjustable_belt_stack_size](../prototypes/LoaderPrototype.md#adjustable-belt-stack-size)
- [MiningDrillPrototype::drops_full_belt_stacks](../prototypes/MiningDrillPrototype.md#drops-full-belt-stacks)

#### space_travel_required

**Type**: `boolean`

**Default**: `false`

*Optional field.* Enables the feature flag for space travel, requiring ownership of the Space Age expansion.

This allows all prototypes and properties marked as requiring Space Age and not covered by the other feature flags. Additionally, this allows all properties allowed by the `expansion_required` flag.
