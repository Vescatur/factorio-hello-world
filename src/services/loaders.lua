-- loaders.lua -- the one service that puts something back.
--
-- Factorio ships three loaders as complete entity + item + recipe prototypes and
-- then hides all three layers: `hidden = true` on each, `enabled = false` on the
-- recipes, and no technology anywhere in base naming them. They are finished
-- content the player can never reach.
--
-- Tycoon wants them. With no ore to mine and no power to budget, the factory is
-- a routing puzzle and nothing else, and a loader is a routing tool.
--
-- WHERE THE PRICE COMES FROM
--
-- The loaders are hung off the logistics technologies rather than switched on
-- with `enabled = true`, and that is the whole design of this file. `tolls.lua`
-- reads a recipe's denomination off the technology that unlocks it, so attaching
-- each loader beside the belt tier it matches prices it for free:
--
--   loader         logistics    20 Penny                    -> 1 Penny
--   fast-loader    logistics-2  200 Penny + Silver          -> 1 Silver Coin
--   express-loader logistics-3  300 Penny .. Bond           -> 1 Bond
--
-- and the tiers nest, so an express loader carries a Bond over a Silver over a
-- Penny. Setting `enabled = true` instead would have made them free forever:
-- tolls.lua deliberately charges nothing for a recipe no technology unlocks,
-- because that exemption is what keeps a new game craftable at all.
--
-- ============================================================
-- WHY THEY ARE 1x1
--
-- Tycoon's loaders occupy one tile, not two. A two-tile loader is a poor trade
-- here: inserters cost no power in this mod, so the only thing a loader buys is
-- throughput, and paying two tiles for it undoes the compactness that is
-- supposed to be the reward for optimising rather than expanding.
--
-- Base has the type for it -- `loader-1x1` -- and per the API docs it is
-- "identical to Loader1x2Prototype with the exception of its hardcoded
-- belt_distance". Base even declares one, at
-- base/prototypes/entity/transport-belts.lua:1024-1064. But that one is a
-- template rather than content: no item, no recipe, no `minable` so you could
-- never pick it up, no `flags` so it is not a player creation, no corpse, no
-- sounds, no `fast_replaceable_group`, no circuit connector, and only the one
-- speed. It is left alone here, exactly as base leaves it.
--
-- So instead of building three loaders onto that bare chassis, this RETYPES the
-- three finished ones. Every field base authored -- the flags, the minable, the
-- corpse, the resistances, the working sound, the per-tier icon, the belt
-- animation set, the fast-replace group, the circuit connector -- carries over
-- untouched, and only the three fields that describe a footprint change. What
-- comes out is the finished 1x1 loader base never shipped.
--
-- Two things make the retype safe rather than lucky:
--
--   * the item's `place_result` and the entity's `minable.result` name a
--     prototype, not a type, so the recipes and the items need no edit at all.
--     Nothing about the price, the unlock or the locale moves.
--
--   * `circuit_connector_definitions["loader-1x2"]` is named for the 1x2 loader
--     but its offsets are all within three PIXELS of the entity origin
--     (core/lualib/circuit-connector-generated-definitions.lua:949-963), so the
--     wire still lands on the entity once it is a tile shorter. Keeping it is
--     what leaves the loaders circuit-controllable.
--
-- `belt_length` is left at the engine default, which is what vanilla's template
-- does too. Do not "fix" it to 0 to match the documentation -- see the footprint
-- table below for the crash that follows.
-- ============================================================
--
-- The one edit here that is neither un-hiding nor the retype is `next_upgrade`.
-- Every belt, underground and splitter has it; the loaders alone do not, because
-- an entity nobody can build never meets an upgrade planner. They already share
-- a `fast_replaceable_group`, so this is the missing half of that parity.
local prototypes = require("lib.prototypes")

-- Cheapest first: each loader rides the technology that unlocks the belt it runs
-- at the speed of, and `next_upgrade` points at the entry after it.
local tiers = {
    { name = "loader",         technology = "logistics"   },
    { name = "fast-loader",    technology = "logistics-2" },
    { name = "express-loader", technology = "logistics-3" },
}

-- The footprint, taken field for field off vanilla's own `loader-1x1` template
-- rather than invented. Shared across the three the way base shares one
-- connector definition across assembling-machine 1, 2 and 3.
--
-- `belt_length` is deliberately absent, and must stay absent. LoaderPrototype
-- says it "should be the same as belt_distance", which is hardcoded to 0 for a
-- 1x1 -- but setting it to 0 crashes the game the moment one is placed:
--
--   connector.range.start < connector.range.end was not true
--   (TransportLine.cpp:891, via ConsistencyScraper)
--
-- A transport line of zero length is not a legal thing to build. The field reads
-- as a half-length, not a length: the default 0.5 spans exactly one tile either
-- side of `belt_distance`, which is one tile of belt for the 1x2 loader and one
-- tile of belt for the 1x1 as well. The default is already right; the
-- documentation sentence is not.
local footprint = {
    collision_box = { { -0.4, -0.4 }, { 0.4, 0.4 } },
    selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } },
    container_distance = 1,
}

-- Halve the structure graphics, because they were drawn for an entity twice as
-- long. `loader-structure.png` is a sheet of 64px frames used with no `scale`,
-- which draws two tiles -- right for the 1x2 loader, and a whole tile of
-- overhang on a 1x1.
--
-- This is filed under graphics but it is not a cosmetic bug. The overhang makes
-- the loader look like it occupies the next tile along, so the belt gets built
-- one tile further out than it should be, and the resulting gap fails in a way
-- that reads as anything but a gap: OUTPUT still visibly drains the machine,
-- because items leave the container and pile up on the loader's own belt, while
-- INPUT does nothing at all, because nothing is feeding it. "Unloading works,
-- loading does not" is the signature of this, not of a broken loader.
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
--
--   'entity' prototype type 'loader' requires at least 1 prototype be defined so
--   save files can be loaded.
--
-- The same rule remove_enemies.lua runs into with `unit`, `unit-spawner` and
-- `turret`, and the same answer: keep one and make sure nothing can reach it. So
-- a copy of the 1x2 loader is taken here, BEFORE the loop retypes the original,
-- and put back below under a name of its own. It is hidden in both senses, and
-- the three fields that could give it a way into a game -- the minable result,
-- the upgrade target and the fast-replace group -- are stripped, so no item
-- places it, no planner upgrades into it and no building fast-replaces to it.
local stub = util.table.deepcopy(data.raw["loader"]["loader"])
assert(stub, "loaders: no 1x2 loader to keep the 'loader' entity type alive")
stub.name = "loader-1x2-stub"
stub.hidden = true
stub.hidden_in_factoriopedia = true
stub.minable = nil
stub.next_upgrade = nil
stub.fast_replaceable_group = nil

for index, tier in ipairs(tiers) do
    -- Asserted rather than assumed: if a Factorio version renames or retypes one
    -- of these, say so at load instead of quietly shipping a mod whose headline
    -- addition is missing.
    local entity = data.raw["loader"][tier.name]
    assert(entity, "loaders: no 1x2 loader entity named '" .. tier.name .. "'")
    assert(not data.raw["loader-1x1"][tier.name],
        "loaders: a 1x1 loader named '" .. tier.name .. "' already exists")

    entity.hidden = nil
    entity.hidden_in_factoriopedia = nil

    -- The retype. Entity names are unique across every entity type, so the move
    -- has to empty the old slot before it fills the new one.
    entity.type = "loader-1x1"
    for field, value in pairs(footprint) do
        entity[field] = value
    end
    fit_structure_to_one_tile(entity)
    data.raw["loader"][tier.name] = nil
    data.raw["loader-1x1"][tier.name] = entity

    local recipe = data.raw.recipe[tier.name]
    assert(recipe, "loaders: no recipe named '" .. tier.name .. "'")
    -- `enabled` stays false on purpose -- the technology below is what turns it
    -- on, and having one is what makes tolls.lua charge for it.
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
