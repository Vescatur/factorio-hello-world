# on_udp_packet_received

_event_

Called when new packets are processed by [LuaHelpers::recv_udp](../classes/LuaHelpers.md#recv-udp).

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [payload](#payload) | [string](../concepts/string.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [source_port](#source-port) | [uint16](../concepts/uint16.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### payload

**Type:** [string](../concepts/string.md)

The packet data

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player index whose instance received this packet, or 0 if received on the server

### source_port

**Type:** [uint16](../concepts/uint16.md)

The source port the packet was received from

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
