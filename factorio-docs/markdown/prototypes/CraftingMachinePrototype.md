# CraftingMachinePrototype

_prototype_ · **abstract**

**Inherits from:** [EntityWithOwnerPrototype](../prototypes/EntityWithOwnerPrototype.md)

The abstract basis of the assembling machines and furnaces. Contains the properties that both of them have.

Note that a crafting machine cannot be rotated unless it has at least one of the following: a fluid box, a heat energy source, a fluid energy source, or a non-square collision box. Crafting machines with non-square collision boxes can only be rotated before placement, not after.

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [allowed_effects](#allowed-effects) | [EffectTypeLimitation](../types/EffectTypeLimitation.md) | yes |
| [allowed_module_categories](#allowed-module-categories) | array[[ModuleCategoryID](../types/ModuleCategoryID.md)] | yes |
| [crafting_categories](#crafting-categories) | array[[RecipeCategoryID](../types/RecipeCategoryID.md)] |  |
| [crafting_speed](#crafting-speed) | [double](../types/double.md) |  |
| [crafting_speed_quality_multiplier](#crafting-speed-quality-multiplier) | dictionary[[QualityID](../types/QualityID.md) → [double](../types/double.md)] | yes |
| [draw_entity_info_icon_background](#draw-entity-info-icon-background) | [boolean](../types/boolean.md) | yes |
| [effect_receiver](#effect-receiver) | [EffectReceiver](../types/EffectReceiver.md) | yes |
| [energy_source](#energy-source) | [EnergySource](../types/EnergySource.md) |  |
| [energy_usage](#energy-usage) | [Energy](../types/Energy.md) |  |
| [energy_usage_quality_multiplier](#energy-usage-quality-multiplier) | dictionary[[QualityID](../types/QualityID.md) → [double](../types/double.md)] | yes |
| [fast_transfer_modules_into_module_slots_only](#fast-transfer-modules-into-module-slots-only) | [boolean](../types/boolean.md) | yes |
| [fluid_boxes](#fluid-boxes) | array[[FluidBox](../types/FluidBox.md)] | yes |
| [graphics_set](#graphics-set) | [CraftingMachineGraphicsSet](../types/CraftingMachineGraphicsSet.md) | yes |
| [graphics_set_flipped](#graphics-set-flipped) | [CraftingMachineGraphicsSet](../types/CraftingMachineGraphicsSet.md) | yes |
| [ignore_output_full](#ignore-output-full) | [boolean](../types/boolean.md) | yes |
| [match_animation_speed_to_activity](#match-animation-speed-to-activity) | [boolean](../types/boolean.md) | yes |
| [module_slots](#module-slots) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [module_slots_quality_bonus](#module-slots-quality-bonus) | dictionary[[QualityID](../types/QualityID.md) → [ItemStackIndex](../types/ItemStackIndex.md)] | yes |
| [perceived_performance](#perceived-performance) | [PerceivedPerformance](../types/PerceivedPerformance.md) | yes |
| [production_health_effect](#production-health-effect) | [ProductionHealthEffect](../types/ProductionHealthEffect.md) | yes |
| [quality_affects_energy_usage](#quality-affects-energy-usage) | [boolean](../types/boolean.md) | yes |
| [quality_affects_module_slots](#quality-affects-module-slots) | [boolean](../types/boolean.md) | yes |
| [return_ingredients_on_change](#return-ingredients-on-change) | [boolean](../types/boolean.md) | yes |
| [show_recipe_icon](#show-recipe-icon) | [boolean](../types/boolean.md) | yes |
| [show_recipe_icon_on_map](#show-recipe-icon-on-map) | [boolean](../types/boolean.md) | yes |
| [trash_inventory_size](#trash-inventory-size) | [ItemStackIndex](../types/ItemStackIndex.md) | yes |
| [use_mirroring](#use-mirroring) | [boolean](../types/boolean.md) | yes |
| [vector_to_place_result](#vector-to-place-result) | [Vector](../types/Vector.md) | yes |

### allowed_effects

**Type:** [EffectTypeLimitation](../types/EffectTypeLimitation.md) · _optional_ · **Default:** `No effects are allowed`

Sets the [modules](../prototypes/ModulePrototype.md) and [beacon](../prototypes/BeaconPrototype.md) effects that are allowed to be used on this machine.

### allowed_module_categories

**Type:** array[[ModuleCategoryID](../types/ModuleCategoryID.md)] · _optional_ · **Default:** `All module categories are allowed`

Sets the [module categories](../prototypes/ModuleCategory.md) that are allowed to be inserted into this machine.

### crafting_categories

**Type:** array[[RecipeCategoryID](../types/RecipeCategoryID.md)]

A list of [recipe categories](../prototypes/RecipeCategory.md) this crafting machine can use.

**Example:**

```
crafting_categories = {"crafting", "smelting"}
```

### crafting_speed

**Type:** [double](../types/double.md)

How fast this crafting machine can craft. 1 means that for example a 1 second long recipe take 1 second to craft. 0.5 means it takes 2 seconds, and 2 means it takes 0.5 seconds.

Crafting speed has to be positive.

### crafting_speed_quality_multiplier

**Type:** dictionary[[QualityID](../types/QualityID.md) → [double](../types/double.md)] · _optional_

Each value must be >= 0.01.

If value is not provided for a quality, then [QualityPrototype::crafting_machine_speed_multiplier](../prototypes/QualityPrototype.md#crafting-machine-speed-multiplier) will be used as a speed multiplier instead.

### draw_entity_info_icon_background

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the "alt-mode icon" should have a black background.

### effect_receiver

**Type:** [EffectReceiver](../types/EffectReceiver.md) · _optional_

### energy_source

**Type:** [EnergySource](../types/EnergySource.md)

Defines how the crafting machine is powered.

When using an electric energy source and `drain` is not specified, it will be set to `energy_usage ÷ 30` automatically.

### energy_usage

**Type:** [Energy](../types/Energy.md)

Sets how much energy this machine uses while crafting. Energy usage has to be positive.

**Example:**

```
energy_usage = "90kW"
```

### energy_usage_quality_multiplier

**Type:** dictionary[[QualityID](../types/QualityID.md) → [double](../types/double.md)] · _optional_

Each value must be >= 0.01.

If value is not provided for a quality, then [QualityPrototype::crafting_machine_energy_usage_multiplier](../prototypes/QualityPrototype.md#crafting-machine-energy-usage-multiplier) will be used as an energy usage multiplier instead.

Does nothing if [CraftingMachinePrototype::quality_affects_energy_usage](../prototypes/CraftingMachinePrototype.md#quality-affects-energy-usage) is not set.

### fast_transfer_modules_into_module_slots_only

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### fluid_boxes

**Type:** array[[FluidBox](../types/FluidBox.md)] · _optional_

The crafting machine's fluid boxes. If an assembling machine has fluid boxes *and* [AssemblingMachinePrototype::fluid_boxes_off_when_no_fluid_recipe](../prototypes/AssemblingMachinePrototype.md#fluid-boxes-off-when-no-fluid-recipe) is true, the assembling machine can only be rotated when a recipe consuming or producing fluid is set, or if it has one of the other properties listed at the top of this page.

For assembling machines, any [filters](../types/FluidBox.md#filter) set on the fluidboxes are ignored.

**Example:**

```
fluid_boxes =
{
  {
    production_type = "input",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 1000,
    pipe_connections = {{ flow_direction = "input", direction = defines.direction.north, position = {0, -1} }},
    secondary_draw_orders = { north = -1 }
  },
  {
    production_type = "output",
    pipe_picture = assembler2pipepictures(),
    pipe_covers = pipecoverspictures(),
    volume = 1000,
    pipe_connections = {{ flow_direction = "output", direction = defines.direction.south, position = {0, 1} }},
    secondary_draw_orders = { north = -1 }
  },
}
```

### graphics_set

**Type:** [CraftingMachineGraphicsSet](../types/CraftingMachineGraphicsSet.md) · _optional_

### graphics_set_flipped

**Type:** [CraftingMachineGraphicsSet](../types/CraftingMachineGraphicsSet.md) · _optional_

### ignore_output_full

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

### match_animation_speed_to_activity

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the speed of the animation and working visualization should be based on the machine's speed (boosted or slowed by modules).

### module_slots

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

The number of module slots in this machine.

### module_slots_quality_bonus

**Type:** dictionary[[QualityID](../types/QualityID.md) → [ItemStackIndex](../types/ItemStackIndex.md)] · _optional_

If value is not provided for a quality, then [QualityPrototype::crafting_machine_module_slots_bonus](../prototypes/QualityPrototype.md#crafting-machine-module-slots-bonus) will be used as a module slots bonus instead.

Does nothing if [CraftingMachinePrototype::quality_affects_module_slots](../prototypes/CraftingMachinePrototype.md#quality-affects-module-slots) is not set.

### perceived_performance

**Type:** [PerceivedPerformance](../types/PerceivedPerformance.md) · _optional_

Affects animation speed.

### production_health_effect

**Type:** [ProductionHealthEffect](../types/ProductionHealthEffect.md) · _optional_

### quality_affects_energy_usage

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

When set, [QualityPrototype::crafting_machine_energy_usage_multiplier](../prototypes/QualityPrototype.md#crafting-machine-energy-usage-multiplier) will be applied to energy_usage.

### quality_affects_module_slots

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

If set, [QualityPrototype::crafting_machine_module_slots_bonus](../prototypes/QualityPrototype.md#crafting-machine-module-slots-bonus) will be added to module slots count.

### return_ingredients_on_change

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Controls whether the ingredients of an in-progress recipe are destroyed when mining the machine/changing the recipe. If set to true, the ingredients do not get destroyed. This affects only the ingredients of the recipe that is currently in progress, so those that visually have already been consumed while their resulting product has not yet been produced.

### show_recipe_icon

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the "alt-mode icon" should be drawn at all.

### show_recipe_icon_on_map

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': True}`

Whether the recipe icon should be shown on the map.

### trash_inventory_size

**Type:** [ItemStackIndex](../types/ItemStackIndex.md) · _optional_

### use_mirroring

**Type:** [boolean](../types/boolean.md) · _optional_

Defaults to true if `vector_to_place_result` is given.

### vector_to_place_result

**Type:** [Vector](../types/Vector.md) · _optional_
