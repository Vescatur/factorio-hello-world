# CargoPodPrototype

_prototype_

**Prototype type string:** `type = "cargo-pod"`

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [default_graphic](#default-graphic) | [ProcessionGraphic](../types/ProcessionGraphic.md) | yes |
| [default_shadow_graphic](#default-shadow-graphic) | [ProcessionGraphic](../types/ProcessionGraphic.md) | yes |
| [impact_trigger](#impact-trigger) | [Trigger](../types/Trigger.md) | yes |
| [inventory_size](#inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) |  |
| [procession_audio_catalogue](#procession-audio-catalogue) | [ProcessionAudioCatalogue](../types/ProcessionAudioCatalogue.md) | yes |
| [procession_graphic_catalogue](#procession-graphic-catalogue) | [ProcessionGraphicCatalogue](../types/ProcessionGraphicCatalogue.md) | yes |
| [selection_priority](#selection-priority) | [uint8](../types/uint8.md) | yes |
| [shadow_slave_entity](#shadow-slave-entity) | [EntityID](../types/EntityID.md) | yes |
| [spawned_container](#spawned-container) | [EntityID](../types/EntityID.md) |  |

### default_graphic

**Type:** [ProcessionGraphic](../types/ProcessionGraphic.md) · _optional_

Has to be of type 'pod-catalogue'.

### default_shadow_graphic

**Type:** [ProcessionGraphic](../types/ProcessionGraphic.md) · _optional_

Has to be of type 'pod-catalogue'.

### impact_trigger

**Type:** [Trigger](../types/Trigger.md) · _optional_

### inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md)

### procession_audio_catalogue

**Type:** [ProcessionAudioCatalogue](../types/ProcessionAudioCatalogue.md) · _optional_

### procession_graphic_catalogue

**Type:** [ProcessionGraphicCatalogue](../types/ProcessionGraphicCatalogue.md) · _optional_

### selection_priority

**Type:** [uint8](../types/uint8.md) · _optional_ · _overrides parent_ · **Default:** `{'complex_type': 'literal', 'value': 20}`

The entity with the higher number is selectable before the entity with the lower number.

The value `0` will be treated the same as `nil`.

### shadow_slave_entity

**Type:** [EntityID](../types/EntityID.md) · _optional_

### spawned_container

**Type:** [EntityID](../types/EntityID.md)
