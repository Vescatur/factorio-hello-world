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
--
-- One entry per BAND, not per order -- every grade in a band shares a timer. Add
-- a band and this list has to grow with it; the assertion below the bands table
-- is what says so, rather than a nil arithmetic error deep in the generator.
local spoil_seconds = { 30, 40, 50, 60, 70 }

-- Spawn weights are integers over this total, never decimal chances. A float
-- three-way split does not sum to 1.0 in IEEE doubles -- 0.1 + 0.2 + 0.7 is
-- 1.0000000000000002 -- which trips the assertion below, and worse, leaves a
-- one-ULP gap between two `shared_probability` bands where a delivery produces
-- no successor at all and silently leaks a customer. Integers cannot do that.
--
-- The total is 100 so that every `spawn` number in the orders table below is a
-- whole percent, and reads as one. Raising it buys finer steps than 1% at the
-- cost of that; it is not a tuning knob on its own, since every row has to keep
-- summing to it.
local weight_total = 100


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

assert(#spoil_seconds >= #bands,
    "customers: " .. #bands .. " bands but only " .. #spoil_seconds
        .. " spoil timer(s); every band needs one")


-- ============================================================
-- The orders
--
-- `band` and `grade` place the order on the ladder, `spawn` says who walks in
-- when it is served, and everything else is money: `refund` is a map of
-- denomination key -> amount and `profit` a plain number in the band's own
-- currency.
--
-- `spawn` is whole percent. It is indexed BY GRADE -- `spawn[g]` is the chance a
-- delivery brings back a grade-`g` customer of the same band, so a row has
-- exactly as many numbers as its band has orders, whether that is two or seven.
-- Write a literal 0 for a grade you never want spawned; that grade is left out
-- of the recipe entirely rather than emitted as a zero-width probability slice.
-- The one named key is `up`, the drip that bridges to the band above.
--
-- Every row has to sum to `weight_total`, so tuning one number means taking it
-- off another in the same row; the assertion in successors_of() enforces that,
-- and a second one enforces the length, which is what catches a row left behind
-- when a band gains or loses a grade. Only the top order of a band carries an
-- `up` today, and that is the single route up the ladder -- see the spawn graph
-- comment below before putting one on a lower row.
--
-- A band's grades must run 1..N with no gaps. Nothing else about N is fixed: add
-- a fourth order to a band and every row in that band grows a fourth number.
--
-- The penny band is exactly the goods craftable from recipes that are enabled at
-- game start and need no copper. That is not a style choice: with copper priced
-- in Silver, anything needing a technology or a copper cable is unreachable
-- before the first delivery has been paid for.
-- ============================================================
local orders = {
    -- Penny -- wood, stone and iron, all hand-craftable, no research at all.
    { band = 1, grade = 1, item = "wooden-chest",           amount = 10, refund = { penny = 2 },   profit = 1,
      spawn = { 25, 50, 25 } },
    { band = 1, grade = 2, item = "transport-belt",         amount = 20, refund = { penny = 18 },  profit = 4,
      spawn = { 25, 25, 50 } },
    { band = 1, grade = 3, item = "iron-chest",             amount = 10, refund = { penny = 48 },  profit = 12,
      spawn = { 25, 25, 25, up = 25 } },

    -- Silver -- the first copper, and the first machines built out of it.
    { band = 2, grade = 1, item = "inserter",               amount = 10, refund = { penny = 26 },  profit = 1,
      spawn = { 25, 50, 25 } },
    { band = 2, grade = 2, item = "splitter",               amount = 10, refund = { penny = 114 }, profit = 5,
      spawn = { 25, 25, 50 } },
    { band = 2, grade = 3, item = "assembling-machine-2",   amount = 5,  refund = { penny = 145, silver_coin = 5 }, profit = 6,
      spawn = { 25, 25, 25, up = 25 } },

    -- Banknote -- nothing here exists without coal and crude oil.
    { band = 3, grade = 1, item = "bulk-inserter",          amount = 5,  refund = { penny = 186, silver_coin = 15,  banknote = 1 }, profit = 1,
      spawn = { 25, 50, 25 } },
    { band = 3, grade = 2, item = "electric-furnace",       amount = 5,  refund = { penny = 233, silver_coin = 50,  banknote = 8 }, profit = 4,
      spawn = { 25, 25, 50 } },
    { band = 3, grade = 3, item = "productivity-module",    amount = 10, refund = { penny = 123, silver_coin = 110, banknote = 5 }, profit = 5,
      spawn = { 25, 25, 25, up = 25 } },

    -- Bond -- the robot era.
    { band = 4, grade = 1, item = "construction-robot",     amount = 10, refund = { penny = 156, silver_coin = 50,  banknote = 34 }, profit = 2,
      spawn = { 25, 50, 25 } },
    { band = 4, grade = 2, item = "logistic-robot",         amount = 10, refund = { penny = 175, silver_coin = 90,  banknote = 36 }, profit = 4,
      spawn = { 25, 25, 50 } },
    { band = 4, grade = 3, item = "roboport",               amount = 2,  refund = { penny = 531, silver_coin = 180, banknote = 10 }, profit = 6,
      spawn = { 25, 25, 25, up = 25 } },

    -- Gold -- everything here pays a Bond toll of its own to be built at all.
    { band = 5, grade = 1, item = "express-transport-belt", amount = 20, refund = { penny = 378,  silver_coin = 20,  banknote = 4,  bond = 20 }, profit = 2,
      spawn = { 25, 50, 25 } },
    { band = 5, grade = 2, item = "beacon",                 amount = 5,  refund = { penny = 398,  silver_coin = 200, banknote = 9,  bond = 5 },  profit = 4,
      spawn = { 25, 25, 50 } },
    { band = 5, grade = 3, item = "productivity-module-3",  amount = 2,  refund = { penny = 1400, silver_coin = 665, banknote = 86, bond = 2 },  profit = 6,
      spawn = { 25, 25, 25, up = 25 } },
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
-- `top_grade` is how many grades each band actually has -- nothing in this file
-- assumes three, so a band can hold two orders or seven as long as its grades
-- run 1..N unbroken. That is what the second loop checks: a gap would leave a
-- rung nothing spoils into and an index no spawn row lines up with.
local by_position = {}
local top_grade = {}
for index, order in ipairs(orders) do
    order.index = index
    local position = order.band .. ":" .. order.grade
    -- Not an assert: Lua builds the message argument whether or not the
    -- condition holds, and there is nothing to name on the passing path.
    local clash = by_position[position]
    if clash then
        error("customers: '" .. order.item .. "' and '" .. clash.item
            .. "' both sit at band " .. order.band .. " grade " .. order.grade, 0)
    end
    assert(bands[order.band], "customers: '" .. order.item .. "' has no band " .. tostring(order.band))
    assert(order.grade >= 1 and order.grade == math.floor(order.grade),
        "customers: '" .. order.item .. "' has grade " .. tostring(order.grade)
            .. "; grades are whole numbers counting up from 1")
    by_position[position] = order
    top_grade[order.band] = math.max(top_grade[order.band] or 0, order.grade)
end

local function at(band, grade)
    return by_position[band .. ":" .. grade]
end

for band_index = 1, #bands do
    local count = top_grade[band_index]
    assert(count, "customers: band " .. band_index .. " ('" .. bands[band_index].key
        .. "') has no orders; every band needs at least one")
    for grade = 1, count do
        assert(at(band_index, grade), "customers: band " .. band_index .. " ('"
            .. bands[band_index].key .. "') jumps from grade " .. (grade - 1) .. " to " .. count
            .. "; grade " .. grade .. " is missing")
    end
end

-- The top order of a band is the one that bridges: it is where the `up` drip
-- and the coin of the next denomination hang (see export.lua). Derived, never
-- authored, so it follows a band that gains or loses a grade.
for _, order in ipairs(orders) do
    order.is_top = order.grade == top_grade[order.band]
end


-- ============================================================
-- The decay chain
--
-- One uniform rule, so it cannot hold a typo: an order steps down one grade, and
-- the easiest order of a band steps down to the TOP order of the band below --
-- whatever grade that turns out to be, which is why it is looked up rather than
-- written as a 3. The bottom of the whole ladder is the first order of the first
-- band, and it spoils into a ghost. A gold-band customer therefore walks every
-- rung below it before it ever litters, which is what keeps an unlicensed band
-- from being a throughput sink: you lose the payout, never the customer.
-- ============================================================
local function spoils_into(order)
    local lower = at(order.band, order.grade - 1)
    if lower then
        return lower.item
    end
    local below = order.band - 1
    local band_below = top_grade[below] and at(below, top_grade[below])
    if band_below then
        return band_below.item
    end
    return "ghost"
end


-- ============================================================
-- The spawn graph
--
-- Serving pushes up, spoiling pulls down. As the table above is authored today,
-- an order mostly brings more work at its own level and only the TOP order of a
-- band carries an `up`, so the climb is something the player steers by choosing
-- what to serve rather than something that happens on its own.
--
-- This function decides nothing itself -- it walks the grades the band actually
-- has, resolves each into the customer item at that position, and checks the row
-- is the right length and adds up. The percentages are authored per order in the
-- table above, which is the one place to tune them. Anything that reads like a
-- rule ("top orders bridge upward", "the middle grade is the common case") is a
-- property of what is written there, not of the code here, so a row is free to
-- break it -- including by spawning nothing at a grade, which is what a 0 says.
-- ============================================================
local function successors_of(order)
    local weights = {}

    -- What a delivery emits is the CUSTOMER, never the goods. `order.item` is
    -- the vanilla item they want -- putting that in a result would hand the
    -- player free chests and drain the population at the same time.
    local function give(customer, weight)
        weights[customer] = (weights[customer] or 0) + weight
    end

    local spawn = order.spawn
    local count = top_grade[order.band]
    assert(spawn, "customers: order '" .. order.item .. "' has no spawn row")

    -- Length first, because it is the failure a band that gained or lost a grade
    -- actually produces, and saying so beats reporting the sum that follows.
    assert(#spawn == count,
        "customers: '" .. order.item .. "' has a spawn row of " .. #spawn .. " number(s), but band "
            .. order.band .. " ('" .. bands[order.band].key .. "') has " .. count
            .. " grade(s); write one percentage per grade, 0 included")

    for key in pairs(spawn) do
        assert(key == "up" or (type(key) == "number" and key >= 1 and key <= count),
            "customers: '" .. order.item .. "' has unknown spawn key '" .. tostring(key)
                .. "' -- expected a grade from 1 to " .. count .. ", or 'up'")
    end

    for grade = 1, count do
        local weight = spawn[grade]
        assert(type(weight) == "number" and weight >= 0 and weight == math.floor(weight),
            "customers: '" .. order.item .. "' spawns " .. tostring(weight) .. " at grade " .. grade
                .. "; every entry is a whole percent of 0 or more")
        -- A 0 is a real authored answer -- "never spawn this grade" -- and drops
        -- out here rather than becoming a successor. Keeping it would emit a
        -- shared_probability slice whose min equals its max: a result that can
        -- never fire, on every delivery recipe in the band.
        if weight > 0 then
            give(item_by_key[at(order.band, grade).item], weight)
        end
    end

    -- The bridge upward. Above the top band there is no band left, so the climb
    -- leads to the rocket client instead.
    if spawn.up ~= nil then
        assert(type(spawn.up) == "number" and spawn.up >= 0 and spawn.up == math.floor(spawn.up),
            "customers: '" .. order.item .. "' spawns " .. tostring(spawn.up)
                .. " upward; every entry is a whole percent of 0 or more")
        if spawn.up > 0 then
            local above = at(order.band + 1, 1)
            give(above and item_by_key[above.item] or item_by_key.diamond, spawn.up)
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
        -- The top order of the top band, looked up rather than taken as the last
        -- row of the table, so reordering the rows cannot silently re-point it.
        spoil_result = item_by_key[at(#bands, top_grade[#bands]).item],
    }
})

for _, order in ipairs(orders) do
    order.spoils_into = spoils_into(order)
    order.successors = successors_of(order)

    assert(item_by_key[order.spoils_into],
        "customers: '" .. order.item .. "' spoils into '" .. tostring(order.spoils_into)
            .. "', which is neither an order nor a terminal token")

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


-- The order the Entrance spawns, and so the bottom of the whole economy: grade 1
-- of band 1, by position rather than by row, for the same reason as the diamond.
local entry = at(1, 1).item
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
    -- Band index -> how many grades it has. Ask this rather than assuming three;
    -- each order also carries `is_top`, which is the usual thing callers want.
    top_grade = top_grade,
    item = item_by_key,
    is_customer = is_customer,
    entry = entry,
    weight_total = weight_total,
}
