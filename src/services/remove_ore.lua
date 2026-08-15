local ores_to_remove = {"coal","stone","copper-ore","iron-ore","uranium-ore","crude-oil"}

-- Smelting recipes that turn ore into plates. With no ore in the world they
-- are dead weight in the furnace UI, and leaving them in suggests smelting is
-- still a route to plates -- in Tycoon plates come from coin only (see the
-- `resources` table in import.lua). Both are enabled by default in vanilla,
-- so no technology unlock or achievement/tips trigger references them; the
-- ITEM prototypes stay intact, only the recipes go.
local smelting_recipes_to_remove = {"iron-plate","copper-plate"}

for _, recipe in ipairs(smelting_recipes_to_remove) do
    if data.raw.recipe[recipe] then
        data.raw.recipe[recipe] = nil
    end
end

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
