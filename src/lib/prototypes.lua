-- prototypes.lua
--
-- The four moves every removal service makes, in the order they have to happen:
-- delete the recipes, hide the items they built, delete the technologies that
-- unlocked them, and re-link everything that pointed at what is now gone.
--
-- These started life inside remove_military.lua, which is still the fullest
-- worked example of using them. They moved here when remove_ore.lua,
-- remove_electricity.lua and remove_uranium.lua all needed the same four steps
-- and the prerequisite re-link in particular is too subtle to write twice.
--
-- Everything here is data-stage only and mutates `data.raw` in place.

local prototypes = {}


-- ============================================================
-- Recipes
-- ============================================================

-- Delete recipes and strip every technology effect that unlocked one, because
-- an unlock-recipe effect naming a recipe that no longer exists is a load
-- error. Returns the set actually removed, which the technology and dependent
-- sweeps below both take as input.
function prototypes.delete_recipes(recipe_names)
    local removed = {}
    local count = 0

    for _, recipe_name in ipairs(recipe_names) do
        if data.raw.recipe[recipe_name] then
            data.raw.recipe[recipe_name] = nil
            removed[recipe_name] = true
            count = count + 1
        end
    end

    for _, tech in pairs(data.raw.technology) do
        if tech.effects then
            local kept = {}
            for _, effect in pairs(tech.effects) do
                if not (effect.type == "unlock-recipe" and removed[effect.recipe]) then
                    table.insert(kept, effect)
                end
            end
            tech.effects = kept
        end
    end

    return removed, count
end


-- Drop a single unlock-recipe effect from one technology, leaving the recipe
-- itself alone. For the case where a technology unlocks several things and only
-- some of them are going.
function prototypes.drop_unlock(technology_name, recipe_name)
    local tech = data.raw.technology[technology_name]
    if not tech or not tech.effects then
        return false
    end

    local kept = {}
    local dropped = false
    for _, effect in pairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
            dropped = true
        else
            table.insert(kept, effect)
        end
    end
    tech.effects = kept
    return dropped
end


-- ============================================================
-- Items
-- ============================================================

-- Hide an item without deleting it. The prototype stays because other
-- prototypes reference it by name -- `lab.inputs`, `car.guns`, tips-and-tricks
-- triggers -- but it leaves the crafting menu and Factoriopedia so there is no
-- uncraftable clutter.
--
-- Items are spread over a dozen categories (plain "item", but also gun, ammo,
-- capsule, armor, item-with-entity-data, ...). Rather than list them, this looks
-- for a prototype of that name carrying a `stack_size`, which every item has and
-- no entity does. That keeps the entity visible in Factoriopedia while its item
-- disappears from the crafting menu.
function prototypes.hide_item(item_name)
    for _, category in pairs(data.raw) do
        local prototype = type(category) == "table" and category[item_name]
        if type(prototype) == "table" and prototype.stack_size then
            prototype.hidden = true
            prototype.hidden_in_factoriopedia = true
            return true
        end
    end
    return false
end


function prototypes.hide_items(item_names)
    local count = 0
    for _, item_name in ipairs(item_names) do
        if prototypes.hide_item(item_name) then
            count = count + 1
        end
    end
    return count
end


-- ============================================================
-- Technologies
-- ============================================================

-- Delete technologies, remembering what each one depended on so
-- relink_prerequisites can walk through it afterwards. Returns that map.
function prototypes.delete_technologies(technology_names)
    local deleted = {}
    local count = 0

    for _, tech_name in ipairs(technology_names) do
        local tech = data.raw.technology[tech_name]
        if tech then
            deleted[tech_name] = tech.prerequisites or {}
            data.raw.technology[tech_name] = nil
            count = count + 1
        end
    end

    return deleted, count
end


-- A surviving technology that required a deleted one inherits that technology's
-- own prerequisites instead, repeatedly, until nothing deleted is left.
--
-- Inheriting wholesale drags in ancestors the surviving prerequisites already
-- imply, and every redundant entry is another arrow drawn across the technology
-- screen. So a re-linked list is reduced afterwards: a prerequisite is dropped
-- if another prerequisite already depends on it. Only re-linked technologies are
-- touched; vanilla's own arrows, redundant or not, are deliberate.
function prototypes.relink_prerequisites(deleted)
    local function resolve(prerequisites)
        local resolved = {}
        local seen = {}
        local pending = {}

        for _, name in ipairs(prerequisites) do
            table.insert(pending, name)
        end

        while #pending > 0 do
            local name = table.remove(pending, 1)
            if deleted[name] then
                -- Walk through the dead technology to whatever it depended on.
                for _, inherited in ipairs(deleted[name]) do
                    table.insert(pending, inherited)
                end
            elseif not seen[name] then
                seen[name] = true
                table.insert(resolved, name)
            end
        end

        return resolved
    end

    -- Every technology `name` depends on, directly or transitively. Deleted
    -- names are walked through the same way resolve does, so an ancestor
    -- reached only via a dead technology still counts as implied.
    local function collect_ancestors(name, found, depth)
        if depth > 64 then
            return found
        end
        local prerequisites = deleted[name]
            or (data.raw.technology[name] and data.raw.technology[name].prerequisites)
        for _, prerequisite in ipairs(prerequisites or {}) do
            if not found[prerequisite] then
                found[prerequisite] = true
                collect_ancestors(prerequisite, found, depth + 1)
            end
        end
        return found
    end

    local function drop_implied(prerequisites)
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

    local count = 0
    for _, tech in pairs(data.raw.technology) do
        if tech.prerequisites then
            local needs_relink = false
            for _, name in ipairs(tech.prerequisites) do
                if deleted[name] then
                    needs_relink = true
                    break
                end
            end
            if needs_relink then
                tech.prerequisites = drop_implied(resolve(tech.prerequisites))
                count = count + 1
            end
        end
    end

    return count
end


-- ============================================================
-- Everything else that pointed at what we removed
-- ============================================================

-- Two kinds of dangling reference, both hard load errors:
--
--   * `technology_to_unlock` -- the quick-bar shortcuts. Clearing the field
--     instead of deleting the prototype would be wrong: an unlock-less shortcut
--     is available from the start, the opposite of what we want for a shortcut
--     to something that can no longer be built.
--
--   * a nested trigger tree naming a deleted technology or recipe -- the
--     tips-and-tricks entries and the achievements.
--
-- Swept by field rather than by name so entries added by a future Factorio
-- version are caught too. Only the prototype families that exist to describe a
-- trigger are swept: a blanket pass over data.raw would risk deleting something
-- whose recipe reference is incidental rather than the point of it.
function prototypes.delete_dangling_dependents(deleted_technologies, removed_recipes)
    local function references_removed(value, depth)
        if type(value) ~= "table" or depth > 8 then
            return false
        end
        if type(value.technology) == "string" and deleted_technologies[value.technology] then
            return true
        end
        if type(value.recipe) == "string" and removed_recipes[value.recipe] then
            return true
        end
        for _, nested in pairs(value) do
            if references_removed(nested, depth + 1) then
                return true
            end
        end
        return false
    end

    local function is_trigger_driven(category_name)
        return category_name == "tips-and-tricks-item"
            or category_name:match("achievement$") ~= nil
    end

    local count = 0
    for category_name, category in pairs(data.raw) do
        if type(category) == "table" then
            for name, prototype in pairs(category) do
                if type(prototype) == "table" then
                    local unlock = prototype.technology_to_unlock
                    local dangling_unlock = type(unlock) == "string" and deleted_technologies[unlock]
                    local dangling_trigger = is_trigger_driven(category_name)
                        and references_removed(prototype.trigger, 0)
                    if dangling_unlock or dangling_trigger then
                        category[name] = nil
                        count = count + 1
                    end
                end
            end
        end
    end

    -- A tip can name another tip in `dependencies`, and the engine refuses to
    -- load one that points at a tip which no longer exists. Cascade until
    -- stable: deleting the electric-network tip takes connect-switch,
    -- electric-pole-connections, low-power and steam-power with it, which is
    -- right -- they are all about a mechanic that no longer exists.
    local tips = data.raw["tips-and-tricks-item"] or {}
    local removed_a_tip = true

    while removed_a_tip do
        removed_a_tip = false
        for name, tip in pairs(tips) do
            for _, dependency in pairs(tip.dependencies or {}) do
                if not tips[dependency] then
                    tips[name] = nil
                    count = count + 1
                    removed_a_tip = true
                    break
                end
            end
        end
    end

    return count
end


return prototypes
