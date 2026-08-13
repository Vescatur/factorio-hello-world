# EntityWithHealthPrototype

_prototype_ · **abstract**

**Inherits from:** [EntityPrototype](../prototypes/EntityPrototype.md)

Abstract base of all entities with health in the game.

**Example:**

```
{
  type = "container",
  name = "wooden-chest",
  icon = "__base__/graphics/icons/wooden-chest.png",
  flags = { "placeable-neutral", "player-creation" },
  minable = { mining_time = 1, result = "wooden-chest" },
  max_health = 100,
  corpse = "small-remnants",
  collision_box = { {-0.35, -0.35}, {0.35, 0.35} },
  fast_replaceable_group = "container",
  selection_box = { {-0.5, -0.5}, {0.5, 0.5} },
  inventory_size = 16,
  open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
  close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
  picture =
  {
    filename = "__base__/graphics/entity/wooden-chest/wooden-chest.png",
    priority = "extra-high",
    width = 46,
    height = 33,
    shift = {0.25, 0.015625}
  }
}
```

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [alert_when_damaged](#alert-when-damaged) | [boolean](../types/boolean.md) | yes |
| [attack_reaction](#attack-reaction) | [AttackReactionItem](../types/AttackReactionItem.md) ∣ array[[AttackReactionItem](../types/AttackReactionItem.md)] | yes |
| [corpse](#corpse) | [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] | yes |
| [create_ghost_on_death](#create-ghost-on-death) | [boolean](../types/boolean.md) | yes |
| [damaged_trigger_effect](#damaged-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [dying_explosion](#dying-explosion) | [ExplosionDefinition](../types/ExplosionDefinition.md) ∣ array[[ExplosionDefinition](../types/ExplosionDefinition.md)] | yes |
| [dying_trigger_effect](#dying-trigger-effect) | [TriggerEffect](../types/TriggerEffect.md) | yes |
| [healing_per_tick](#healing-per-tick) | [float](../types/float.md) | yes |
| [hide_resistances](#hide-resistances) | [boolean](../types/boolean.md) | yes |
| [integration_patch](#integration-patch) | [Sprite4Way](../types/Sprite4Way.md) | yes |
| [integration_patch_render_layer](#integration-patch-render-layer) | [RenderLayer](../types/RenderLayer.md) | yes |
| [loot](#loot) | array[[ItemProductPrototype](../types/ItemProductPrototype.md)] | yes |
| [max_health](#max-health) | [float](../types/float.md) | yes |
| [overkill_fraction](#overkill-fraction) | [float](../types/float.md) | yes |
| [random_corpse_variation](#random-corpse-variation) | [boolean](../types/boolean.md) | yes |
| [repair_sound](#repair-sound) | [Sound](../types/Sound.md) | yes |
| [repair_speed_modifier](#repair-speed-modifier) | [float](../types/float.md) | yes |
| [resistances](#resistances) | array[[Resistance](../types/Resistance.md)] | yes |

### alert_when_damaged

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### attack_reaction

**Type:** [AttackReactionItem](../types/AttackReactionItem.md) ∣ array[[AttackReactionItem](../types/AttackReactionItem.md)] · _optional_ · **Default:** `Empty`

### corpse

**Type:** [EntityID](../types/EntityID.md) ∣ array[[EntityID](../types/EntityID.md)] · _optional_ · **Default:** `Empty`

Specifies the names of the [CorpsePrototype](../prototypes/CorpsePrototype.md) to be used when this entity dies.

### create_ghost_on_death

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

### damaged_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### dying_explosion

**Type:** [ExplosionDefinition](../types/ExplosionDefinition.md) ∣ array[[ExplosionDefinition](../types/ExplosionDefinition.md)] · _optional_

The entities that are spawned in place of this one when it dies.

### dying_trigger_effect

**Type:** [TriggerEffect](../types/TriggerEffect.md) · _optional_

### healing_per_tick

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The amount of health automatically regenerated per tick. If the value is in range [-0.0166, 0.0166], then healing is considered slow and will apply 60 * healing_per_tick once every second.

**Example:**

```
healing_per_tick = 0.01
```

### hide_resistances

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the resistances of this entity should be hidden in the entity tooltip.

### integration_patch

**Type:** [Sprite4Way](../types/Sprite4Way.md) · _optional_

May also be defined inside `graphics_set` instead of directly in the entity prototype. This is useful for entities that use a `graphics_set` property to define their graphics, because then all graphics can be defined in one place.

Sprite drawn on ground under the entity to make it feel more integrated into the ground.

### integration_patch_render_layer

**Type:** [RenderLayer](../types/RenderLayer.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 'lower-object'}`

May also be defined inside `graphics_set` instead of directly in the entity prototype. This is useful for entities that use a `graphics_set` property to define their graphics, because then all graphics can be defined in one place.

### loot

**Type:** array[[ItemProductPrototype](../types/ItemProductPrototype.md)] · _optional_

The loot is dropped on the ground when the entity is killed.

**Example:**

```
loot =
{
  {
    type = "item",
    name = "stone",
    amount_min = 2,
    amount_max = 10,
    independent_probability = 1
  }
}
```

### max_health

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

The unit health can never go over the maximum. Default health of units on creation is set to max. Must be greater than 0.

**Example:**

```
max_health = 50
```

### overkill_fraction

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.05}`

Fraction of health by which predicted damage must be exceeded before entity is considered as "predicted to die" causing turrets (and others) to stop shooting more projectiles. If entity is healing it is better to keep larger margin to avoid cases where not enough projectiles goes towards a target and it heals causing it to survive all the incoming projectiles. If entity does not heal, margin may be reduced. Must be >= 0.

### random_corpse_variation

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### repair_sound

**Type:** [Sound](../types/Sound.md) · _optional_ · **Default:** `Utility sound defaultManualRepair`

Played when this entity is repaired with a [RepairToolPrototype](../prototypes/RepairToolPrototype.md).

### repair_speed_modifier

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Multiplier of [RepairToolPrototype::speed](../prototypes/RepairToolPrototype.md#speed) for this entity prototype.

### resistances

**Type:** array[[Resistance](../types/Resistance.md)] · _optional_

See [damage](https://wiki.factorio.com/Damage).

**Example:**

```
resistances =
{
  {
    type = "fire",
    percent = 80
  },
  {
    type = "explosion",
    percent = 30
  }
}
```
