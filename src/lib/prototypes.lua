-- prototypes.lua -- the four moves every removal service makes, in the order they
-- have to happen: delete the recipes, hide the items they built, delete the
-- technologies that unlocked them, re-link what pointed at any of it.
--
-- Two have an inverse here too -- add_unlock and unhide_item -- because loaders.lua
-- puts back something base ships hidden.
--
-- Data-stage only; mutates `data.raw` in place.

local prototypes = {}


-- Also strips every technology effect that unlocked one: an unlock-recipe effect
-- naming a recipe that no longer exists is a load error. Returns the set actually
-- removed, which the technology and dependent sweeps below take as input.
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


-- Hang a recipe off a technology that does not name it yet. Idempotent: a second
-- call is a no-op rather than a duplicate effect, which the engine tolerates but
-- which shows twice in the technology screen.
function prototypes.add_unlock(technology_name, recipe_name)
    local tech = data.raw.technology[technology_name]
    assert(tech, "prototypes: no technology named '" .. technology_name .. "'")

    tech.effects = tech.effects or {}
    for _, effect in pairs(tech.effects) do
        if effect.type == "unlock-recipe" and effect.recipe == recipe_name then
            return false
        end
    end

    table.insert(tech.effects, { type = "unlock-recipe", recipe = recipe_name })
    return true
end


-- Find an item prototype by name, whatever kind of item it is. Items are spread
-- over a dozen categories -- gun, ammo, capsule, armor, module, rail-planner,
-- item-with-entity-data -- so this looks for a prototype carrying a `stack_size`,
-- which every item has and no entity does.
--
-- Use this instead of `data.raw.item[name]` wherever the name comes from a table
-- someone might extend: `data.raw.item.car` is nil (item-with-entity-data), and so
-- are `power-armor-mk2` (armor) and `rail` (rail-planner).
function prototypes.find_item(item_name)
    for _, category in pairs(data.raw) do
        local prototype = type(category) == "table" and category[item_name]
        if type(prototype) == "table" and prototype.stack_size then
            return prototype
        end
    end
    return nil
end


-- Read off the prototype rather than assembling a path into __base__/graphics/icons/:
-- a barrel has no file of its own (it is a three-layer composite) and plenty of items
-- are named differently from their sprite.
function prototypes.icons_of(item_name)
    local item = prototypes.find_item(item_name)
    assert(item, "prototypes: no item prototype named '" .. item_name .. "'")

    if item.icons then
        return util.table.deepcopy(item.icons)
    end
    return { { icon = item.icon, icon_size = item.icon_size or 64 } }
end


-- A tinted copy of another assembling machine's graphics, for the three Tycoon
-- machines. Shadows are left alone -- tinting them turns the shadow into a coloured
-- smear. `animation` is optional on a graphics set, so it is asserted: if a future
-- Factorio restructures assembling-machine-1, this says so.
function prototypes.tinted_machine_graphics(source_name, tint)
    local source = data.raw["assembling-machine"][source_name]
    assert(source, "prototypes: no assembling machine named '" .. source_name .. "'")

    local graphics = util.table.deepcopy(source.graphics_set)
    assert(graphics and graphics.animation and graphics.animation.layers,
        "prototypes: '" .. source_name .. "' has no layered animation to tint")

    for _, layer in pairs(graphics.animation.layers) do
        if not layer.draw_as_shadow then
            layer.tint = tint
        end
    end
    return graphics
end


-- The connector definitions (one per direction, hence a four-tuple) and the reach,
-- for a machine reusing that machine's sprite. Returned as a pair because both are
-- needed: a connector without a `circuit_wire_max_distance` leaves a connection point
-- no wire can reach, and the engine reports nothing.
--
-- Shared rather than copied, the way vanilla shares one connector definition across
-- assembling-machine 1, 2 and 3.
function prototypes.machine_circuit_connection(source_name)
    local source = data.raw["assembling-machine"][source_name]
    assert(source, "prototypes: no assembling machine named '" .. source_name .. "'")
    assert(source.circuit_connector and source.circuit_wire_max_distance,
        "prototypes: '" .. source_name .. "' has no circuit connector to copy")

    return source.circuit_connector, source.circuit_wire_max_distance
end


-- Hide an item without deleting it. The prototype stays because others reference it
-- by name -- `lab.inputs`, `car.guns`, tips-and-tricks triggers -- but it leaves the
-- crafting menu and Factoriopedia so there is no uncraftable clutter.
function prototypes.hide_item(item_name)
    local prototype = prototypes.find_item(item_name)
    if not prototype then
        return false
    end
    prototype.hidden = true
    prototype.hidden_in_factoriopedia = true
    return true
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


-- Cleared to nil rather than set to false, so the prototype looks exactly like one
-- that was never hidden.
function prototypes.unhide_item(item_name)
    local prototype = prototypes.find_item(item_name)
    if not prototype then
        return false
    end
    prototype.hidden = nil
    prototype.hidden_in_factoriopedia = nil
    return true
end


-- Delete technologies, remembering what each depended on so relink_prerequisites can
-- walk through it afterwards.
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


-- A surviving technology that required a deleted one inherits that technology's own
-- prerequisites instead, repeatedly, until nothing deleted is left.
--
-- Inheriting wholesale drags in ancestors the surviving prerequisites already imply,
-- and every redundant entry is another arrow across the technology screen. So a
-- re-linked list is reduced afterwards. Only re-linked technologies are touched;
-- vanilla's own arrows, redundant or not, are deliberate.
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

    -- Everything `name` depends on, directly or transitively. Deleted names are
    -- walked through the same way, so an ancestor reached only via a dead technology
    -- still counts as implied.
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


-- Two kinds of dangling reference, both hard load errors:
--
--   * `technology_to_unlock` -- the quick-bar shortcuts. Clearing the field instead
--     of deleting the prototype would be wrong: an unlock-less shortcut is available
--     from the start, the opposite of what we want.
--   * a nested trigger tree naming a deleted technology or recipe -- the
--     tips-and-tricks entries and the achievements.
--
-- Swept by field rather than by name so a future Factorio version's entries are
-- caught too, but only over prototype families that exist to describe a trigger: a
-- blanket pass over data.raw could delete something whose recipe reference is
-- incidental rather than the point of it.
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

    -- A tip can name another tip in `dependencies`, and the engine refuses to load one
    -- pointing at a tip that no longer exists. Cascade until stable: deleting the
    -- electric-network tip takes connect-switch, electric-pole-connections, low-power
    -- and steam-power with it, which is right.
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
