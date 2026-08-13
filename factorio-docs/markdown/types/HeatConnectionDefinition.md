# HeatConnectionDefinition

_type_

Defines the connections for [HeatEnergySource](../types/HeatEnergySource.md) and [HeatBuffer](../types/HeatBuffer.md).

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [direction](#direction) | [defines.direction](../defines/defines.md) |  |
| [position](#position) | [MapPosition](../types/MapPosition.md) |  |

### direction

**Type:** [defines.direction](../defines/defines.md)

The "outward" direction of this heat connection. For a connection to succeed, the other heat connection must face the opposite direction (a south-facing connection needs a north-facing connection to succeed). A connection rotates with the entity.

### position

**Type:** [MapPosition](../types/MapPosition.md)

The location of the heat pipe connection, relative to the center of the entity in the north-facing direction.
