-- remove_military.lua
--
-- With no enemies (see remove_enemies.lua) the combat tree has no purpose. Most
-- of it was already unreachable: `explosives` needs coal and sulfur needs crude
-- oil, and remove_ore.lua deletes both, so ammo, grenades and mines could never
-- be built in Tycoon anyway. This is about saying so plainly instead of leaving
-- a dead branch for the player to discover by trial.
--
-- APPROACH:
--
--   1. Combat recipes are deleted and the matching items hidden. The item and
--      entity prototypes stay, exactly the trade-off remove_electricity.lua
--      documents: `car.guns` still names "vehicle-machine-gun", `lab.inputs`
--      still names "military-science-pack", and the spidertron
--      tips-and-tricks entries still resolve. Only the recipe is gone, so
--      nothing can be built and nothing dangles.
--
--   2. Technology effects that unlocked one of those recipes are stripped, the
--      same `kept`-array rebuild used in remove_electricity.lua and currency.lua.
--
--   3. The combat technologies are deleted. This is the first code in the mod to
--      touch `tech.prerequisites`, and it has to: four surviving technologies
--      list a deleted one as a prerequisite and would become unreachable.
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
--   * explosives and flammables -- intermediate chemistry, not weapons.
--   * car -- transport. Its weapon slot is emptied below; the tank, spidertron
--     and artillery wagon are weapon platforms and go.

-- ============================================================
-- STEP 1: Delete the combat recipes
--
-- Grouped the way the crafting menu groups them. Recipe name == item name for
-- all of these in vanilla.
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

local removed_recipe_names = {}
local removed_recipe_count = 0

for _, recipe_name in ipairs(combat_recipes) do
    if data.raw.recipe[recipe_name] then
        data.raw.recipe[recipe_name] = nil
        removed_recipe_names[recipe_name] = true
        removed_recipe_count = removed_recipe_count + 1
    end
end

-- ============================================================
-- STEP 2: Hide the items
--
-- Same treatment currency.lua gives the retired base game coin: the prototype
-- stays because other prototypes reference it by name, but it leaves the
-- crafting menu and Factoriopedia so there is no uncraftable clutter.
-- ============================================================
local hidden_item_count = 0

-- Items are spread over a dozen categories here -- plain "item" for walls and
-- turrets, but also gun, ammo, capsule, armor, item-with-entity-data for the
-- vehicles and spidertron-remote for its own type. Rather than list them, this
-- looks for a prototype of that name carrying a `stack_size`, which every item
-- has and no entity does. That keeps entities (the `gun-turret` building, say)
-- visible in Factoriopedia while its item disappears from the crafting menu.
local function hide_item(item_name)
    for _, category in pairs(data.raw) do
        local prototype = type(category) == "table" and category[item_name]
        if type(prototype) == "table" and prototype.stack_size then
            prototype.hidden = true
            prototype.hidden_in_factoriopedia = true
            hidden_item_count = hidden_item_count + 1
            return
        end
    end
end

for _, item_name in ipairs(combat_recipes) do
    hide_item(item_name)
end

-- The guns the deleted vehicles carried, plus the car's. These have no recipes
-- in vanilla -- they arrive with the vehicle -- so step 1 never saw them.
for _, gun_name in ipairs({
    "vehicle-machine-gun",
    "tank-machine-gun",
    "tank-flamethrower",
    "tank-cannon",
    "artillery-wagon-cannon",
    "spidertron-rocket-launcher-1",
    "spidertron-rocket-launcher-2",
    "spidertron-rocket-launcher-3",
    "spidertron-rocket-launcher-4",
}) do
    hide_item(gun_name)
end

-- The car stays as transport, so it should not turn up with a weapon slot.
data.raw.car.car.guns = {}

-- ============================================================
-- STEP 3: Strip technology effects that unlock a deleted recipe
-- ============================================================
local stripped_effects = 0

for _, tech in pairs(data.raw.technology) do
    if tech.effects then
        local kept = {}
        for _, effect in pairs(tech.effects) do
            if effect.type == "unlock-recipe" and removed_recipe_names[effect.recipe] then
                stripped_effects = stripped_effects + 1
            else
                table.insert(kept, effect)
            end
        end
        tech.effects = kept
    end
end

-- ============================================================
-- STEP 4: Delete the combat technologies
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

-- Prerequisites are captured before anything is deleted so step 5 can re-link
-- through a technology that is already gone.
local deleted_technologies = {}
local deleted_technology_count = 0

for _, tech_name in ipairs(combat_technologies) do
    local tech = data.raw.technology[tech_name]
    if tech then
        deleted_technologies[tech_name] = tech.prerequisites or {}
        data.raw.technology[tech_name] = nil
        deleted_technology_count = deleted_technology_count + 1
    end
end

-- ============================================================
-- STEP 5: Delete prototypes that point at something we removed
--
-- Two kinds, both hard load errors:
--
--   * `technology_to_unlock` -- vanilla has quick-bar shortcuts for the
--     spidertron, artillery targeting and discharge defence remotes. Clearing
--     the field instead of deleting the prototype would be wrong: an
--     unlock-less shortcut is available from the start, the opposite of what we
--     want for a remote to a vehicle that cannot be built.
--
--   * a nested trigger tree naming a deleted technology or recipe -- the
--     tips-and-tricks entries and the achievements. remove_electricity.lua
--     promised this sweep and settled for one hardcoded special case; here it is
--     for real, so the tip about running rail through a gate goes with the gate.
--
-- Swept by field rather than by name so entries added by a future Factorio
-- version are caught too.
-- ============================================================
local deleted_dependents = 0

local function references_removed_prototype(value, depth)
    if type(value) ~= "table" or depth > 8 then
        return false
    end
    if type(value.technology) == "string" and deleted_technologies[value.technology] then
        return true
    end
    if type(value.recipe) == "string" and removed_recipe_names[value.recipe] then
        return true
    end
    for _, nested in pairs(value) do
        if references_removed_prototype(nested, depth + 1) then
            return true
        end
    end
    return false
end

-- Only the prototype families that exist to describe a trigger. A blanket sweep
-- over data.raw would risk deleting something whose recipe reference is
-- incidental rather than the point of it.
local function is_trigger_driven(category_name)
    return category_name == "tips-and-tricks-item"
        or category_name:match("achievement$") ~= nil
end

for category_name, category in pairs(data.raw) do
    if type(category) == "table" then
        for name, prototype in pairs(category) do
            if type(prototype) == "table" then
                local unlock = prototype.technology_to_unlock
                local dangling_unlock = type(unlock) == "string" and deleted_technologies[unlock]
                local dangling_trigger = is_trigger_driven(category_name)
                    and references_removed_prototype(prototype.trigger, 0)
                if dangling_unlock or dangling_trigger then
                    category[name] = nil
                    deleted_dependents = deleted_dependents + 1
                end
            end
        end
    end
end

-- ============================================================
-- STEP 6: Re-link prerequisites around the deleted technologies
--
-- A surviving technology that requires a deleted one inherits that technology's
-- own prerequisites instead, repeatedly, until nothing deleted is left. In
-- vanilla this rescues exactly four technologies that would otherwise be
-- unreachable:
--
--   cliff-explosives          military-2            -> explosives
--   modular-armor             heavy-armor           -> steel-processing
--   power-armor-mk2           military-4            -> (dropped)
--   fission-reactor-equipment military-science-pack -> (dropped)
--
-- Written as a resolve-until-stable loop rather than four special cases so it
-- keeps working if the lists above change.
--
-- Inheriting a dead technology's prerequisites wholesale drags in ancestors that
-- the surviving ones already imply -- power-armor-mk2 ends up asking for nine
-- technologies where four say the same thing -- and every redundant entry is
-- another arrow drawn across the technology screen. So a re-linked list is
-- reduced afterwards: a prerequisite is dropped if another prerequisite already
-- depends on it. Only re-linked technologies are touched; vanilla's own arrows,
-- redundant or not, are deliberate and left alone.
-- ============================================================
local relinked_technologies = 0

local function resolve_prerequisites(prerequisites)
    local resolved = {}
    local seen = {}
    local pending = {}

    for _, name in ipairs(prerequisites) do
        table.insert(pending, name)
    end

    while #pending > 0 do
        local name = table.remove(pending, 1)
        if deleted_technologies[name] then
            -- Walk through the dead technology to whatever it depended on.
            for _, inherited in ipairs(deleted_technologies[name]) do
                table.insert(pending, inherited)
            end
        elseif not seen[name] then
            seen[name] = true
            table.insert(resolved, name)
        end
    end

    return resolved
end

-- Every technology `name` depends on, directly or transitively. Deleted names
-- are walked through the same way resolve_prerequisites does, so an ancestor
-- reached only via a dead technology still counts as implied.
local function collect_ancestors(name, found, depth)
    if depth > 64 then
        return found
    end
    local prerequisites = deleted_technologies[name]
        or (data.raw.technology[name] and data.raw.technology[name].prerequisites)
    for _, prerequisite in ipairs(prerequisites or {}) do
        if not found[prerequisite] then
            found[prerequisite] = true
            collect_ancestors(prerequisite, found, depth + 1)
        end
    end
    return found
end

local function drop_implied_prerequisites(prerequisites)
    local implied = {}
    for _, name in ipairs(prerequisites) do
        collect_ancestors(name, implied, 0)
    end

    local reduced = {}
    for _, name in ipairs(prerequisites) do
        if not implied[name] then
            table.insert(reduced, name)
        end
    end
    return reduced
end

for _, tech in pairs(data.raw.technology) do
    if tech.prerequisites then
        local needs_relink = false
        for _, name in ipairs(tech.prerequisites) do
            if deleted_technologies[name] then
                needs_relink = true
                break
            end
        end
        if needs_relink then
            tech.prerequisites = drop_implied_prerequisites(resolve_prerequisites(tech.prerequisites))
            relinked_technologies = relinked_technologies + 1
        end
    end
end

-- ============================================================
-- STEP 7: Re-price anything still asking for a War Chest
--
-- military-science-pack stops being a denomination with this change, so a
-- technology that still lists it would cost a currency no customer pays out and
-- could never be researched. After step 4 that is just
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
    .. " dependent prototype(s), hid " .. hidden_item_count .. " item(s), stripped "
    .. stripped_effects .. " unlock-recipe effect(s), re-linked " .. relinked_technologies
    .. " technolog(ies) and re-priced " .. repriced_technologies .. ".")
