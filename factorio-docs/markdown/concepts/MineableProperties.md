# MineableProperties

_concept_

**Definition:** table{fluid_amount, minable, mining_particle, mining_time, mining_trigger, products, required_fluid, transfer_entity_health_to_products}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [fluid_amount](#fluid-amount) | [double](../concepts/double.md) | yes |
| [minable](#minable) | [boolean](../concepts/boolean.md) |  |
| [mining_particle](#mining-particle) | [string](../concepts/string.md) | yes |
| [mining_time](#mining-time) | [double](../concepts/double.md) |  |
| [mining_trigger](#mining-trigger) | array[[TriggerItem](../concepts/TriggerItem.md)] | yes |
| [products](#products) | array[[Product](../concepts/Product.md)] | yes |
| [required_fluid](#required-fluid) | [string](../concepts/string.md) | yes |
| [transfer_entity_health_to_products](#transfer-entity-health-to-products) | [boolean](../concepts/boolean.md) |  |

### fluid_amount

**Type:** [double](../concepts/double.md) · _optional_

The required fluid amount if any.

### minable

**Type:** [boolean](../concepts/boolean.md)

Is this entity mineable at all?

### mining_particle

**Type:** [string](../concepts/string.md) · _optional_

Prototype name of the particle produced when mining this entity. Will only be present if this entity produces any particle during mining.

### mining_time

**Type:** [double](../concepts/double.md)

Energy required to mine an entity.

### mining_trigger

**Type:** array[[TriggerItem](../concepts/TriggerItem.md)] · _optional_

The mining trigger if any.

### products

**Type:** array[[Product](../concepts/Product.md)] · _optional_

Products obtained by mining this entity.

### required_fluid

**Type:** [string](../concepts/string.md) · _optional_

The prototype name of the required fluid if any.

### transfer_entity_health_to_products

**Type:** [boolean](../concepts/boolean.md)
