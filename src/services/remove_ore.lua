local ores_to_remove = {"coal","stone","copper-ore","iron-ore","uranium-ore","crude-oil"}

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
