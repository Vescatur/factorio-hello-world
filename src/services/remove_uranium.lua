-- remove_uranium.lua -- uranium's three vanilla jobs are all gone: nuclear power
-- (no electricity), uranium ammunition (no combat), nuclear fuel (nothing burns
-- fuel). Nothing on the rocket path touches it either, so the whole chain goes.
--
-- fission-reactor-equipment survives -- armour-grid power, not a weapon -- and is
-- re-costed below off the four uranium fuel cells it asked for.
local prototypes = require("lib.prototypes")

-- Recipe name == item name here.
local uranium_items = {
    "uranium-ore",
    "uranium-235",
    "uranium-238",
    "uranium-fuel-cell",
    "depleted-uranium-fuel-cell",
    "nuclear-fuel",
    "centrifuge",
    "nuclear-reactor",
    "heat-pipe",
    "heat-exchanger",
}

-- Recipes with no item of their own: they process fluids and ore into the
-- intermediates above, so they are named separately.
local uranium_processes = {
    "uranium-processing",
    "kovarex-enrichment-process",
    "nuclear-fuel-reprocessing",
}

local recipes_to_delete = {}
for _, name in ipairs(uranium_items) do
    table.insert(recipes_to_delete, name)
end
for _, name in ipairs(uranium_processes) do
    table.insert(recipes_to_delete, name)
end

local removed_recipe_names, removed_recipe_count = prototypes.delete_recipes(recipes_to_delete)
local hidden_item_count = prototypes.hide_items(uranium_items)

-- `uranium-mining` is the mining-with-fluid bonus, doubly dead: no ore patches and
-- no mining drills.
local uranium_technologies = {
    "uranium-mining",
    "uranium-processing",
    "nuclear-power",
    "kovarex-enrichment-process",
    "nuclear-fuel-reprocessing",
}

local deleted_technologies, deleted_technology_count =
    prototypes.delete_technologies(uranium_technologies)
local deleted_dependents =
    prototypes.delete_dangling_dependents(deleted_technologies, removed_recipe_names)
-- `fission-reactor-equipment` required `nuclear-power`; it inherits that
-- technology's own prerequisites instead and stays reachable.
local relinked_technologies = prototypes.relink_prerequisites(deleted_technologies)

-- What is left in it -- processing units and low density structure -- is on the
-- rocket path anyway, so the armour power source stays buildable.
local fission_reactor = data.raw.recipe["fission-reactor-equipment"]
local recosted = false

if fission_reactor and fission_reactor.ingredients then
    local kept = {}
    for _, ingredient in pairs(fission_reactor.ingredients) do
        if ingredient.name == "uranium-fuel-cell" then
            recosted = true
        else
            table.insert(kept, ingredient)
        end
    end
    fission_reactor.ingredients = kept
end

log("[remove-uranium] Deleted " .. removed_recipe_count .. " recipe(s), "
    .. deleted_technology_count .. " technolog(ies) and " .. deleted_dependents
    .. " dependent prototype(s), hid " .. hidden_item_count .. " item(s), re-linked "
    .. relinked_technologies .. " technolog(ies), re-costed fission-reactor-equipment: "
    .. tostring(recosted) .. ".")
