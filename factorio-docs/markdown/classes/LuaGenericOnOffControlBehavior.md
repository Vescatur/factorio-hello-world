# LuaGenericOnOffControlBehavior

_class_ · **abstract**

**Inherits from:** [LuaControlBehavior](../classes/LuaControlBehavior.md)

An abstract base class for behaviors that support switching the entity on or off based on some condition.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [circuit_condition](#circuit-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) | yes |
| [circuit_enable_disable](#circuit-enable-disable) | [boolean](../concepts/boolean.md) |  |
| [connect_to_logistic_network](#connect-to-logistic-network) | [boolean](../concepts/boolean.md) |  |
| [disabled](#disabled) | [boolean](../concepts/boolean.md) |  |
| [logistic_condition](#logistic-condition) | [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) | yes |

### circuit_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · _optional_

The circuit condition. Writing `nil` clears the circuit condition.

**Example:**

```
-- Tell an entity to be active (for example a lamp to be lit) when it receives a
-- circuit signal of more than 4 chain signals.
a_behavior.circuit_condition = {
  comparator=">",
  first_signal={type="item", name="rail-chain-signal"},
  constant=4
}
```

### circuit_enable_disable

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if this entity enable/disable state is controlled by circuit condition

### connect_to_logistic_network

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

`true` if this should connect to the logistic network.

### disabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the entity is currently disabled because of the control behavior.

### logistic_condition

**Read:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · **Write:** [CircuitConditionDefinition](../concepts/CircuitConditionDefinition.md) · _optional_

The logistic condition. Writing `nil` clears the logistic condition.

**Example:**

```
-- Tell an entity to be active (for example a lamp to be lit) when the logistics
-- network it's connected to has more than four chain signals.
a_behavior.logistic_condition = {
  comparator=">",
  first_signal={type="item", name="rail-chain-signal"},
  constant=4
}
```
