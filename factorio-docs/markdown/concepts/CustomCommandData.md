# CustomCommandData

_concept_

**Definition:** table{name, parameter, player_index, tick}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [string](../concepts/string.md) |  |
| [parameter](#parameter) | [string](../concepts/string.md) | yes |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) | yes |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [string](../concepts/string.md)

The name of the command.

### parameter

**Type:** [string](../concepts/string.md) · _optional_

The parameter passed after the command, if there is one.

### player_index

**Type:** [uint32](../concepts/uint32.md) · _optional_

The player who issued the command, or `nil` if it was issued from the server console.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

The tick the command was used in.
