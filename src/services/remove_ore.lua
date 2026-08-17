-- remove_ore.lua -- no ore on the map and nothing to extract it with. Raw material
-- enters one way: bought from the Import machine.
--
-- The plate smelting recipes are load-bearing and must stay -- the shop sells ore,
-- so smelting is the only route to a plate.
--
-- Trees and rocks stay hand-minable as the bootstrap: a new game has no money and
-- the first Penny comes from serving a wood customer. Neither is automatable (a
-- drill cannot target them) and both are finite.
local prototypes = require("lib.prototypes")
local currency = require("services.currency")

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

    for _, preset in pairs(data.raw["map-gen-presets"]["default"] or {}) do
        if preset and preset.basic_settings
            and preset.basic_settings.autoplace_controls
            and preset.basic_settings.autoplace_controls[ore] then
            preset.basic_settings.autoplace_controls[ore] = nil
        end
    end
end


-- huge-rock is the only entity yielding coal without a resource patch, and coal is
-- a shop good that buys the plastic and explosives chains -- a free tap would
-- undercut them. big-rock already yields stone alone and is left as it is.
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


-- With no resource patch, a drill has nothing to stand on and a pumpjack nothing to
-- draw from. The mining productivity ladder goes with them: that bonus applies to
-- drills only. `steel-axe` stays -- rocks and trees are still mined by hand.
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


-- Vanilla unlocks oil-processing by mining crude oil, which can never happen --
-- crude arrives barrelled from the shop. Left alone the trigger would never fire
-- and the refinery, chemical plant and whole plastic chain would be unreachable, so
-- it gets a price instead.
local oil_processing = data.raw.technology["oil-processing"]
if oil_processing then
    oil_processing.research_trigger = nil
    oil_processing.unit = {
        count = 100,
        ingredients = { { currency.penny, 1 } },
        time = 30,
    }
end

log("[remove-ore] Stripped " .. #ores_to_remove .. " resource(s) from map generation, deleted "
    .. removed_recipe_count .. " extraction recipe(s), " .. deleted_technology_count
    .. " technolog(ies) and " .. deleted_dependents .. " dependent prototype(s), hid "
    .. hidden_item_count .. " item(s) and re-linked " .. relinked_technologies .. ".")
