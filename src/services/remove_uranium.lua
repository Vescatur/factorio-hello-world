-- remove_uranium.lua
--
-- Uranium had three jobs in vanilla and Tycoon has removed the ground under all
-- of them:
--
--   * nuclear power -- there is no electricity (remove_electricity.lua)
--   * uranium ammunition -- there is no combat (remove_military.lua)
--   * nuclear fuel for trains -- nothing burns fuel; every energy source is void
--
-- Nothing on the rocket path needs uranium either: the satellite wants low
-- density structure, solar panels, accumulators, radars, processing units and
-- rocket fuel, and not one of them touches it. So the whole chain goes, from the
-- ore through the centrifuge to the reactor and its heat network.
--
-- WHAT SURVIVES, AND WHY:
--
--   * fission-reactor-equipment -- it is a power source for the armour grid,
--     which stays in scope, and it is not a weapon. Its recipe asks for four
--     uranium fuel cells, so it is re-costed below rather than deleted.
local prototypes = require("lib.prototypes")

-- ============================================================
-- STEP 1: Delete the recipes and hide the items
--
-- Recipe name == item name for the first block. The second block is recipes
-- with no item of their own: they process fluids and ore into the intermediates
-- above, so they have to be named separately.
-- ============================================================
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

-- ============================================================
-- STEP 2: Delete the technologies
--
-- `uranium-mining` is the mining-with-fluid bonus, which is doubly dead: there
-- are no ore patches and no mining drills (remove_ore.lua).
-- ============================================================
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

-- ============================================================
-- STEP 3: Re-cost the fission reactor off uranium
--
-- Four uranium fuel cells were the only uranium in it. What is left --
-- processing units and low density structure -- is on the rocket path anyway,
-- so the armour power source stays buildable without a fuel supply that no
-- longer exists.
-- ============================================================
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
