# EnemySpawnerPrototype

_prototype_

**Prototype type string:** `type = "unit-spawner"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

Can spawn entities. Used for biter/spitter nests.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [absorptions_per_second](#absorptions-per-second) | dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [EnemySpawnerAbsorption](../types/EnemySpawnerAbsorption.md)] | yes |
| [allow_run_time_change_of_is_military_target](#allow-run-time-change-of-is-military-target) | `false` | yes |
| [call_for_help_radius](#call-for-help-radius) | [double](../types/double.md) |  |
| [captured_spawner_entity](#captured-spawner-entity) | [EntityID](../types/EntityID.md) | yes |
| [dying_sound](#dying-sound) | [Sound](../types/Sound.md) | yes |
| [graphics_set](#graphics-set) | [EnemySpawnerGraphicsSet](../types/EnemySpawnerGraphicsSet.md) |  |
| [is_military_target](#is-military-target) | `true` | yes |
| [max_count_of_owned_defensive_units](#max-count-of-owned-defensive-units) | [uint32](../types/uint32.md) | yes |
| [max_count_of_owned_units](#max-count-of-owned-units) | [uint32](../types/uint32.md) |  |
| [max_darkness_to_spawn](#max-darkness-to-spawn) | [float](../types/float.md) | yes |
| [max_defensive_friends_around_to_spawn](#max-defensive-friends-around-to-spawn) | [uint32](../types/uint32.md) | yes |
| [max_friends_around_to_spawn](#max-friends-around-to-spawn) | [uint32](../types/uint32.md) |  |
| [max_richness_for_spawn_shift](#max-richness-for-spawn-shift) | [double](../types/double.md) |  |
| [max_spawn_shift](#max-spawn-shift) | [double](../types/double.md) |  |
| [min_darkness_to_spawn](#min-darkness-to-spawn) | [float](../types/float.md) | yes |
| [result_units](#result-units) | array[[UnitSpawnDefinition](../types/UnitSpawnDefinition.md)] |  |
| [spawn_blocked_trigger](#spawn-blocked-trigger) | [Trigger](../types/Trigger.md) | yes |
| [spawn_decoration](#spawn-decoration) | array[[CreateDecorativesTriggerEffectItem](../types/CreateDecorativesTriggerEffectItem.md)] | yes |
| [spawn_decorations_on_expansion](#spawn-decorations-on-expansion) | [boolean](../types/boolean.md) | yes |
| [spawning_cooldown](#spawning-cooldown) | tuple[[double](../types/double.md), [double](../types/double.md)] |  |
| [spawning_radius](#spawning-radius) | [double](../types/double.md) |  |
| [spawning_spacing](#spawning-spacing) | [double](../types/double.md) |  |
| [time_to_capture](#time-to-capture) | [uint32](../types/uint32.md) | yes |

### absorptions_per_second

**Type:** dictionary[[AirbornePollutantID](../types/AirbornePollutantID.md) → [EnemySpawnerAbsorption](../types/EnemySpawnerAbsorption.md)] · _optional_

### allow_run_time_change_of_is_military_target

**Type:** `false` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If this is true, this entities `is_military_target property` can be changed runtime (on the entity, not on the prototype itself).

### call_for_help_radius

**Type:** [double](../types/double.md)

### captured_spawner_entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

### dying_sound

**Type:** [Sound](../types/Sound.md) · _optional_

### graphics_set

**Type:** [EnemySpawnerGraphicsSet](../types/EnemySpawnerGraphicsSet.md)

### is_military_target

**Type:** `true` · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether this prototype should be a high priority target for enemy forces. See [Military units and structures](https://wiki.factorio.com/Military_units_and_structures).

### max_count_of_owned_defensive_units

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `max_count_of_owned_units``

Count of defensive enemies this spawner can sustain. Defensive units are units with [UnitAISettings::join_attacks](../types/UnitAISettings.md#join-attacks) set to false. If set below [EnemySpawnerPrototype::max_count_of_owned_units](../prototypes/EnemySpawnerPrototype.md#max-count-of-owned-units), the difference will be the space reserved for non-defensive units.

### max_count_of_owned_units

**Type:** [uint32](../types/uint32.md)

Count of enemies this spawner can sustain.

### max_darkness_to_spawn

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1.0}`

### max_defensive_friends_around_to_spawn

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `Value of `max_friends_around_to_spawn``

How many friendly defensive units are required within the [EnemySpawnerPrototype::spawning_radius](../prototypes/EnemySpawnerPrototype.md#spawning-radius) of this spawner for it to stop producing more units. Defensive units are units with [UnitAISettings::join_attacks](../types/UnitAISettings.md#join-attacks) set to false. If set below [EnemySpawnerPrototype::max_friends_around_to_spawn](../prototypes/EnemySpawnerPrototype.md#max-friends-around-to-spawn), the difference will be the space reserved for non-defensive units.

### max_friends_around_to_spawn

**Type:** [uint32](../types/uint32.md)

How many friendly units are required within the [EnemySpawnerPrototype::spawning_radius](../prototypes/EnemySpawnerPrototype.md#spawning-radius) of this spawner for it to stop producing more units.

### max_richness_for_spawn_shift

**Type:** [double](../types/double.md)

Max richness to determine spawn shift. Spawn shift is a linear interpolation between 0 and max_spawn_shift.

### max_spawn_shift

**Type:** [double](../types/double.md)

Caps how much richness can be added on top of evolution when spawning units. [See also](https://www.reddit.com/r/factorio/comments/8pjscm/friday_facts_246_the_gui_update_part_3/e0bttnp/)

### min_darkness_to_spawn

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.0}`

### result_units

**Type:** array[[UnitSpawnDefinition](../types/UnitSpawnDefinition.md)]

Array of the [entities](../prototypes/EntityPrototype.md) that this spawner can spawn and their spawn probabilities. The sum of probabilities is expected to be 1.0. The array must not be empty.

### spawn_blocked_trigger

**Type:** [Trigger](../types/Trigger.md) · _optional_

Trigger that is activated when the spawner cannot find a valid spawn location.

### spawn_decoration

**Type:** array[[CreateDecorativesTriggerEffectItem](../types/CreateDecorativesTriggerEffectItem.md)] · _optional_

Decoratives to be created when the spawner is created by the [map generator](https://wiki.factorio.com/Map_generator). Placed when enemies expand if `spawn_decorations_on_expansion` is set to true.

### spawn_decorations_on_expansion

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

Whether `spawn_decoration` should be spawned when enemies [expand](https://wiki.factorio.com/Enemies#Expansions).

### spawning_cooldown

**Type:** tuple[[double](../types/double.md), [double](../types/double.md)]

Ticks for cooldown after unit is spawned. The first member of the tuple is min, the second member of the tuple is max.

The resulting spawning cooldown is a linear interpolation between min and max based on the current evolution factor.

### spawning_radius

**Type:** [double](../types/double.md)

How far from the spawner can the units be spawned.

### spawning_spacing

**Type:** [double](../types/double.md)

What spaces should be between the spawned units.

### time_to_capture

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`
