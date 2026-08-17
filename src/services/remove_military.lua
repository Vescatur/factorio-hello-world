-- remove_military.lua -- with no enemies there is nothing to defend, so the combat
-- tree has no purpose. Recipe deleted, item hidden, item and entity prototypes
-- kept, so `car.guns`, `lab.inputs` and the spidertron tips still resolve.
--
-- Kept on purpose and not combat content: radar (`satellite` needs 5),
-- modular/power armor (they carry the equipment grid), the car, explosives and
-- flammables. light-armor and heavy-armor have no grid, so protection was all they
-- ever did and they go.
local prototypes = require("lib.prototypes")

-- Grouped the way the crafting menu groups them. Recipe name == item name for all
-- of these, so the same list hides the items below.
local combat_recipes = {
    -- Guns
    "pistol",
    "submachine-gun",
    "shotgun",
    "combat-shotgun",
    "rocket-launcher",
    "flamethrower",

    -- Ammo
    "firearm-magazine",
    "piercing-rounds-magazine",
    "uranium-rounds-magazine",
    "shotgun-shell",
    "piercing-shotgun-shell",
    "flamethrower-ammo",
    "rocket",
    "explosive-rocket",
    "atomic-bomb",
    "cannon-shell",
    "explosive-cannon-shell",
    "uranium-cannon-shell",
    "explosive-uranium-cannon-shell",
    "artillery-shell",

    -- Capsules
    "grenade",
    "cluster-grenade",
    "poison-capsule",
    "slowdown-capsule",
    "defender-capsule",
    "distractor-capsule",
    "destroyer-capsule",

    -- Turrets and defensive structures
    "gun-turret",
    "laser-turret",
    "flamethrower-turret",
    "artillery-turret",
    "stone-wall",
    "gate",
    "land-mine",

    -- Armor with no equipment grid: protection was its only function
    "light-armor",
    "heavy-armor",

    -- Combat equipment
    "energy-shield-equipment",
    "energy-shield-mk2-equipment",
    "personal-laser-defense-equipment",
    "discharge-defense-equipment",
    "discharge-defense-remote",

    -- Weapon platforms
    "tank",
    "spidertron",
    "artillery-wagon",
    "artillery-targeting-remote",
    "spidertron-remote",

    -- Built from piercing rounds, a grenade and two walls. The War Chest retires
    -- with this change, so currency.lua no longer handles it.
    "military-science-pack",
}

local removed_recipe_names, removed_recipe_count = prototypes.delete_recipes(combat_recipes)

local hidden_item_count = prototypes.hide_items(combat_recipes)

-- The guns the deleted vehicles carried, plus the car's. These have no recipes in
-- vanilla -- they arrive with the vehicle -- so the sweep above never saw them.
hidden_item_count = hidden_item_count + prototypes.hide_items({
    "vehicle-machine-gun",
    "tank-machine-gun",
    "tank-flamethrower",
    "tank-cannon",
    "artillery-wagon-cannon",
    "spidertron-rocket-launcher-1",
    "spidertron-rocket-launcher-2",
    "spidertron-rocket-launcher-3",
    "spidertron-rocket-launcher-4",
})

-- The car stays as transport, so it should not turn up with a weapon slot.
data.raw.car.car.guns = {}

-- Cliffs still generate and still block building, so cliff-explosives is
-- demolition rather than a weapon and stays. It asks for a grenade, whose recipe is
-- deleted above, which would leave cliff clearing permanently uncraftable.
local cliff_explosives = data.raw.recipe["cliff-explosives"]
local recosted_cliff_explosives = false

if cliff_explosives and cliff_explosives.ingredients then
    local kept = {}
    for _, ingredient in pairs(cliff_explosives.ingredients) do
        if ingredient.name == "grenade" then
            recosted_cliff_explosives = true
        else
            table.insert(kept, ingredient)
        end
    end
    cliff_explosives.ingredients = kept
end

-- The finite ones by hand; the upgrade ladders are generated, as vanilla generates
-- them too.
local combat_technologies = {
    "military",
    "military-2",
    "military-3",
    "military-4",
    "military-science-pack",
    "gun-turret",
    "laser-turret",
    "stone-wall",
    "gate",
    "land-mine",
    "heavy-armor",
    "flamethrower",
    "rocketry",
    "explosive-rocketry",
    "uranium-ammo",
    "atomic-bomb",
    "tank",
    "artillery",
    "spidertron",
    "defender",
    "distractor",
    "destroyer",
    -- Unlocks nothing itself; it exists only to gate laser turrets and personal
    -- laser defence, both of which are gone.
    "laser",
    "energy-shield-equipment",
    "energy-shield-mk2-equipment",
    "personal-laser-defense-equipment",
    "discharge-defense-equipment",
    "artillery-shell-range-1",
    "artillery-shell-speed-1",
}

-- Damage and shooting-speed ladders. Counts are vanilla's.
local upgrade_ladders = {
    ["physical-projectile-damage"] = 7,
    ["stronger-explosives"] = 7,
    ["refined-flammables"] = 7,
    ["laser-weapons-damage"] = 7,
    ["laser-shooting-speed"] = 7,
    ["weapon-shooting-speed"] = 6,
    ["follower-robot-count"] = 5,
}

for ladder, highest in pairs(upgrade_ladders) do
    for level = 1, highest do
        table.insert(combat_technologies, ladder .. "-" .. level)
    end
end

local deleted_technologies, deleted_technology_count =
    prototypes.delete_technologies(combat_technologies)

-- Vanilla's quick-bar shortcuts for the spidertron, artillery targeting and
-- discharge defence remotes, and the tip about rail through a gate.
local deleted_dependents =
    prototypes.delete_dangling_dependents(deleted_technologies, removed_recipe_names)

-- Rescues cliff-explosives, modular-armor, power-armor-mk2 and
-- fission-reactor-equipment, which each listed a deleted technology.
local relinked_technologies = prototypes.relink_prerequisites(deleted_technologies)

-- military-science-pack stops being a denomination here, so a technology still
-- listing it would cost a currency no customer pays out. After the sweep above that
-- is just fission-reactor-equipment, kept as armour power rather than a weapon.
local retired_currency = "military-science-pack"
local repriced_technologies = 0

for _, tech in pairs(data.raw.technology) do
    if tech.unit and tech.unit.ingredients then
        local kept = {}
        local dropped = false
        for _, ingredient in pairs(tech.unit.ingredients) do
            -- Technology ingredients are the short {name, amount} form.
            if ingredient[1] == retired_currency or ingredient.name == retired_currency then
                dropped = true
            else
                table.insert(kept, ingredient)
            end
        end
        if dropped then
            tech.unit.ingredients = kept
            repriced_technologies = repriced_technologies + 1
        end
    end
end

-- The pack keeps its prototype -- `lab.inputs` names it -- but is no longer money
-- and no longer craftable, so it is hidden like the base game coin.
data.raw.item[retired_currency].hidden = true
data.raw.item[retired_currency].hidden_in_factoriopedia = true

log("[remove-military] Deleted " .. removed_recipe_count .. " combat recipe(s), "
    .. deleted_technology_count .. " technolog(ies) and " .. deleted_dependents
    .. " dependent prototype(s), hid " .. hidden_item_count .. " item(s), re-linked "
    .. relinked_technologies .. " technolog(ies), re-priced " .. repriced_technologies
    .. " and re-costed cliff-explosives: " .. tostring(recosted_cliff_explosives) .. ".")
