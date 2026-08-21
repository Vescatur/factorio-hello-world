-- tolls.lua -- money is an ingredient, not just a research cost. Making a thing
-- costs a coin, and which coin is DERIVED from the technology that unlocks the
-- recipe: the highest denomination on that technology's invoice.
--
-- So every assembler needs a money input line, and what the toll really costs is
-- working capital -- the coin comes back in the refund of whatever you deliver.
local currency = require("services.economy.money.currency")

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


-- nil for a trigger technology, which has no invoice at all.
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


-- The cheapest licence that unlocks this recipe. `min`, not `max`: the player only
-- ever needed one of them, so the cheapest is what they actually paid.
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


-- You pay a toll to make a THING, not to move a fluid around. Recipes with no
-- unlocking technology, and those unlocked only by a trigger technology, fall out
-- exempt on their own -- which is what keeps a new game craftable with no money.
local function exemption_for(recipe_name, recipe)
    for _, category in pairs(recipe.categories or { "crafting" }) do
        -- NEVER remove this guard. Every furnace has `source_inventory_size = 1`, so
        -- a smelting recipe cannot take a second ingredient. Tolling one raises no
        -- error; it silently makes the item uncraftable in every furnace in the game.
        if category == "smelting" then
            return "smelting"
        end
        -- Money can never be an ingredient of a recipe that produces money. The
        -- ordering in data-updates.lua already guarantees it; this makes a future
        -- reordering fail loudly instead.
        if own_categories[category] then
            return "own-category"
        end
    end
    -- A coin per unbarrelling taxes logistics rather than production, and can strand
    -- the oil chain outright.
    if is_barrel_recipe(recipe_name) then
        return "barrel"
    end
    -- Continuous fluid conversions run thousands of crafts, and an inserter feeding
    -- coins into a building that otherwise takes only pipes is not playable. Plastic,
    -- sulfur, batteries and explosives still pay: they yield items.
    if not produces_an_item(recipe) then
        return "fluid-only"
    end
    return nil
end


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
                histogram[at] = (histogram[at] or 0) + 1
            end
        end
    end
end


-- The rocket client. A Diamond customer wants a satellite built around them; the
-- launch pays the vanilla 1000 space-science-pack, which is 1000 Diamonds. It lives
-- here because the satellite recipe has just been tolled, keeping both edits to that
-- recipe in one place.
local customers = require("services.economy.customers.orders")
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
}
