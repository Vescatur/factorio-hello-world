# LuaTechnology

_class_

One research item.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [enabled](#enabled) | [boolean](../concepts/boolean.md) |  |
| [force](#force) | [LuaForce](../classes/LuaForce.md) |  |
| [level](#level) | [uint32](../concepts/uint32.md) |  |
| [localised_description](#localised-description) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [localised_name](#localised-name) | [LocalisedString](../concepts/LocalisedString.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [order](#order) | [string](../concepts/string.md) |  |
| [prerequisites](#prerequisites) | dictionary[[string](../concepts/string.md) → [LuaTechnology](../classes/LuaTechnology.md)] |  |
| [prototype](#prototype) | [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) |  |
| [research_unit_count](#research-unit-count) | [uint32](../concepts/uint32.md) |  |
| [research_unit_count_formula](#research-unit-count-formula) | [MathExpression](../concepts/MathExpression.md) | yes |
| [research_unit_energy](#research-unit-energy) | [double](../concepts/double.md) |  |
| [research_unit_ingredients](#research-unit-ingredients) | array[[ResearchIngredient](../concepts/ResearchIngredient.md)] |  |
| [researched](#researched) | [boolean](../concepts/boolean.md) |  |
| [saved_progress](#saved-progress) | [double](../concepts/double.md) |  |
| [successors](#successors) | dictionary[[string](../concepts/string.md) → [LuaTechnology](../classes/LuaTechnology.md)] |  |
| [upgrade](#upgrade) | [boolean](../concepts/boolean.md) |  |
| [valid](#valid) | [boolean](../concepts/boolean.md) |  |
| [visible_when_disabled](#visible-when-disabled) | [boolean](../concepts/boolean.md) |  |

### enabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Can this technology be researched?

### force

**Read:** [LuaForce](../classes/LuaForce.md) · _read-only_

The force this technology belongs to.

### level

**Read:** [uint32](../concepts/uint32.md) · **Write:** [uint32](../concepts/uint32.md)

The current level of this technology. For level-based technology writing to this is the same as researching the technology to the previous level. Writing the level will set [LuaTechnology::enabled](../classes/LuaTechnology.md#enabled) to `true`.

### localised_description

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

### localised_name

**Read:** [LocalisedString](../concepts/LocalisedString.md) · _read-only_

Localised name of this technology.

### name

**Read:** [string](../concepts/string.md) · _read-only_

Name of this technology.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### order

**Read:** [string](../concepts/string.md) · _read-only_

The string used to alphabetically sort these prototypes. It is a simple string that has no additional semantic meaning.

### prerequisites

**Read:** dictionary[[string](../concepts/string.md) → [LuaTechnology](../classes/LuaTechnology.md)] · _read-only_

Prerequisites of this technology. The result maps technology name to the [LuaTechnology](../classes/LuaTechnology.md) object.

### prototype

**Read:** [LuaTechnologyPrototype](../classes/LuaTechnologyPrototype.md) · _read-only_

The prototype of this technology.

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

### researched

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

Has this technology been researched? Switching from `false` to `true` will trigger the technology advancement perks; switching from `true` to `false` will reverse them.

### saved_progress

**Read:** [double](../concepts/double.md) · **Write:** [double](../concepts/double.md)

Saved technology progress fraction as a value in range `[0, 1)`. 0 means there is no saved progress.

### successors

**Read:** dictionary[[string](../concepts/string.md) → [LuaTechnology](../classes/LuaTechnology.md)] · _read-only_

Successors of this technology, i.e. technologies which have this technology as a prerequisite.

### upgrade

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this an upgrade-type research?

### valid

**Read:** [boolean](../concepts/boolean.md) · _read-only_

Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.

### visible_when_disabled

**Read:** [boolean](../concepts/boolean.md) · **Write:** [boolean](../concepts/boolean.md)

If this technology will be visible in the research GUI even though it is disabled.

## Methods

| Method | Summary |
| --- | --- |
| [reload](#reload) | Reload this technology from its prototype. |
| [research_recursive](#research-recursive) | Research this technology and all of its prerequisites recursively. |

### reload

`reload()`

Reload this technology from its prototype.

### research_recursive

`research_recursive()`

Research this technology and all of its prerequisites recursively.
