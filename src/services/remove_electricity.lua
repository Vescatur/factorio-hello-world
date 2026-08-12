-- no-electricity / data-final-fixes.lua
--
-- Runs in the "final fixes" stage, after every other mod has finished
-- adding/editing prototypes, so this also catches electric entities
-- added by other mods (as long as those mods load before this one).
--
-- What it does:
--   1. Deletes electric infrastructure entities completely:
--      power poles, accumulators, solar panels, power switches,
--      electric energy interfaces.
--   2. Deletes the items that place those entities.
--   3. Deletes recipes that produce those items.
--   4. Strips "unlock-recipe" technology effects that pointed at a
--      recipe we just deleted (so techs don't error on a missing recipe).
--   5. Converts every remaining electric energy source in the game
--      (assemblers, drills, labs, radars, beacons, roboports, lamps,
--      the rocket silo, etc.) into a "void" energy source, i.e. it
--      runs with no fuel/power requirement at all.
 
-- ============================================================
-- STEP 1: Entity types to remove completely
-- ============================================================
local entity_types_to_remove = {
  ["electric-pole"] = true,
  ["accumulator"] = true,
  ["solar-panel"] = true,
  ["power-switch"] = true,
  ["electric-energy-interface"] = true,
  -- These two types generate electricity (steam engine, steam turbine,
  -- and any modded equivalents like Tycoon's generator). The engine
  -- hardcodes them to require an "electric" energy source, so they
  -- can't be converted to "void" like consumers can -- with the grid
  -- gone they have no purpose, so remove them outright.
  ["generator"] = true,
  ["burner-generator"] = true,
}
 
local removed_entity_names = {}
 
for type_name in pairs(entity_types_to_remove) do
  if data.raw[type_name] then
    for name, _ in pairs(data.raw[type_name]) do
      removed_entity_names[name] = true
    end
  end
end
--[[
 
-- ============================================================
-- STEP 2: Items whose place_result is one of those entities
-- ============================================================
local removed_item_names = {}
 
for _, item_type in pairs({ "item", "item-with-entity-data" }) do
  if data.raw[item_type] then
    for item_name, item in pairs(data.raw[item_type]) do
      if item.place_result and removed_entity_names[item.place_result] then
        removed_item_names[item_name] = true
      end
    end
  end
end
 
-- ============================================================
-- STEP 3: Recipes that produce OR consume those items.
-- (A recipe that needs a deleted item as an ingredient is just
-- as broken as one that outputs a deleted item -- both leave a
-- dangling item reference that crashes on load.)
-- ============================================================
local removed_recipe_names = {}
 
local function item_name_of(entry)
  -- Handles both the modern {type="item", name=..., amount=...} format
  -- and the older shorthand {"item-name", amount} array format.
  return entry.name or entry[1]
end
 
local function recipe_produces_removed_item(recipe)
  if recipe.result and removed_item_names[recipe.result] then
    return true
  end
  if recipe.results then
    for _, result in pairs(recipe.results) do
      local rname = item_name_of(result)
      if rname and removed_item_names[rname] then
        return true
      end
    end
  end
  return false
end
 
local function recipe_consumes_removed_item(recipe)
  if recipe.ingredients then
    for _, ingredient in pairs(recipe.ingredients) do
      local iname = item_name_of(ingredient)
      if iname and removed_item_names[iname] then
        return true
      end
    end
  end
  return false
end
 
if data.raw.recipe then
  for recipe_name, recipe in pairs(data.raw.recipe) do
    if recipe_produces_removed_item(recipe) or recipe_consumes_removed_item(recipe) then
      removed_recipe_names[recipe_name] = true
    end
  end
end
 
-- ============================================================
-- STEP 4: Strip technology effects that unlock a removed recipe
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
-- STEP 5: Actually delete recipes, items, and entities
-- ============================================================
for recipe_name in pairs(removed_recipe_names) do
  data.raw.recipe[recipe_name] = nil
end
 
for _, item_type in pairs({ "item", "item-with-entity-data" }) do
  if data.raw[item_type] then
    for item_name in pairs(removed_item_names) do
      --data.raw[item_type][item_name] = nil
    end
  end
end
 
for type_name in pairs(entity_types_to_remove) do
  --data.raw[type_name] = nil We keep the entity itself, but we remove the items and recipes that place it, so the entity is effectively gone from the game.
end
 
-- ============================================================
-- STEP 6: Convert every remaining electric energy source to void
-- (free running, no fuel/power required)
-- ============================================================
local function strip_electric_energy_source(proto)
  if type(proto) ~= "table" then return end
 
  if proto.energy_source and type(proto.energy_source) == "table"
      and proto.energy_source.type == "electric" then
    proto.energy_source = { type = "void" }
  end
end
 
-- Equipment-grid prototypes (power armor pieces) use a different
-- energy_source schema (EquipmentEnergySource: usage_priority,
-- buffer_capacity, input/output_flow_limit, etc.) that doesn't
-- support type="void" at all. They're also a separate, self-
-- contained power system (per-item grid), not the world electric
-- network, so they're intentionally left untouched here.
--
-- Every vanilla and modded equipment-grid prototype type follows
-- the "*-equipment" naming convention (battery-equipment,
-- roboport-equipment, electric-energy-interface-equipment, any
-- custom one a mod like Tycoon adds, etc.), so match on that
-- suffix instead of hardcoding each name -- avoids having to add
-- a new exception every time a different mod's equipment surfaces.
local function is_equipment_category(category_name)
  return category_name:match("%-equipment$") ~= nil
end
 
for category_name, category in pairs(data.raw) do
  if type(category) == "table" and not is_equipment_category(category_name) and entity_types_to_remove[category_name]==false then
    for _, proto in pairs(category) do
      strip_electric_energy_source(proto)
    end
  end
end

]]