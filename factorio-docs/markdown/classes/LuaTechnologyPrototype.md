# LuaTechnologyPrototype

_class_

**Inherits from:** [LuaPrototypeBase](../classes/LuaPrototypeBase.md)

A Technology prototype.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [allows_productivity](#allows-productivity) | [boolean](../concepts/boolean.md) |  |
| [effects](#effects) | array[[TechnologyModifier](../concepts/TechnologyModifier.md)] |  |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [essential](#essential) | [boolean](../concepts/boolean.md) |  |
| [factoriopedia_alternative](#factoriopedia-alternative) | [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) | yes |
| [ignore_tech_cost_multiplier](#ignore-tech-cost-multiplier) | [boolean](../concepts/boolean.md) |  |
| [level](#level) | [uint32](../concepts/uint32.md) |  |
| [max_level](#max-level) | [uint32](../concepts/uint32.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [prerequisites](#prerequisites) | dictionary[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] |  |
| [research_trigger](#research-trigger) | [ResearchTrigger](../concepts/ResearchTrigger.md) | yes |
| [research_unit_count](#research-unit-count) | [uint32](../concepts/uint32.md) |  |
| [research_unit_count_formula](#research-unit-count-formula) | [MathExpression](../concepts/MathExpression.md) | yes |
| [research_unit_energy](#research-unit-energy) | [double](../concepts/double.md) |  |
| [research_unit_ingredients](#research-unit-ingredients) | array[[ResearchIngredient](../concepts/ResearchIngredient.md)] |  |
| [successors](#successors) | dictionary[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] |  |
| [upgrade](#upgrade) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [visible_when_disabled](#visible-when-disabled) | [boolean](../concepts/boolean.md) |  |

### allows_productivity

**Read:** [boolean](../concepts/boolean.md) · _read-only_

### effects

**Read:** array[[TechnologyModifier](../concepts/TechnologyModifier.md)] · _read-only_

Effects applied when this technology is researched.

### enabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this technology prototype is enabled by default (enabled at the beginning of a game).

### essential

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this technology prototype is essential, meaning it is shown in the condensed technology graph.

### factoriopedia_alternative

**Read:** [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) · _read-only_ · _optional_

An alternative prototype that will be used to display info about this prototype in Factoriopedia.

### ignore_tech_cost_multiplier

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this technology ignores the technology cost multiplier setting.

[LuaTechnologyPrototype::research_unit_count](../classes/LuaTechnologyPrototype.md#research-unit-count) will already take this setting into account.

### level

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The level of this research.

### max_level

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The max level of this research.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### prerequisites

**Read:** dictionary[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] · _read-only_

Prerequisites of this technology. The result maps technology name to the [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) object.

### research_trigger

**Read:** [ResearchTrigger](../concepts/ResearchTrigger.md) · _read-only_ · _optional_

The trigger that will research this technology if any.

### research_unit_count

**Read:** [uint32](../concepts/uint32.md) · _read-only_

The number of research units required for this technology.

This is multiplied by the current research cost multiplier, unless [LuaTechnologyPrototype::ignore_tech_cost_multiplier](../classes/LuaTechnologyPrototype.md#ignore-tech-cost-multiplier) is `true`.

### research_unit_count_formula

**Read:** [MathExpression](../concepts/MathExpression.md) · _read-only_ · _optional_

The count formula, if this research has any. See [TechnologyUnit::count_formula](../types/TechnologyUnit.md#count-formula) for details.

### research_unit_energy

**Read:** [double](../concepts/double.md) · _read-only_

Amount of energy required to finish a unit of research.

### research_unit_ingredients

**Read:** array[[ResearchIngredient](../concepts/ResearchIngredient.md)] · _read-only_

The types of ingredients that labs will require to research this technology.

### successors

**Read:** dictionary[[string](../concepts/string.md) → [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md)] · _read-only_

Successors of this technology, i.e. technologies which have this technology as a prerequisite.

### upgrade

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If the is technology prototype is an upgrade to some other technology.

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### visible_when_disabled

**Read:** [boolean](../concepts/boolean.md) · _read-only_

If this technology will be visible in the research GUI even though it is disabled.
