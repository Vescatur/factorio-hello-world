-- remove_electricity.lua
--
-- Nothing in Tycoon consumes energy. There is no power network to build and no
-- fuel to burn: every machine runs free, so the factory is a routing puzzle
-- rather than a power-budget one.
--
-- APPROACH (explicit, not a blanket data.raw sweep):
--
--   1. A hand-picked list of electric-infrastructure recipes is deleted and the
--      matching items hidden. Names are taken directly from Wube's public
--      source: base/prototypes/recipe.lua -- recipe name == item name for all
--      of these in vanilla.
--
--   2. The ENTITY and ITEM prototypes are left intact. Only the recipe is gone,
--      so it can never be crafted. This avoids the cascade of "X does not
--      exist" errors you get from deleting entities/items outright.
--
--   3. Technology effects pointing at a deleted recipe are stripped, the two
--      now-empty distribution technologies are deleted, and anything else that
--      referenced what we removed -- the electric-network tips-and-tricks
--      entry, achievements -- goes with them.
--
--   4. Every remaining energy source on a consumer entity is converted to
--      "void": the electric ones (assemblers, drills, labs, radars, beacons,
--      roboports, lamps, the rocket silo) and the burner ones (furnaces, the
--      car, the locomotive) alike. Entities whose type the engine mandates stay
--      "electric" -- generators, solar panels, accumulators, the
--      electric-energy-interface -- and all equipment-grid items are left
--      untouched, since the engine rejects any other energy_source type there.
--
-- WHAT SURVIVES, AND WHY:
--
--   * solar-panel and accumulator -- `satellite` needs 100 of each, so they are
--     ingredients on the rocket path and their recipes have to stay. Placing one
--     does nothing: there is no network for it to feed, and the engine forbids
--     giving either a non-electric energy source. They are components that
--     happen to look like buildings.
--
-- NOTE: if Tycoon (or another mod) adds its OWN electric-infrastructure
-- entity/recipe with a name not in the list below, add its recipe name to
-- `electric_infrastructure_recipes` the same way.
local prototypes = require("lib.prototypes")

-- ============================================================
-- STEP 1: Delete the recipes and hide the items
-- ============================================================
local electric_infrastructure_recipes = {
    "small-electric-pole",
    "medium-electric-pole",
    "big-electric-pole",
    "substation",
    "power-switch",
    "steam-engine",
    "steam-turbine",
    -- The boiler's only product is steam, and steam's only consumers were the
    -- two generators above and the heat exchanger, which goes with the uranium
    -- chain in remove_uranium.lua. It has nothing left to feed.
    "boiler",
}

local removed_recipe_names, removed_recipe_count =
    prototypes.delete_recipes(electric_infrastructure_recipes)
local hidden_item_count = prototypes.hide_items(electric_infrastructure_recipes)

-- ============================================================
-- STEP 2: Delete the technologies that are now empty
--
-- Distribution-2 only ever unlocked the substation. Distribution-1 unlocked the
-- medium and big poles plus `iron-stick`, and circuit-network, railway and
-- concrete all unlock the iron stick too, so nothing is lost by deleting it.
-- `electric-energy-accumulators` required it and re-links through to
-- steel-processing.
--
-- `solar-energy` and `electric-energy-accumulators` are deliberately NOT here:
-- their recipes survive as satellite ingredients, so the technologies still
-- unlock something real.
-- ============================================================
local empty_technologies = {
    "electric-energy-distribution-1",
    "electric-energy-distribution-2",
}

local deleted_technologies, deleted_technology_count =
    prototypes.delete_technologies(empty_technologies)
-- The electric-network tip triggers on unlocking the steam engine, which is now
-- a recipe that does not exist. This sweep is what removes it.
local deleted_dependents =
    prototypes.delete_dangling_dependents(deleted_technologies, removed_recipe_names)
local relinked_technologies = prototypes.relink_prerequisites(deleted_technologies)

-- ============================================================
-- STEP 3: Convert every remaining energy source to void
--
-- Skip producer-type entities the engine requires to stay electric, and skip
-- all equipment-grid categories (they use a different energy_source schema that
-- does not support "void").
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

local voided_sources = 0

for category_name, category in pairs(data.raw) do
    if type(category) == "table"
        and not is_equipment_category(category_name)
        and not entity_types_to_leave_electric[category_name] then
        for _, proto in pairs(category) do
            if type(proto) == "table" and type(proto.energy_source) == "table" then
                local source = proto.energy_source.type
                if source == "electric" or source == "burner" then
                    proto.energy_source = { type = "void" }
                    voided_sources = voided_sources + 1
                end
            end
        end
    end
end

log("[remove-electricity] Deleted " .. removed_recipe_count .. " infrastructure recipe(s), "
    .. deleted_technology_count .. " technolog(ies) and " .. deleted_dependents
    .. " dependent prototype(s), hid " .. hidden_item_count .. " item(s), re-linked "
    .. relinked_technologies .. " technolog(ies) and voided " .. voided_sources
    .. " energy source(s).")
