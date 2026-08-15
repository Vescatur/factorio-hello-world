-- Who walks in, what they order, and what they decay into.
--
-- This module owns the band table and the item prototype for each order. The
-- recipes that consume them live with the machine that crafts them:
-- `customer-new` in entrance.lua, `customer_<x>_deliver` in export.lua. What it
-- returns is a plain data map -- the band list, plus the item name of every
-- order -- so nothing else has to know that a customer item is spelled
-- "customer_" .. whatever they ordered.
--
-- ============================================================
-- THE LADDER
--
-- Five bands of three orders, one band per denomination, plus the rocket. A
-- band's orders are the finished goods that era of the factory can build, and
-- serving one pays profit in that band's own currency. Only the HARD order of a
-- band bridges upward, paying a little of the next denomination -- that drip is
-- the only route up the ladder, and without it the game is unwinnable: the
-- `electronics` trigger wants 10 copper plate, copper costs Silver, and nothing
-- else mints a Silver Coin.
--
-- Orders are for FINISHED GOODS only. Never ore, never plates or gears or
-- circuits. What the customer wants is a thing you would build anyway, which is
-- what makes serving them teach the factory rather than tax it.
--
-- REFUNDS. Every delivery hands back the full embedded cost of what was
-- delivered -- the raw materials in whichever denomination the shop charges for
-- them, plus every crafting toll (see services/tolls.lua) buried anywhere in the
-- item's recipe tree -- and then pays profit on top as a separate item. Serving
-- is break-even plus margin, never a loss.
--
-- The refund numbers below are authored, not solved at load. They were computed
-- offline against the real recipe graph and are checked at every load by
-- services/cost.lua, which re-solves the graph and asserts no refund has fallen
-- behind the cost it is supposed to cover. Edit a shop price or a toll and that
-- assertion is what tells you these numbers went stale.
-- ============================================================

local currency = require("services.currency")

-- Spoil timers lengthen as the orders get harder, because the goods take longer
-- to build. An unserved gold-band customer still walks the whole ladder down to
-- a ghost, it just takes a while.
local spoil_seconds = { 30, 40, 50, 60, 70 }

-- Spawn weights are integers over this total, never decimal chances. A float
-- three-way split does not sum to 1.0 in IEEE doubles -- 0.1 + 0.2 + 0.7 is
-- 1.0000000000000002 -- which trips the assertion below, and worse, leaves a
-- one-ULP gap between two `shared_probability` bands where a delivery produces
-- no successor at all and silently leaks a customer. Integers cannot do that.
local weight_total = 20


-- ============================================================
-- The bands
--
-- `licence` is the technology that unlocks this band's delivery recipes. The
-- penny band has none: it ships enabled, because every technology in the game
-- sits behind a lab, a lab sits behind copper, and copper sits behind the first
-- Silver Coin that only the penny band can pay. Gating it would deadlock a new
-- game at the first minute.
-- ============================================================
local bands = {
    { key = "penny",    currency = currency.penny,       icon = "penny",       licence = nil },
    { key = "silver",   currency = currency.silver_coin, icon = "silver-coin", licence = "logistic-science-pack" },
    { key = "banknote", currency = currency.banknote,    icon = "banknote",    licence = "chemical-science-pack" },
    { key = "bond",     currency = currency.bond,        icon = "bond",        licence = "production-science-pack" },
    { key = "gold",     currency = currency.gold_bar,    icon = "gold-bar",    licence = "utility-science-pack" },
}


-- ============================================================
-- The orders
--
-- `band` and `grade` place the order on the ladder; everything else is money.
-- `refund` is a map of denomination key -> amount, `profit` a plain number in
-- the band's own currency, `bridge` the drip the hard order pays upward.
--
-- The penny band is exactly the goods craftable from recipes that are enabled at
-- game start and need no copper. That is not a style choice: with copper priced
-- in Silver, anything needing a technology or a copper cable is unreachable
-- before the first delivery has been paid for.
-- ============================================================
local orders = {
    -- Penny -- wood, stone and iron, all hand-craftable, no research at all.
    { band = 1, grade = 1, item = "wooden-chest",           amount = 10, refund = { penny = 2 },   profit = 1 },
    { band = 1, grade = 2, item = "transport-belt",         amount = 20, refund = { penny = 18 },  profit = 4 },
    { band = 1, grade = 3, item = "iron-chest",             amount = 10, refund = { penny = 48 },  profit = 12 },

    -- Silver -- the first copper, and the first machines built out of it.
    { band = 2, grade = 1, item = "inserter",               amount = 10, refund = { penny = 24,  silver_coin = 2 },  profit = 1 },
    { band = 2, grade = 2, item = "splitter",               amount = 10, refund = { penny = 106, silver_coin = 8 },  profit = 5 },
    { band = 2, grade = 3, item = "assembling-machine-2",   amount = 5,  refund = { penny = 140, silver_coin = 10 }, profit = 6 },

    -- Banknote -- nothing here exists without coal and crude oil.
    { band = 3, grade = 1, item = "bulk-inserter",          amount = 5,  refund = { penny = 170, silver_coin = 31,  banknote = 1 }, profit = 1 },
    { band = 3, grade = 2, item = "electric-furnace",       amount = 5,  refund = { penny = 220, silver_coin = 63,  banknote = 8 }, profit = 4 },
    { band = 3, grade = 3, item = "productivity-module",    amount = 10, refund = { penny = 90,  silver_coin = 143, banknote = 5 }, profit = 5 },

    -- Bond -- the robot era.
    { band = 4, grade = 1, item = "construction-robot",     amount = 10, refund = { penny = 143, silver_coin = 63,  banknote = 34 }, profit = 2 },
    { band = 4, grade = 2, item = "logistic-robot",         amount = 10, refund = { penny = 155, silver_coin = 110, banknote = 36 }, profit = 4 },
    { band = 4, grade = 3, item = "roboport",               amount = 2,  refund = { penny = 486, silver_coin = 225, banknote = 10 }, profit = 6 },

    -- Gold -- everything here pays a Bond toll of its own to be built at all.
    { band = 5, grade = 1, item = "express-transport-belt", amount = 20, refund = { penny = 378,  silver_coin = 20,  banknote = 4,  bond = 20 }, profit = 2 },
    { band = 5, grade = 2, item = "beacon",                 amount = 5,  refund = { penny = 330,  silver_coin = 268, banknote = 9,  bond = 5 },  profit = 4 },
    { band = 5, grade = 3, item = "productivity-module-3",  amount = 2,  refund = { penny = 1071, silver_coin = 994, banknote = 86, bond = 2 },  profit = 6 },
}


-- ============================================================
-- Terminal tokens -- customer items that are not orders
--
-- Neither gets a delivery recipe, so the generator below skips both and their
-- item prototypes are written by hand.
--
--   ghost   -- what is left when nobody serves even the simplest order. No
--              order to fill, no recipe, and no spoil timer: once a ghost exists
--              it lasts the rest of the save, so ghosts only ever pile up. One
--              that spoils inside a machine's ingredient slot jams that machine
--              for good -- routing wooden-chest customers so they never time out
--              mid-slot is the player's problem to solve.
--
--   diamond -- the client who wants a rocket launched. The satellite recipe
--              consumes them (see services/tolls.lua) and the launch pays the
--              vanilla 1000 space-science-pack, which is 1000 Diamonds. They
--              spoil like any other customer, back down into the gold band, so
--              the satellite chain has to be buffered and ready before one
--              arrives. They are also the one place the customer population
--              shrinks other than a ghost: a launched satellite emits no
--              successor.
-- ============================================================
local terminal_tokens = { ghost = true, diamond = true }


-- Every name a customer item exists under, mapped to that item. Built before the
-- generator so the spoil chain can be resolved against it: a typo fails at load
-- instead of silently producing an unknown-item reference.
local item_by_key = {}
for token in pairs(terminal_tokens) do
    item_by_key[token] = "customer_" .. token
end
for _, order in ipairs(orders) do
    item_by_key[order.item] = "customer_" .. order.item
end


-- Where each order sits on the ladder, and what is one step either side of it.
local by_position = {}
for index, order in ipairs(orders) do
    order.index = index
    by_position[order.band .. ":" .. order.grade] = order
end

local function at(band, grade)
    return by_position[band .. ":" .. grade]
end


-- ============================================================
-- The decay chain
--
-- One uniform rule, so it cannot hold a typo: an order steps down one grade, and
-- the easiest order of a band steps down to the hardest order of the band below.
-- The bottom of the whole ladder is the wooden-chest order, and it spoils into a
-- ghost. A gold-band customer therefore walks fifteen steps before it ever
-- litters, which is what keeps an unlicensed band from being a throughput sink:
-- you lose the payout, never the customer.
-- ============================================================
local function spoils_into(order)
    local lower = at(order.band, order.grade - 1)
    if lower then
        return lower.item
    end
    local band_below = at(order.band - 1, 3)
    if band_below then
        return band_below.item
    end
    return "ghost"
end


-- ============================================================
-- The spawn graph
--
-- Serving pushes up, spoiling pulls down. An order mostly brings more work at
-- its own level; only the HARD order of a band can bring in a customer from the
-- band above, so the climb is something the player steers by choosing what to
-- serve rather than something that happens on its own.
--
-- Weights are clamped by folding, never by dropping, so every row sums to
-- exactly `weight_total` no matter where on the ladder it sits.
-- ============================================================
local function successors_of(order)
    local weights = {}

    -- What a delivery emits is the CUSTOMER, never the goods. `order.item` is
    -- the vanilla item they want -- putting that in a result would hand the
    -- player free chests and drain the population at the same time.
    local function give(target, weight)
        if not target then
            return false
        end
        local customer = item_by_key[target.item]
        weights[customer] = (weights[customer] or 0) + weight
        return true
    end

    local easy, medium, hard = at(order.band, 1), at(order.band, 2), at(order.band, 3)

    if order.grade == 1 then
        give(easy, 5)
        give(medium, 10)
        give(hard, 5)
    elseif order.grade == 2 then
        give(easy, 5)
        give(medium, 5)
        give(hard, 10)
    else
        give(easy, 5)
        give(medium, 5)
        give(hard, 5)
        -- The bridge upward. Above the gold band there is no band left, so the
        -- climb leads to the rocket client instead.
        local above = at(order.band + 1, 1)
        if above then
            give(above, 5)
        else
            weights[item_by_key.diamond] = (weights[item_by_key.diamond] or 0) + 5
        end
    end

    local successors = {}
    local total = 0
    for customer, weight in pairs(weights) do
        table.insert(successors, { customer = customer, weight = weight })
        total = total + weight
    end
    -- pairs() has no defined order and the shared_probability bands built from
    -- this list have to be stable across loads, or two players' saves disagree.
    table.sort(successors, function(a, b) return a.customer < b.customer end)

    assert(total == weight_total,
        "customers: successor weights for '" .. order.item .. "' sum to " .. total
            .. ", expected " .. weight_total)

    return successors
end


-- ============================================================
-- Generate the customer items
-- ============================================================
data:extend({
    {
        type = "item",
        name = item_by_key.ghost,
        icon = "__tycoon__/graphics/icons/ghost.png",
        icon_size = 64,
        stack_size = 1,
    },
    {
        type = "item",
        name = item_by_key.diamond,
        icons = {
            {
                icon = "__tycoon__/graphics/icons/customer.png",
                icon_size = 64,
                icon_mipmaps = 4
            },
            {
                icon = "__tycoon__/graphics/icons/diamond.png",
                icon_size = 64,
                icon_mipmaps = 4,
                scale = 0.3,
                shift = { 6, 6 }
            }
        },
        stack_size = 1,
        spoil_ticks = spoil_seconds[#bands] * 60,
        spoil_result = item_by_key[orders[#orders].item],
    }
})

for _, order in ipairs(orders) do
    order.spoils_into = spoils_into(order)
    order.successors = successors_of(order)

    assert(item_by_key[order.spoils_into],
        "customers: '" .. order.item .. "' spoils into '" .. tostring(order.spoils_into)
            .. "', which is neither an order nor a terminal token")
    assert(bands[order.band], "customers: '" .. order.item .. "' has no band " .. tostring(order.band))

    data:extend({
        {
            type = "item",
            name = item_by_key[order.item],
            icons = {
                {
                    icon = "__tycoon__/graphics/icons/customer.png",
                    icon_size = 64,
                    icon_mipmaps = 4
                },
                {
                    icon = "__base__/graphics/icons/" .. order.item .. ".png",
                    icon_size = 64,
                    icon_mipmaps = 4,
                    scale = 0.3,
                    shift = { 6, 6 }
                }
            },
            stack_size = 1,
            spoil_ticks = spoil_seconds[order.band] * 60,
            spoil_result = item_by_key[order.spoils_into],
        }
    })
end


-- The order the Entrance spawns, and so the bottom of the whole economy.
local entry = orders[1].item
assert(item_by_key[entry], "customers: entry order '" .. entry .. "' is not an order")

log("[customers] " .. #orders .. " orders across " .. #bands .. " bands, plus ghost and diamond.")

-- Every customer prototype name, as a set. Anything emitted by a delivery
-- recipe has to be in here: the one thing that must never end up in a result is
-- the vanilla item the customer is asking for.
local is_customer = {}
for _, name in pairs(item_by_key) do
    is_customer[name] = true
end

return {
    bands = bands,
    orders = orders,
    item = item_by_key,
    is_customer = is_customer,
    entry = entry,
    weight_total = weight_total,
}
