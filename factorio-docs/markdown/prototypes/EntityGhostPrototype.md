# EntityGhostPrototype

_prototype_

**Prototype type string:** `type = "entity-ghost"`

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

The entity used for ghosts of entities. In-game, the inner entity (the entity this is a ghost of) is rendered with a [UtilityConstants::ghost_tint](../prototypes/UtilityConstants.md#ghost-tint).

**Example:**

```
{
  type = "entity-ghost",
  name = "entity-ghost",
  icon = "__core__/graphics/icons/mip/ghost-entity.png",
  icon_size = 64,
  build_sound = { { filename = "__core__/sound/build-ghost-small.ogg",  volume = 0.6 } },
  medium_build_sound = { { filename = "__core__/sound/build-ghost-medium.ogg",  volume = 0.7 } },
  large_build_sound = { { filename = "__core__/sound/build-ghost-large.ogg",  volume = 0.7 } },
  minable = { mining_time = 0, results = {} },
  mined_sound = { { filename = "__core__/sound/deconstruct-ghost.ogg",  volume = 0.4 } }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [huge_build_animated_sound](#huge-build-animated-sound) | [Sound](../types/Sound.md) | yes |
| [huge_build_sound](#huge-build-sound) | [Sound](../types/Sound.md) | yes |
| [large_build_animated_sound](#large-build-animated-sound) | [Sound](../types/Sound.md) | yes |
| [large_build_sound](#large-build-sound) | [Sound](../types/Sound.md) | yes |
| [medium_build_animated_sound](#medium-build-animated-sound) | [Sound](../types/Sound.md) | yes |
| [medium_build_sound](#medium-build-sound) | [Sound](../types/Sound.md) | yes |
| [small_build_animated_sound](#small-build-animated-sound) | [Sound](../types/Sound.md) | yes |

### huge_build_animated_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### huge_build_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### large_build_animated_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### large_build_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### medium_build_animated_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### medium_build_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### small_build_animated_sound

**Type:** [Sound](../types/Sound.md) · _optional_
