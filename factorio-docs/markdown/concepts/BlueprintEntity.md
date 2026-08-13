# BlueprintEntity

_concept_

The representation of an entity inside of a blueprint.

**Definition:** table{burner_fuel_inventory, direction, entity_number, items, mirror, name, position, quality, tags, wires}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [burner_fuel_inventory](#burner-fuel-inventory) | [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) | yes |
| [direction](#direction) | [defines.direction](../defines/defines.md) | yes |
| [entity_number](#entity-number) | [uint32](../concepts/uint32.md) |  |
| [items](#items) | array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] | yes |
| [mirror](#mirror) | [boolean](../concepts/boolean.md) | yes |
| [name](#name) | [string](../concepts/string.md) |  |
| [position](#position) | [MapPosition](../concepts/MapPosition.md) |  |
| [quality](#quality) | [string](../concepts/string.md) | yes |
| [tags](#tags) | [Tags](../concepts/Tags.md) | yes |
| [wires](#wires) | array[[BlueprintWire](../concepts/BlueprintWire.md)] | yes |

### burner_fuel_inventory

**Type:** [BlueprintInventoryWithFilters](../concepts/BlueprintInventoryWithFilters.md) · _optional_

Used by entities with a burner energy source.

### direction

**Type:** [defines.direction](../defines/defines.md) · _optional_

The direction the entity is facing. Only present for entities that can face in different directions and when the entity is not facing north.

### entity_number

**Type:** [uint32](../concepts/uint32.md)

The entity's unique identifier in the blueprint.

### items

**Type:** array[[BlueprintInsertPlan](../concepts/BlueprintInsertPlan.md)] · _optional_

The items that the entity will request when revived, if any.

### mirror

**Type:** [boolean](../concepts/boolean.md) · _optional_

Whether this entity is mirrored.

### name

**Type:** [string](../concepts/string.md)

The prototype name of the entity.

### position

**Type:** [MapPosition](../concepts/MapPosition.md)

The position of the entity.

### quality

**Type:** [string](../concepts/string.md) · _optional_

The prototype name of the entity's quality.

### tags

**Type:** [Tags](../concepts/Tags.md) · _optional_

The entity tags of the entity, if there are any.

### wires

**Type:** array[[BlueprintWire](../concepts/BlueprintWire.md)] · _optional_

Wires connected to this entity in the blueprint.
