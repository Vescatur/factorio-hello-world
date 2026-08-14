-- remove_enemies.lua
--
-- Tycoon has nothing to defend. There are no ores to contest and no territory
-- to expand into, so an enemy that walks in and chews on the factory is not a
-- challenge the mod is trying to pose -- it is a leftover from a game about
-- expansion. Biters, spitters, worms and nests are taken out of play.
--
-- APPROACH:
--
--   1. Worldgen is neutralised, the same surfaces per name that remove_ore.lua
--      clears for a resource: the prototype's own `autoplace`, the
--      `autoplace-control` prototype, nauvis `map_gen_settings`, and every
--      map-gen preset. Every enemy autoplace in vanilla routes through one
--      control named "enemy-base" (see base/prototypes/entity/
--      enemy-autoplace-utils.lua), so there is a single control to remove. The
--      enemies are hidden in the same pass, so none are listed in Factoriopedia.
--
--   2. The enemy simulation (evolution, expansion) is switched off in
--      map-settings, so a save that already has nests does not keep escalating.
--
--   3. Everything that pointed at an enemy is cleaned up: the fight
--      achievements, the biter main-menu simulations, and the combat
--      tips-and-tricks entry.
--
-- WHY THE PROTOTYPES ARE NOT DELETED:
--
--   The intent was to delete them outright. The engine will not allow it:
--
--     'entity' prototype type 'unit' requires at least 1 prototype be defined
--     so save files can be loaded.
--
--   The same applies to `unit-spawner` and to `turret` -- and vanilla's only
--   prototypes of that exact `turret` type are the four worms, since the
--   player-built turrets are all subtypes (ammo-turret, electric-turret,
--   fluid-turret, artillery-turret). So at least one biter, one nest and one worm
--   have to exist no matter what the mod wants.
--
--   Keeping a token one of each and deleting the rest would be worse, not better:
--   `biter-spawner.result_units` names all four biter sizes, and each creature
--   owns a corpse, a death explosion and an acid attack, so a partial deletion
--   just trades a clean absence for a web of dangling references. The whole
--   family is therefore kept and neutered. The player-visible result is
--   identical -- nothing spawns, nothing is listed, nothing can be met -- and it
--   costs no reference risk, which is the same trade-off remove_electricity.lua
--   makes when it keeps entities and deletes only recipes. It also means an
--   existing save still loads.
--
-- Sizes are spelled once and the names are built from them, the way vanilla
-- generates these prototypes in the first place.

local sizes = { "small", "medium", "big", "behemoth" }

-- Every enemy, grouped by the data.raw category it lives in: the creatures that
-- walk in and attack, the nests that produce them, and the worms.
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

-- ============================================================
-- STEP 1: Stop enemies generating, and hide them
-- ============================================================
local enemy_control = "enemy-base"
local neutered_enemies = 0

-- Only the nests and worms carry an autoplace -- the creatures are spawned by a
-- nest rather than placed on the map -- but every one of them is hidden, so none
-- of them are listed in Factoriopedia.
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

-- The control also carries `related_to_fight_achievements = true`, so removing
-- it is what tells the engine to stop expecting the fight achievements that
-- step 3 deletes.
data.raw["autoplace-control"][enemy_control] = nil

-- map_gen_settings is optional on a planet in general, but nauvis always has one
-- and both nested tables with it -- remove_ore.lua relies on exactly the same
-- shape. Asserted rather than silently skipped: if this is ever not true, enemy
-- bases would quietly come back on new maps.
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

-- The death world presets are nothing but a heavier enemy-base setting, so
-- without enemies they are two identical copies of the default preset.
data.raw["map-gen-presets"]["default"]["death-world"] = nil
data.raw["map-gen-presets"]["default"]["death-world-marathon"] = nil

-- ============================================================
-- STEP 2: Switch off the enemy simulation
--
-- An existing save keeps whatever nests it already generated, so evolution and
-- expansion are disabled rather than left running against nothing. Pollution
-- goes with them: its only remaining job was feeding evolution, and with no
-- electricity there is almost nothing left to produce it.
-- ============================================================
local map_settings = data.raw["map-settings"]["map-settings"]
map_settings.enemy_evolution.enabled = false
map_settings.enemy_expansion.enabled = false
map_settings.pollution.enabled = false

if data.raw["airborne-pollutant"] and data.raw["airborne-pollutant"]["pollution"] then
    data.raw["airborne-pollutant"]["pollution"].affects_evolution = false
end

-- ============================================================
-- STEP 3: Remove what referenced them
--
-- The fight achievements go because they are now unwinnable, not because they
-- are broken -- an achievement for clearing a nest, in a game with no nests, is
-- worse than no achievement at all. The menu simulations and the combat tip go
-- because they would still play out a biter attack in front of the player.
-- ============================================================
local function delete_from_any_category(name)
    for category_name, category in pairs(data.raw) do
        -- Never touch item/recipe/technology: those are matched by name in
        -- remove_military.lua, and an achievement name must not take an item
        -- with it if the two ever collide.
        local is_off_limits = category_name == "item" or category_name == "recipe"
            or category_name == "technology"
        if type(category) == "table" and not is_off_limits and category[name] then
            category[name] = nil
            return true
        end
    end
    return false
end

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

-- base/data.lua fills these in, so they are already present by the time this
-- runs. Each one plays out a biter attack or a military defence behind the main
-- menu.
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

-- Teaches manual targeting. Its trigger is a group attack that can never fire,
-- and its simulation spawns biters.
data.raw["tips-and-tricks-item"]["shoot-targeting"] = nil

log("[remove-enemies] Neutered " .. neutered_enemies .. " enemy prototype(s), deleted "
    .. deleted_achievements .. " combat achievement(s) and "
    .. deleted_simulations .. " main-menu simulation(s).")
