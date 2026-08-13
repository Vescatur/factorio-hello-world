# ChainActiveTriggerPrototype

_prototype_

**Prototype type string:** `type = "chain-active-trigger"`

**Inherits from:** [ActiveTriggerPrototype](../prototypes/ActiveTriggerPrototype.md)

Jumps between targets and applies a [Trigger](../types/Trigger.md) to them.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [action](#action) | [Trigger](../types/Trigger.md) | yes |
| [fork_chance](#fork-chance) | [double](../types/double.md) | yes |
| [fork_chance_increase_per_quality_level](#fork-chance-increase-per-quality-level) | [double](../types/double.md) | yes |
| [jump_delay_ticks](#jump-delay-ticks) | [MapTick](../types/MapTick.md) | yes |
| [max_forks](#max-forks) | [uint32](../types/uint32.md) | yes |
| [max_forks_per_jump](#max-forks-per-jump) | [uint32](../types/uint32.md) | yes |
| [max_jumps](#max-jumps) | [uint32](../types/uint32.md) | yes |
| [max_range](#max-range) | [double](../types/double.md) | yes |
| [max_range_per_jump](#max-range-per-jump) | [double](../types/double.md) | yes |

### action

**Type:** [Trigger](../types/Trigger.md) · _optional_

The trigger to apply when jumping to a new target.

### fork_chance

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Chance that a new fork will spawn after each jump. `0` for 0% chance and `1` for 100% chance.

Must be between 0 and 1.

### fork_chance_increase_per_quality_level

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0.1}`

### jump_delay_ticks

**Type:** [MapTick](../types/MapTick.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

Tick delay between each jump. `0` means that all jumps are instantaneous.

### max_forks

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `max uint32`

Maximum number of forks allowed to spawn for the entire chain.

### max_forks_per_jump

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Maximum number of forks that can spawn from a single jump.

### max_jumps

**Type:** [uint32](../types/uint32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

Max number of jumps per trigger.

### max_range

**Type:** [double](../types/double.md) · _optional_ · **Default:** `infinity`

Max distance jumps are allowed to travel away from the original target.

### max_range_per_jump

**Type:** [double](../types/double.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 5}`

Max length of jumps.
