-- tolls.lua -- money is an ingredient, not just a research cost.
--
-- Making a thing costs a coin. Which coin is not a hand-written list: it is
-- DERIVED from the technology that unlocks the recipe. A recipe unlocked by a
-- technology that charges Pennies and Silver takes a Silver Coin, because Silver
-- is the highest denomination on that technology's invoice, and owning that
-- licence is what let you build the thing at all.
--
-- The effect is that every assembler needs a money input line. The bus stops
-- being a material bus and becomes a material bus plus a money bus, and the coin
-- comes back in the refund of whatever you eventually deliver -- so what the
-- toll really costs is working capital: a float big enough to keep the machines
-- running between deliveries.
--
-- ============================================================
-- WHAT IS EXEMPT, AND WHY
--
-- The rule is: you pay a toll to make a THING, not to move a fluid around.
--
--   * no item result -- oil processing, both crackings, sulfuric acid,
--     lubricant, solid fuel. These are continuous fluid conversions running
--     thousands of crafts, and an inserter feeding coins into a building that
--     otherwise takes only pipes is neither playable nor sensible. Plastic,
--     sulfur, batteries and explosives all still pay: they yield items.
--
--   * the `smelting` category -- this one is not taste, it is the engine. Every
--     furnace has `source_inventory_size = 1`, so a smelting recipe physically
--     cannot have a second ingredient. Tolling `steel-plate` would not raise an
--     error; it would quietly make steel uncraftable in every furnace in the
--     game, and with it the entire mid-game. Never remove this guard.
--
--   * barrel fill and empty recipes -- a coin every time you unbarrel oil is a
--     tax on logistics rather than on production, and it can strand the oil
--     chain outright.
--
--   * recipes with no unlocking technology, and recipes unlocked only by a
--     trigger technology (which has no `unit`, so there is no invoice to read a
--     denomination off) -- this is what keeps the bootstrap alive. A new game
--     has no money at all, so the wooden chest, the transport belt, the stone
--     furnace and the smelting recipes have to stay free. That falls out of the
--     rule rather than being special-cased.
--
--   * the mod's own categories -- money can never be an ingredient of a recipe
--     that produces money. The ordering in data-updates.lua already guarantees
--     it; the guard is here so a future reordering fails loudly instead of
--     charging the player a coin to spend a coin.
-- ============================================================

local currency = require("services.currency")

-- Cheapest denomination first. A technology's toll is the last of these that
-- appears on its invoice.
local ladder = {
    currency.penny,
    currency.silver_coin,
    currency.banknote,
    currency.bond,
    currency.gold_bar,
    currency.diamond,
}

local rank = {}
for index, name in ipairs(ladder) do
    rank[name] = index
end

local own_categories = { entrance = true, import = true, export = true }


-- The highest denomination on a technology's invoice, or nil for a trigger
-- technology, which has no invoice at all.
local function invoice_rank(tech)
    if not tech.unit then
        return nil
    end
    local highest = nil
    for _, ingredient in pairs(tech.unit.ingredients or {}) do
        -- Both spellings are legal: {"name", amount} and {name = ..., amount = ...}.
        local name = ingredient[1] or ingredient.name
        local at = rank[name]
        if at and (not highest or at > highest) then
            highest = at
        end
    end
    return highest
end


-- The cheapest licence that unlocks this recipe. `min`, not `max`: the player
-- only ever needed one of them, so the cheapest is what they actually paid.
local toll_rank = {}

for _, tech in pairs(data.raw.technology) do
    local at = invoice_rank(tech)
    if at then
        for _, effect in pairs(tech.effects or {}) do
            if effect.type == "unlock-recipe" then
                local current = toll_rank[effect.recipe]
                if not current or at < current then
                    toll_rank[effect.recipe] = at
                end
            end
        end
    end
end


local function produces_an_item(recipe)
    for _, result in pairs(recipe.results or {}) do
        if (result.type or "item") == "item" then
            return true
        end
    end
    return false
end


local function is_barrel_recipe(recipe_name)
    return recipe_name:match("%-barrel$") ~= nil or recipe_name:match("^empty%-") ~= nil
end


local function exemption_for(recipe_name, recipe)
    for _, category in pairs(recipe.categories or { "crafting" }) do
        if category == "smelting" then
            return "smelting"
        end
        if own_categories[category] then
            return "own-category"
        end
    end
    if is_barrel_recipe(recipe_name) then
        return "barrel"
    end
    if not produces_an_item(recipe) then
        return "fluid-only"
    end
    return nil
end


local applied = {}
local histogram = {}
local exempted = {}

for recipe_name, recipe in pairs(data.raw.recipe) do
    local at = toll_rank[recipe_name]
    if at then
        local exemption = exemption_for(recipe_name, recipe)
        if exemption then
            exempted[exemption] = (exempted[exemption] or 0) + 1
        else
            -- Idempotence: never charge twice if this module is somehow run again.
            local already = false
            for _, ingredient in pairs(recipe.ingredients or {}) do
                if rank[ingredient.name] then
                    already = true
                    break
                end
            end
            if not already then
                recipe.ingredients = recipe.ingredients or {}
                table.insert(recipe.ingredients, { type = "item", name = ladder[at], amount = 1 })
                applied[recipe_name] = ladder[at]
                histogram[at] = (histogram[at] or 0) + 1
            end
        end
    end
end


-- ============================================================
-- The rocket client
--
-- The satellite is what a Diamond customer wants: build one around them, launch
-- it, and the vanilla rocket_launch_products pay out 1000 Diamonds. This is the
-- only source of the top denomination, and the only place a customer leaves the
-- population other than by becoming a ghost.
--
-- It lives here rather than in customers.lua because the satellite recipe has
-- just been tolled, and adding the client afterwards keeps the two edits to that
-- recipe in one place.
-- ============================================================
local customers = require("services.customers")
local satellite = data.raw.recipe["satellite"]
assert(satellite, "tolls: the satellite recipe is missing; the Diamond has no source")
table.insert(satellite.ingredients,
    { type = "item", name = customers.item.diamond, amount = 1 })


local summary = {}
for at, count in pairs(histogram) do
    table.insert(summary, count .. " " .. ladder[at])
end
table.sort(summary)

local exemption_summary = {}
for reason, count in pairs(exempted) do
    table.insert(exemption_summary, count .. " " .. reason)
end
table.sort(exemption_summary)

log("[tolls] Charged " .. table.concat(summary, ", ") .. "; exempted "
    .. table.concat(exemption_summary, ", ") .. ".")

return {
    ladder = ladder,
    rank = rank,
    applied = applied,
}
