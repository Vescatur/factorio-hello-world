-- cost.lua -- the load-time check that the authored refunds still cover the bill.
--
-- The refund numbers in services/customers.lua are authored, not solved: they
-- are literal, diffable, and tunable without reasoning about a solver. The
-- danger of authored numbers is that they rot. Change a shop price, move a toll,
-- take a Factorio update that re-costs a vanilla recipe, and the refund quietly
-- stops covering what the order actually costs -- an invisible leak, not a
-- crash.
--
-- So this module re-solves the recipe graph on every load and asserts that no
-- refund has fallen behind. It emits no prototypes. It is a smoke alarm.
--
-- WHAT IT SOLVES. For every ordered item, the cost of one unit expressed as a
-- vector over the six denominations: the raw materials at the shop's prices,
-- plus one coin for every toll anywhere in the recipe tree. Water is free (an
-- offshore pump is not a recipe). Where an item has several producing recipes
-- the cheapest wins, since that is the route a player takes.
--
-- WHAT IT DOES NOT DO. It does not credit byproducts -- each output of a
-- multi-output recipe is priced as if the whole recipe ran for it, which
-- overprices in the player's favour and cannot mislead. And it does not fix
-- anything: when it fires, the fix is to re-run tools/solve-economy and paste
-- the new numbers in.
--
-- Runs in data-updates, after shop.lua has set the prices and tolls.lua has
-- charged them.

local customers = require("services.customers")
local currency = require("services.currency")
local resources = require("services.shop")
local tolls = require("services.tolls")

local ladder = tolls.ladder
local rank = tolls.rank

-- Comparing two cost vectors needs a scalar, and any scalar is a design-time
-- comparator rather than an exchange rate: nothing in the game converts one
-- denomination into another, and nothing here does either. Weighting each rung
-- far above the one below means "cheapest" prefers the route that needs the
-- lowest licence, which is the route a player actually takes.
local function scalarise(vector)
    local total = 0
    for at = 1, #ladder do
        total = total + (vector[at] or 0) * 100 ^ (at - 1)
    end
    return total
end

local function key_of(ingredient_type, name)
    return (ingredient_type or "item") .. ":" .. name
end


-- ============================================================
-- Seeds -- everything the factory cannot make for itself
-- ============================================================
local seeds = {}

for _, resource in ipairs(resources) do
    local at = rank[resource.currency]
    assert(at, "cost: the shop prices '" .. resource.item .. "' in '" .. resource.currency
        .. "', which is not a denomination")
    local vector = {}
    vector[at] = resource.price / resource.amount
    seeds[key_of("item", resource.item)] = vector
end

-- Water is free and unlimited: an offshore pump draws it straight off the map,
-- so the recipe graph has no producer for it and anything downstream of a
-- chemical plant would price as unreachable. In 2.1 the pump has no fluid of its
-- own -- it takes whatever the tile under it holds -- so read the tiles, and any
-- future free-at-the-tap fluid is picked up the same way.
local free_fluids = {}
for _, tile in pairs(data.raw.tile or {}) do
    if tile.fluid then
        free_fluids[tile.fluid] = true
    end
end
for fluid in pairs(free_fluids) do
    seeds[key_of("fluid", fluid)] = {}
end


-- ============================================================
-- Producers
-- ============================================================
local own_categories = { entrance = true, import = true, export = true, parameters = true }

local producers = {}

for recipe_name, recipe in pairs(data.raw.recipe) do
    local skip = false
    for _, category in pairs(recipe.categories or { "crafting" }) do
        if own_categories[category] then
            skip = true
        end
    end
    if not skip then
        for _, result in pairs(recipe.results or {}) do
            local amount = result.amount
            if not amount then
                amount = ((result.amount_min or 1) + (result.amount_max or 1)) / 2
            end
            amount = amount * (result.probability or 1)
            if amount > 0 then
                local key = key_of(result.type, result.name)
                producers[key] = producers[key] or {}
                table.insert(producers[key], { recipe = recipe, amount = amount })
            end
        end
    end
end

-- Drop the recipes nothing can ever unlock: disabled, and named by no
-- technology. The three loaders are the vanilla example -- pricing an item
-- through one would be pricing a route the player has no access to.
local unlockable = {}
for _, tech in pairs(data.raw.technology) do
    for _, effect in pairs(tech.effects or {}) do
        if effect.type == "unlock-recipe" then
            unlockable[effect.recipe] = true
        end
    end
end

for key, list in pairs(producers) do
    local kept = {}
    for _, producer in ipairs(list) do
        local recipe = producer.recipe
        if recipe.enabled ~= false or unlockable[recipe.name] then
            table.insert(kept, producer)
        end
    end
    producers[key] = kept
end


-- ============================================================
-- The solve
-- ============================================================
local money = {}
for _, name in ipairs(ladder) do
    money[name] = true
end

local solved = {}

local function cost_of(key, visiting)
    local seed = seeds[key]
    if seed then
        return seed
    end
    if solved[key] ~= nil then
        return solved[key] or nil
    end
    if visiting[key] then
        return nil          -- a cycle; this route prices itself
    end

    visiting[key] = true
    local best, best_score = nil, nil

    for _, producer in ipairs(producers[key] or {}) do
        local accumulated = {}
        local reachable = true

        for _, ingredient in pairs(producer.recipe.ingredients or {}) do
            if money[ingredient.name] then
                -- The toll. Money is never bought, only earned, so it is priced
                -- at face value rather than resolved any further.
                local at = rank[ingredient.name]
                accumulated[at] = (accumulated[at] or 0) + (ingredient.amount or 1)
            else
                local nested = cost_of(key_of(ingredient.type, ingredient.name), visiting)
                if not nested then
                    reachable = false
                    break
                end
                for at = 1, #ladder do
                    if nested[at] then
                        accumulated[at] = (accumulated[at] or 0) + nested[at] * (ingredient.amount or 1)
                    end
                end
            end
        end

        if reachable then
            local per_unit = {}
            for at = 1, #ladder do
                if accumulated[at] then
                    per_unit[at] = accumulated[at] / producer.amount
                end
            end
            local score = scalarise(per_unit)
            if not best_score or score < best_score then
                best, best_score = per_unit, score
            end
        end
    end

    visiting[key] = nil
    solved[key] = best or false
    return best
end


-- ============================================================
-- The assertion
-- ============================================================
local denomination_of_key = {
    penny = currency.penny,
    silver_coin = currency.silver_coin,
    banknote = currency.banknote,
    bond = currency.bond,
    gold_bar = currency.gold_bar,
    diamond = currency.diamond,
}

local function describe(vector)
    local parts = {}
    for at = 1, #ladder do
        if vector[at] and vector[at] > 0.0005 then
            table.insert(parts, string.format("%.2f %s", vector[at], ladder[at]))
        end
    end
    return #parts > 0 and table.concat(parts, " + ") or "nothing"
end

local shortfalls = 0

for _, order in ipairs(customers.orders) do
    local unit = cost_of(key_of("item", order.item), {})
    assert(unit, "cost: '" .. order.item .. "' cannot be made from anything the shop sells")

    -- What the order costs in total, and what the authored table pays back.
    local owed = {}
    for at = 1, #ladder do
        owed[at] = (unit[at] or 0) * order.amount
    end

    local refunded = {}
    for denomination, amount in pairs(order.refund) do
        local name = denomination_of_key[denomination]
        assert(name, "cost: '" .. order.item .. "' refunds '" .. denomination
            .. "', which is not a denomination")
        refunded[rank[name]] = amount
    end

    for at = 1, #ladder do
        local due = owed[at] or 0
        local paid = refunded[at] or 0
        -- A hundredth of a coin of slack, so floating point cannot manufacture a
        -- shortfall out of an exact match.
        if paid + 0.01 < due then
            shortfalls = shortfalls + 1
            log("[cost] SHORT: " .. order.amount .. " x " .. order.item .. " costs "
                .. describe(owed) .. ", refund pays " .. describe(refunded))
            break
        end
    end

    log("[cost] " .. order.amount .. " x " .. order.item .. " costs " .. describe(owed))
end

assert(shortfalls == 0, "cost: " .. shortfalls
    .. " order(s) refund less than they cost -- see the [cost] SHORT lines above. "
    .. "The authored refunds in services/customers.lua have gone stale.")

log("[cost] All " .. #customers.orders .. " refunds cover their order.")
