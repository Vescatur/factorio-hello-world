# on_market_item_purchased

_event_

Called after a player purchases some offer from a `market` entity.

## Event data

| Name | Type | Optional |
| --- | --- | --- |
| [count](#count) | [uint32](../concepts/uint32.md) |  |
| [market](#market) | [LuaEntity](../classes/LuaEntity.md) |  |
| [name](#name) | [defines.events](../defines/defines.md) |  |
| [offer_index](#offer-index) | [uint32](../concepts/uint32.md) |  |
| [player_index](#player-index) | [uint32](../concepts/uint32.md) |  |
| [tick](#tick) | [MapTick](../concepts/MapTick.md) |  |

### count

**Type:** [uint32](../concepts/uint32.md)

The amount of offers purchased.

### market

**Type:** [LuaEntity](../classes/LuaEntity.md)

The market entity.

### name

**Type:** [defines.events](../defines/defines.md)

Identifier of the event.

### offer_index

**Type:** [uint32](../concepts/uint32.md)

The index of the offer purchased.

### player_index

**Type:** [uint32](../concepts/uint32.md)

The player who did the purchasing.

### tick

**Type:** [MapTick](../concepts/MapTick.md)

Tick the event was generated.
