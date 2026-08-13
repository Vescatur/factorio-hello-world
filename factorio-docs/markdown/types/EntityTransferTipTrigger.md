# EntityTransferTipTrigger

_type_

**Inherits from:** [CountBasedTipTrigger](../types/CountBasedTipTrigger.md)

Triggered when a player fast-transfers something to or from an entity, similar to the [on_player_fast_transferred](../events/on_player_fast_transferred.md) event.

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [transfer](#transfer) | `"in"` ∣ `"out"` | yes |
| [type](#type) | `"entity-transfer"` |  |

### transfer

**Type:** `"in"` ∣ `"out"` · _optional_ · **Default:** `any transfer`

Whether the transfer should be into or out of the player.

### type

**Type:** `"entity-transfer"`
