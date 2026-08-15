-- remove_military.lua
--
-- With no enemies (see remove_enemies.lua) the combat tree has no purpose. This
-- is about saying so plainly instead of leaving a dead branch for the player to
-- discover by trial.
--
-- APPROACH -- the four moves every removal service makes, all of which live in
-- lib/prototypes.lua now:
--
--   1. Combat recipes are deleted and the matching items hidden. The item and
--      entity prototypes stay, exactly the trade-off remove_electricity.lua
--      documents: `car.guns` still names "vehicle-machine-gun", `lab.inputs`
--      still names "military-science-pack", and the spidertron
--      tips-and-tricks entries still resolve. Only the recipe is gone, so
--      nothing can be built and nothing dangles.
--
--   2. Technology effects that unlocked one of those recipes are stripped.
--
--   3. The combat technologies are deleted, and everything that pointed at one
--      -- quick-bar shortcuts, tips-and-tricks entries, achievements -- goes
--      with them. Four surviving technologies list a deleted one as a
--      prerequisite and are re-linked so they stay reachable.
--
--   4. Anything still priced in military-science-pack is re-priced, because the
--      War Chest denomination retires with this change (see currency.lua).
--
-- WHAT SURVIVES, AND WHY:
--
--   * radar -- `satellite` needs 5 of them, so removing it would break the
--     rocket launch. Here it is map-reveal infrastructure, not a defence.
--   * modular-armor / power-armor / power-armor-mk2 -- these carry the
--     equipment grid that exoskeletons, personal roboports, night vision and
--     batteries plug into. light-armor and heavy-armor have no grid and no
--     inventory bonus, so protection is all they ever did and they go.
--   * exoskeleton, personal roboport, night vision, belt immunity, batteries,
--     solar panel and fission reactor equipment -- none of them are weapons.
--     (The fission reactor is re-costed off uranium fuel in remove_uranium.lua.)
--   * explosives and flammables -- intermediate chemistry, not weapons.
--   * car -- transport. Its weapon slot is emptied below; the tank, spidertron
--     and artillery wagon are weapon platforms and go.
local prototypes = require("lib.prototypes")

-- ============================================================
-- STEP 1: Delete the combat recipes
--
-- Grouped the way the crafting menu groups them. Recipe name == item name for
-- all of these in vanilla, so the same list hides the items in STEP 2.
-- ============================================================
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

    -- The War Chest retires with this change, so currency.lua no longer deletes
    -- this recipe as one of its denominations. It belongs here on its own
    -- merits: it is built from piercing rounds, a grenade and two walls.
    "military-science-pack",
}

-- Deletes the recipes and strips the unlock-recipe effects that named them.
local removed_recipe_names, removed_recipe_count = prototypes.delete_recipes(combat_recipes)

-- ============================================================
-- STEP 2: Hide the items
-- ============================================================
local hidden_item_count = prototypes.hide_items(combat_recipes)

-- The guns the deleted vehicles carried, plus the car's. These have no recipes
-- in vanilla -- they arrive with the vehicle -- so STEP 1 never saw them.
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

-- Cliff explosives are demolition, not a weapon: cliffs still generate and still
-- block building, so the recipe stays. It asks for one grenade, though, and the
-- grenade recipe is deleted above -- which would leave the only way to clear a
-- cliff permanently uncraftable. Drop the grenade; the ten explosives were
-- always what did the work.
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

-- ============================================================
-- STEP 3: Delete the combat technologies
--
-- The finite ones are listed by hand; the upgrade ladders are generated, since
-- vanilla generates them too.
-- ============================================================
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

-- Vanilla has quick-bar shortcuts for the spidertron, artillery targeting and
-- discharge defence remotes, and a tip about running rail through a gate. They
-- go with what they point at.
local deleted_dependents =
    prototypes.delete_dangling_dependents(deleted_technologies, removed_recipe_names)

-- In vanilla this rescues exactly four technologies that would otherwise be
-- unreachable:
--
--   cliff-explosives          military-2            -> explosives
--   modular-armor             heavy-armor           -> steel-processing
--   power-armor-mk2           military-4            -> (dropped)
--   fission-reactor-equipment military-science-pack -> (dropped)
local relinked_technologies = prototypes.relink_prerequisites(deleted_technologies)

-- ============================================================
-- STEP 4: Re-price anything still asking for a War Chest
--
-- military-science-pack stops being a denomination with this change, so a
-- technology that still lists it would cost a currency no customer pays out and
-- could never be researched. After STEP 3 that is just
-- fission-reactor-equipment, which is a power source for armor rather than a
-- weapon and is worth keeping.
-- ============================================================
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

-- The pack itself keeps its prototype -- `lab.inputs` names it -- but it is no
-- longer money and no longer craftable, so it is hidden the way currency.lua
-- hides the base game coin.
data.raw.item[retired_currency].hidden = true
data.raw.item[retired_currency].hidden_in_factoriopedia = true

log("[remove-military] Deleted " .. removed_recipe_count .. " combat recipe(s), "
    .. deleted_technology_count .. " technolog(ies) and " .. deleted_dependents
    .. " dependent prototype(s), hid " .. hidden_item_count .. " item(s), re-linked "
    .. relinked_technologies .. " technolog(ies), re-priced " .. repriced_technologies
    .. " and re-costed cliff-explosives: " .. tostring(recosted_cliff_explosives) .. ".")
