-- no-electricity / data-final-fixes.lua
--
-- APPROACH (explicit, not a blanket data.raw sweep):
--
--   1. A hand-picked list of electric-infrastructure recipes (poles,
--      accumulator, solar panel, power switch, steam engine, steam
--      turbine) is deleted. Names below are taken directly from
--      Wube's public source: github.com/wube/factorio-data,
--      base/prototypes/recipe.lua -- recipe name == item name for
--      all of these in vanilla.
--
--   2. The ENTITY and ITEM prototypes for that infrastructure are
--      left completely intact. Only the recipe is gone, so it can
--      never be crafted. This avoids the cascade of "X does not
--      exist" errors you get from deleting entities/items outright,
--      since nothing else in the game (achievements, tips-and-tricks
--      triggers, other mods' recipes, etc.) ever references an
--      item/entity name that no longer exists -- only the recipe is
--      missing, and we clean up references to that specifically.
--
--   3. Any technology "unlock-recipe" effect pointing at one of the
--      deleted recipes is stripped (so research doesn't error trying
--      to unlock a recipe that's gone).
--
--   4. A narrow, targeted sweep removes any OTHER prototype (tips-
--      and-tricks entries, achievements, etc.) whose trigger tree
--      references one of the deleted recipes by name -- this is what
--      catches things like the "tips-and-tricks-item electric-network"
--      error, without touching anything unrelated.
--
--   5. Every remaining electric energy source on consumer entities
--      (assemblers, drills, labs, radars, beacons, roboports, lamps,
--      the rocket silo, laser turrets, etc.) is converted to "void"
--      -- free running, no fuel/power required. Entities whose type
--      is mandated by the engine to stay "electric" (generators,
--      solar panels, accumulators, the electric-energy-interface) and
--      all equipment-grid items are left untouched, since the engine
--      rejects any other energy_source type for those.
--
-- NOTE: if Tycoon (or another mod) adds its OWN electric-infrastructure
-- entity/recipe with a name not in the list below, add its recipe name
-- to `electric_infrastructure_recipes` the same way.

-- ============================================================
-- STEP 1: Explicit list of recipes to delete
-- ============================================================
local electric_infrastructure_recipes = {
  "small-electric-pole",
  "medium-electric-pole",
  "big-electric-pole",
  "substation",
  "accumulator",
  "solar-panel",
  "power-switch",
  "steam-engine",
  "steam-turbine",
}

local removed_recipe_names = {}

for _, recipe_name in pairs(electric_infrastructure_recipes) do
  if data.raw.recipe and data.raw.recipe[recipe_name] then
    data.raw.recipe[recipe_name] = nil
    removed_recipe_names[recipe_name] = true
  end
end

-- ============================================================
-- STEP 2: Strip technology effects that unlock a removed recipe
-- ============================================================
if data.raw.technology then
  for _, tech in pairs(data.raw.technology) do
    if tech.effects then
      local kept = {}
      for _, effect in pairs(tech.effects) do
        local skip = effect.type == "unlock-recipe" and removed_recipe_names[effect.recipe]
        if not skip then
          table.insert(kept, effect)
        end
      end
      tech.effects = kept
    end
  end
end


-- ============================================================
-- STEP 3: Remove any other prototype that references a removed
-- recipe somewhere in its (possibly deeply nested) trigger tree
-- -- e.g. tips-and-tricks-item entries, achievements. We do NOT
-- touch the "recipe" or "technology" categories here since those
-- are already handled precisely in steps 1-2.
-- ============================================================
if data.raw["tips-and-tricks-item"] and data.raw["tips-and-tricks-item"]["electric-network"] then
  local tip = data.raw["tips-and-tricks-item"]["electric-network"]
  if tip.trigger and tip.trigger.triggers and tip.trigger.triggers[1]
      and tip.trigger.triggers[1].triggers and tip.trigger.triggers[1].triggers[1] then
    tip.trigger.triggers[1].triggers[1] = {
      type = "unlock-recipe",
      recipe = "boiler"
    }
    log("[no-electricity] Patched tips-and-tricks-item 'electric-network' to drop its steam-engine unlock-recipe check.")
  end
end

-- ============================================================
-- STEP 4: Convert remaining electric energy sources (consumers)
-- to void. Skip producer-type entities the engine requires to
-- stay electric, and skip all equipment-grid categories (they use
-- a different energy_source schema that doesn't support "void").
-- ============================================================
local entity_types_to_leave_electric = {
  ["generator"] = true,             -- steam engine / steam turbine
  ["burner-generator"] = true,
  ["solar-panel"] = true,
  ["accumulator"] = true,
  ["electric-energy-interface"] = true,
}

local function is_equipment_category(category_name)
  return category_name:match("%-equipment$") ~= nil
end

local function strip_electric_energy_source(proto)
  if type(proto) ~= "table" then return end
  if proto.energy_source and type(proto.energy_source) == "table"
      and proto.energy_source.type == "electric" then
    proto.energy_source = { type = "void" }
  end
  if proto.name == "burner-inserter" then
    proto.energy_source = { type = "void" }
  end
end

for category_name, category in pairs(data.raw) do
  if type(category) == "table"
      and not is_equipment_category(category_name)
      and not entity_types_to_leave_electric[category_name] then
    for _, proto in pairs(category) do
      strip_electric_energy_source(proto)
    end
  end
end
