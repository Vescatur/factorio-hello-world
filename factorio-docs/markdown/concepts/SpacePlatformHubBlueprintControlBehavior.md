# SpacePlatformHubBlueprintControlBehavior

_concept_

**Definition:** table{damage_taken_signal, input_networks, output_networks, read_contents, read_damage_taken, read_moving_from, read_moving_to, read_speed, send_to_platform, set_requests, speed_signal}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [damage_taken_signal](#damage-taken-signal) | [SignalID](../concepts/SignalID.md) | yes |
| [input_networks](#input-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [output_networks](#output-networks) | [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) | yes |
| [read_contents](#read-contents) | [boolean](../concepts/boolean.md) | yes |
| [read_damage_taken](#read-damage-taken) | [boolean](../concepts/boolean.md) | yes |
| [read_moving_from](#read-moving-from) | [boolean](../concepts/boolean.md) | yes |
| [read_moving_to](#read-moving-to) | [boolean](../concepts/boolean.md) | yes |
| [read_speed](#read-speed) | [boolean](../concepts/boolean.md) | yes |
| [send_to_platform](#send-to-platform) | [boolean](../concepts/boolean.md) | yes |
| [set_requests](#set-requests) | [boolean](../concepts/boolean.md) | yes |
| [speed_signal](#speed-signal) | [SignalID](../concepts/SignalID.md) | yes |

### damage_taken_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_

### input_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### output_networks

**Type:** [CircuitNetworkSelection](../concepts/CircuitNetworkSelection.md) · _optional_

### read_contents

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

### read_damage_taken

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_moving_from

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_moving_to

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### read_speed

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### send_to_platform

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `true`.

### set_requests

**Type:** [boolean](../concepts/boolean.md) · _optional_

Defaults to `false`.

### speed_signal

**Type:** [SignalID](../concepts/SignalID.md) · _optional_
