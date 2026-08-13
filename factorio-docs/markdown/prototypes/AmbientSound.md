# AmbientSound

_prototype_

**Prototype type string:** `type = "ambient-sound"`

This prototype is used to make sound while playing the game. This includes the [base game's music](https://store.steampowered.com/app/436090/Factorio__Soundtrack/), composed by Daniel James Taylor and the [Space Age's music](https://store.steampowered.com/app/3311770/Factorio_Space_Age__Soundtrack/), composed by Petr Wajsar.

**Example:**

```
{
  type = "ambient-sound",
  name = "world-ambience-4",
  track_type = "interlude",
  sound =
  {
    filename = "__base__/sound/ambient/world-ambience-4.ogg",
    volume = 1.2
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [exclude_planets](#exclude-planets) | array[[SpaceLocationID](../types/SpaceLocationID.md)] | yes |
| [exclude_surface_names](#exclude-surface-names) | array[[string](../types/string.md)] | yes |
| [name](#name) | [string](../types/string.md) |  |
| [planets](#planets) | array[[SpaceLocationID](../types/SpaceLocationID.md)] | yes |
| [play_on_all_surfaces](#play-on-all-surfaces) | [boolean](../types/boolean.md) | yes |
| [sound](#sound) | [Sound](../types/Sound.md) | yes |
| [surface_names](#surface-names) | array[[string](../types/string.md)] | yes |
| [title](#title) | [string](../types/string.md) | yes |
| [track_type](#track-type) | [AmbientSoundType](../types/AmbientSoundType.md) |  |
| [type](#type) | `"ambient-sound"` |  |
| [variable_sound](#variable-sound) | [VariableAmbientSoundVariableSound](../types/VariableAmbientSoundVariableSound.md) | yes |
| [weight](#weight) | [double](../types/double.md) | yes |

### exclude_planets

**Type:** array[[SpaceLocationID](../types/SpaceLocationID.md)] · _optional_

The track cannot play on specified planets.

Can be used only if `play_on_all_surfaces` is true or `surface_names` are defined.

Cannot be used when `planets` are defined.

### exclude_surface_names

**Type:** array[[string](../types/string.md)] · _optional_

The track cannot play on surfaces with specified name. It's enough if the specified name is a sub-string of the surface name.

Can be used only if `play_on_all_surfaces` is true or `surface_names` are defined.

Cannot exclude a name given in `surface_names`.

### name

**Type:** [string](../types/string.md)

Unique textual identification of the prototype.

### planets

**Type:** array[[SpaceLocationID](../types/SpaceLocationID.md)] · _optional_

The track can play only on specified planets.

If neither `planets` nor `surface_names` is given, the track plays on space platforms and in the space map.

Cannot be defined if `track_type` is `"script-track"`.

Cannot be defined when `play_on_all_surfaces` is true.

### play_on_all_surfaces

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

The track can play everywhere.

Cannot be defined if `track_type` is `"hero-track"` or `"script-track"`.

Cannot be true if `planets` or `surface_names` are defined.

### sound

**Type:** [Sound](../types/Sound.md) · _optional_

Static music track.

One of `sound` or `variable_sound` must be defined. Both cannot be defined together.

### surface_names

**Type:** array[[string](../types/string.md)] · _optional_

The track can play only on surfaces with specified names. It's enough if the specified name is a sub-string of the surface name.

If neither `planets` nor `surface_names` is given, the track plays on space platforms and in the space map.

Cannot be defined if `track_type` is `"hero-track"` or `"script-track"`.

Cannot be defined when `play_on_all_surfaces` is true.

### title

**Type:** [string](../types/string.md) · _optional_

Alternative name of the track. It doesn't need to be unique.

### track_type

**Type:** [AmbientSoundType](../types/AmbientSoundType.md)

### type

**Type:** `"ambient-sound"`

Specification of the type of the prototype.

### variable_sound

**Type:** [VariableAmbientSoundVariableSound](../types/VariableAmbientSoundVariableSound.md) · _optional_

Variable music track.

One of `sound` or `variable_sound` must be defined. Both cannot be defined together.

### weight

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Cannot be less than zero.

Cannot be defined if `track_type` is `"hero-track"` or `"script-track"`.
