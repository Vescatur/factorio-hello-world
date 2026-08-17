-- loaders.lua -- un-hide vanilla's three loaders, retype them to 1x1, and price
-- them by hanging each off the logistics technology of its belt tier.
--
-- Attaching them to a technology rather than setting `enabled = true` is what
-- prices them: tolls.lua reads the denomination off the unlocking technology and
-- deliberately charges nothing for a recipe no technology unlocks.
local prototypes = require("lib.prototypes")

-- Cheapest first; `next_upgrade` points at the entry after it.
local tiers = {
    { name = "loader",         technology = "logistics"   },
    { name = "fast-loader",    technology = "logistics-2" },
    { name = "express-loader", technology = "logistics-3" },
}

-- Taken field for field off vanilla's own `loader-1x1` template.
--
-- `belt_length` is absent and must stay absent. LoaderPrototype says it "should
-- be the same as belt_distance", which is hardcoded to 0 for a 1x1 -- but setting
-- it to 0 crashes the moment one is placed:
--
--   connector.range.start < connector.range.end was not true
--   (TransportLine.cpp:891, via ConsistencyScraper)
--
-- The field reads as a half-length: the default 0.5 already spans one tile of
-- belt. The documentation sentence is wrong, not the default.
local footprint = {
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    container_distance = 1,
}

-- Halve the structure graphics: `loader-structure.png` is a sheet of 64px frames
-- used with no `scale`, which draws two tiles -- a whole tile of overhang on a 1x1.
--
-- Not cosmetic. The overhang makes the loader look like it occupies the next tile,
-- so the belt gets built one tile too far out, and the gap fails deceptively:
-- OUTPUT still visibly drains the machine (items leave the container and pile up
-- on the loader's own belt) while INPUT does nothing. "Unloading works, loading
-- does not" is the signature of this, not of a broken loader.
local function fit_structure_to_one_tile(entity)
    for _, part in pairs(entity.structure or {}) do
        if type(part) == "table" then
            local sheets = part.sheets or (part.sheet and { part.sheet })
            for _, sheet in pairs(sheets or {}) do
                sheet.scale = (sheet.scale or 1) * 0.5
                if sheet.shift then
                    sheet.shift = { sheet.shift[1] / 2, sheet.shift[2] / 2 }
                end
            end
        end
    end
end

data.raw["loader-1x1"] = data.raw["loader-1x1"] or {}

-- Retyping all three empties `data.raw.loader`, and the engine will not have it:
-- "'entity' prototype type 'loader' requires at least 1 prototype be defined so
-- save files can be loaded." So a copy of the 1x2 loader is kept, taken BEFORE the
-- loop retypes the original, with its minable result, upgrade target and
-- fast-replace group stripped so nothing can reach it.
local stub = util.table.deepcopy(data.raw["loader"]["loader"])
assert(stub, "loaders: no 1x2 loader to keep the 'loader' entity type alive")
stub.name = "loader-1x2-stub"
stub.hidden = true
stub.hidden_in_factoriopedia = true
stub.minable = nil
stub.next_upgrade = nil
stub.fast_replaceable_group = nil

for index, tier in ipairs(tiers) do
    local entity = data.raw["loader"][tier.name]
    assert(entity, "loaders: no 1x2 loader entity named '" .. tier.name .. "'")
    assert(not data.raw["loader-1x1"][tier.name],
        "loaders: a 1x1 loader named '" .. tier.name .. "' already exists")

    entity.hidden = nil
    entity.hidden_in_factoriopedia = nil

    -- Entity names are unique across every type, so empty the old slot first.
    entity.type = "loader-1x1"
    for field, value in pairs(footprint) do
        entity[field] = value
    end
    fit_structure_to_one_tile(entity)
    data.raw["loader"][tier.name] = nil
    data.raw["loader-1x1"][tier.name] = entity

    local recipe = data.raw.recipe[tier.name]
    assert(recipe, "loaders: no recipe named '" .. tier.name .. "'")
    -- `enabled` stays false: the technology is what turns it on, and having one is
    -- what makes tolls.lua charge for it.
    recipe.hidden = nil

    assert(prototypes.unhide_item(tier.name),
        "loaders: no item prototype named '" .. tier.name .. "'")

    prototypes.add_unlock(tier.technology, tier.name)

    local next_tier = tiers[index + 1]
    if next_tier then
        entity.next_upgrade = next_tier.name
    end
end

data:extend({ stub })

log("[loaders] Un-hid " .. #tiers .. " loader(s), retyped them to 1x1 and "
    .. "unlocked them through the logistics technologies.")
