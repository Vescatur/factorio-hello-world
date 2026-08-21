-- enemies.lua -- nothing to contest and no territory to expand into, so
-- biters, spitters, worms and nests are taken out of play.
--
-- ENGINE LIMIT: they are hidden and stripped of autoplace, never deleted. `unit`,
-- `unit-spawner` and `turret` each require at least 1 prototype or save files will
-- not load, and `turret`'s only vanilla members are the four worms (the player-built
-- turrets are all subtypes). Keeping a token one and deleting the rest is worse:
-- `biter-spawner.result_units` names all four biter sizes, and each creature owns a
-- corpse, a death explosion and an acid attack. Nothing spawns and nothing is
-- listed, so the result in play is the same.

local sizes = { "small", "medium", "big", "behemoth" }

-- Grouped by the data.raw category each lives in. Names are built from `sizes` the
-- way vanilla generates these prototypes.
local enemies_by_category = {
    ["unit"] = {},
    ["unit-spawner"] = { "biter-spawner", "spitter-spawner" },
    ["turret"] = {},
}

for _, size in ipairs(sizes) do
    table.insert(enemies_by_category["unit"], size .. "-biter")
    table.insert(enemies_by_category["unit"], size .. "-spitter")
    table.insert(enemies_by_category["turret"], size .. "-worm-turret")
end

-- Every enemy autoplace in vanilla routes through one control named "enemy-base",
-- so there is a single control to remove.
local enemy_control = "enemy-base"
local neutered_enemies = 0

-- Only nests and worms carry an autoplace -- creatures are spawned by a nest -- but
-- all of them are hidden so none are listed in Factoriopedia.
for category, names in pairs(enemies_by_category) do
    for _, name in ipairs(names) do
        local enemy = data.raw[category] and data.raw[category][name]
        if enemy then
            enemy.autoplace = nil
            enemy.hidden = true
            enemy.hidden_in_factoriopedia = true
            neutered_enemies = neutered_enemies + 1
        end
    end
end

-- The control also carries `related_to_fight_achievements = true`, so removing it is
-- what stops the engine expecting the achievements deleted below.
data.raw["autoplace-control"][enemy_control] = nil

-- Asserted rather than silently skipped: if this shape ever changes, enemy bases
-- would quietly come back on new maps.
local nauvis_map_gen = assert(data.raw.planet.nauvis.map_gen_settings,
    "remove_enemies: nauvis has no map_gen_settings to clear enemy bases from")
assert(nauvis_map_gen.autoplace_controls, "remove_enemies: nauvis has no autoplace_controls")
assert(nauvis_map_gen.autoplace_settings and nauvis_map_gen.autoplace_settings.entity,
    "remove_enemies: nauvis has no entity autoplace_settings")

nauvis_map_gen.autoplace_controls[enemy_control] = nil
nauvis_map_gen.autoplace_settings.entity.settings[enemy_control] = nil

for _, preset in pairs(data.raw["map-gen-presets"]["default"] or {}) do
    if type(preset) == "table" and preset.basic_settings
        and preset.basic_settings.autoplace_controls then
        preset.basic_settings.autoplace_controls[enemy_control] = nil
    end
end

-- The death world presets are nothing but a heavier enemy-base setting, so without
-- enemies they are two identical copies of the default.
data.raw["map-gen-presets"]["default"]["death-world"] = nil
data.raw["map-gen-presets"]["default"]["death-world-marathon"] = nil

-- An existing save keeps whatever nests it generated, so evolution and expansion are
-- disabled rather than left running against nothing. Pollution's only remaining job
-- was feeding evolution.
local map_settings = data.raw["map-settings"]["map-settings"]
map_settings.enemy_evolution.enabled = false
map_settings.enemy_expansion.enabled = false
map_settings.pollution.enabled = false

if data.raw["airborne-pollutant"] and data.raw["airborne-pollutant"]["pollution"] then
    data.raw["airborne-pollutant"]["pollution"].affects_evolution = false
end

local function delete_from_any_category(name)
    for category_name, category in pairs(data.raw) do
        -- Never touch item/recipe/technology: those are matched by name in
        -- removals/military.lua, and an achievement name must not take an item with
        -- it if the two ever collide.
        local is_off_limits = category_name == "item" or category_name == "recipe"
            or category_name == "technology"
        if type(category) == "table" and not is_off_limits and category[name] then
            category[name] = nil
            return true
        end
    end
    return false
end

-- Now unwinnable, which is worse than absent.
local combat_achievements = {
    "it-stinks-and-they-dont-like-it",  -- group-attack, names all 8 biters/spitters
    "pest-control",                     -- kill-achievement, names both spawners
    "steamrolled",
    "art-of-siege",
    "keeping-your-hands-clean",
    "destroyer-of-worlds",
    "minions",
    "raining-bullets",
    "research-with-military",
    "arachnophilia",
    "pyromaniac",
    "run-forrest-run",
    "golem",
    "watch-your-step",
}

local deleted_achievements = 0

for _, name in ipairs(combat_achievements) do
    if delete_from_any_category(name) then
        deleted_achievements = deleted_achievements + 1
    end
end

-- Each plays out a biter attack or a military defence behind the main menu.
-- base/data.lua fills these in, so they are present by the time this runs.
local combat_menu_simulations = {
    "nauvis_mining_defense",
    "nauvis_artillery",
    "nauvis_biter_base_spidertron",
    "nauvis_biter_base_artillery",
    "nauvis_biter_base_laser_defense",
    "nauvis_biter_base_player_attack",
    "nauvis_biter_base_steamrolled",
    "nauvis_chase_player",
    "nauvis_big_defense",
    "nauvis_brutal_defeat",
    "nauvis_spider_ponds",
}

local deleted_simulations = 0
local main_menu_simulations = data.raw["utility-constants"]["default"].main_menu_simulations

if main_menu_simulations then
    for _, name in ipairs(combat_menu_simulations) do
        if main_menu_simulations[name] then
            main_menu_simulations[name] = nil
            deleted_simulations = deleted_simulations + 1
        end
    end
end

-- Teaches manual targeting: its trigger can never fire and its simulation spawns
-- biters.
data.raw["tips-and-tricks-item"]["shoot-targeting"] = nil

log("[remove-enemies] Neutered " .. neutered_enemies .. " enemy prototype(s), deleted "
    .. deleted_achievements .. " combat achievement(s) and "
    .. deleted_simulations .. " main-menu simulation(s).")
