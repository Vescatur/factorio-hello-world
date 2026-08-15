-- remove_ore.lua
--
-- No ore is generated on the map, and nothing can be extracted from the ground.
-- Raw material enters the factory one way only: bought from the Import machine
-- with money a customer paid (see services/import.lua).
--
-- WHAT THIS DOES NOT DO ANY MORE: it used to delete the iron-plate and
-- copper-plate smelting recipes as well, back when the shop sold plates
-- directly and a furnace had nothing to cook. The shop sells ore now, so
-- smelting is the only route to a plate and those two recipes are load-bearing.
-- Leave them alone.
--
-- WHAT SURVIVES ON THE MAP, AND WHY: trees and rocks stay hand-minable. They
-- are the bootstrap, not an economy -- a new game has no money, every shop good
-- costs money, and the only way to earn the first Penny is to serve a wood
-- customer. That wood has to come from somewhere, so it comes from a tree. None
-- of it is automatable: a mining drill cannot target a tree or a rock, and both
-- are finite.
local prototypes = require("lib.prototypes")

local ores_to_remove = { "coal", "stone", "copper-ore", "iron-ore", "uranium-ore", "crude-oil" }

for _, ore in ipairs(ores_to_remove) do
    if data.raw["resource"][ore] then
        data.raw["resource"][ore].autoplace = nil
    end

    if data.raw["autoplace-control"][ore] then
        data.raw["autoplace-control"][ore] = nil
    end

    data.raw.planet.nauvis.map_gen_settings.autoplace_controls[ore] = nil
    data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[ore] = nil

    -- Also clean up map-gen presets that reference it, same as before
    for _, preset in pairs(data.raw["map-gen-presets"]["default"] or {}) do
        if preset and preset.basic_settings
            and preset.basic_settings.autoplace_controls
            and preset.basic_settings.autoplace_controls[ore] then
            preset.basic_settings.autoplace_controls[ore] = nil
        end
    end
end


-- ============================================================
-- Rocks drop stone, not coal
--
-- huge-rock is the only entity in the game that yields coal without a resource
-- patch, and coal is a shop good -- it buys the plastic and explosives chains.
-- A free tap on it would undercut a whole branch of the economy, where free
-- stone only saves the player their first furnace. big-rock already yields
-- stone alone and is left as it is.
-- ============================================================
local huge_rock = data.raw["simple-entity"]["huge-rock"]
if huge_rock and huge_rock.minable and huge_rock.minable.results then
    local kept = {}
    for _, result in pairs(huge_rock.minable.results) do
        if result.name ~= "coal" then
            table.insert(kept, result)
        end
    end
    huge_rock.minable.results = kept
end


-- ============================================================
-- Nothing to extract
--
-- With no resource patch anywhere, a mining drill has nothing to stand on and a
-- pumpjack has nothing to draw from. Recipe deleted, item hidden -- the same
-- trade-off remove_electricity.lua documents.
--
-- The mining productivity ladder goes with them: the bonus is
-- mining-drill-productivity-bonus, which applies to drills only. Character
-- mining speed is a separate bonus and `steel-axe` keeps it, because rocks and
-- trees are still mined by hand.
-- ============================================================
local extraction_recipes = {
    "electric-mining-drill",
    "burner-mining-drill",
    "pumpjack",
}

local removed_recipes, removed_recipe_count = prototypes.delete_recipes(extraction_recipes)
local hidden_item_count = prototypes.hide_items(extraction_recipes)

local extraction_technologies = {
    "electric-mining-drill",
    "oil-gathering",
    "mining-productivity-1",
    "mining-productivity-2",
    "mining-productivity-3",
    "mining-productivity-4",
}

local deleted_technologies, deleted_technology_count =
    prototypes.delete_technologies(extraction_technologies)
local deleted_dependents =
    prototypes.delete_dangling_dependents(deleted_technologies, removed_recipes)
-- `oil-processing` required `oil-gathering`; it inherits `fluid-handling` instead.
local relinked_technologies = prototypes.relink_prerequisites(deleted_technologies)


-- ============================================================
-- Oil processing has to be bought, not triggered
--
-- Vanilla unlocks it by mining crude oil, which can never happen here -- crude
-- arrives barrelled from the shop. Left alone the trigger would never fire and
-- the refinery, the chemical plant and with them the entire plastic chain would
-- be permanently out of reach. So it gets a price instead, like the rest of the
-- tree past the opening triggers.
-- ============================================================
local oil_processing = data.raw.technology["oil-processing"]
if oil_processing then
    oil_processing.research_trigger = nil
    oil_processing.unit = {
        count = 100,
        ingredients = { { "automation-science-pack", 1 } },
        time = 30,
    }
end

log("[remove-ore] Stripped " .. #ores_to_remove .. " resource(s) from map generation, deleted "
    .. removed_recipe_count .. " extraction recipe(s), " .. deleted_technology_count
    .. " technolog(ies) and " .. deleted_dependents .. " dependent prototype(s), hid "
    .. hidden_item_count .. " item(s) and re-linked " .. relinked_technologies .. ".")
