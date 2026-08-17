-- remove_electricity.lua -- nothing consumes energy: no power network to build and
-- no fuel to burn, so the factory is a routing puzzle rather than a power budget.
--
-- Recipe deleted, item and entity prototypes kept. Deleting the entities outright
-- cascades into "X does not exist" errors from everything that names them.
--
-- solar-panel and accumulator keep their recipes because `satellite` needs 100 of
-- each. Placing one does nothing -- there is no network to feed.
local prototypes = require("lib.prototypes")

-- Names taken from base/prototypes/recipe.lua; recipe name == item name for all
-- of these in vanilla. A new electric entity needs its recipe added here.
local electric_infrastructure_recipes = {
    "small-electric-pole",
    "medium-electric-pole",
    "big-electric-pole",
    "substation",
    "power-switch",
    "steam-engine",
    "steam-turbine",
    -- The boiler's only product is steam, whose only consumers were the two
    -- generators above and the heat exchanger (removed with the uranium chain).
    "boiler",
}

local removed_recipe_names, removed_recipe_count =
    prototypes.delete_recipes(electric_infrastructure_recipes)
local hidden_item_count = prototypes.hide_items(electric_infrastructure_recipes)

-- Distribution-2 only ever unlocked the substation. Distribution-1 unlocked the
-- medium and big poles plus `iron-stick`, which circuit-network, railway and
-- concrete also unlock, so nothing is lost.
--
-- `solar-energy` and `electric-energy-accumulators` are deliberately absent: their
-- recipes survive as satellite ingredients, so they still unlock something real.
local empty_technologies = {
    "electric-energy-distribution-1",
    "electric-energy-distribution-2",
}

local deleted_technologies, deleted_technology_count =
    prototypes.delete_technologies(empty_technologies)
-- The electric-network tip triggers on unlocking the steam engine, a recipe that
-- no longer exists; this sweep is what removes it.
local deleted_dependents =
    prototypes.delete_dangling_dependents(deleted_technologies, removed_recipe_names)
local relinked_technologies = prototypes.relink_prerequisites(deleted_technologies)

-- Convert every remaining electric AND burner energy source to void. The engine
-- requires producer types to stay electric, and equipment-grid categories use a
-- different energy_source schema that rejects "void" outright.
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
