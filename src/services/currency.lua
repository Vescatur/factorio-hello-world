-- currency.lua
--
-- Money IS science. Six of the seven vanilla science packs are re-skinned in
-- place into a ladder of denominations, so a technology's "research cost" is
-- literally its price, and a lab is where profit gets spent.
--
--   automation-science-pack  -> Penny        (replaces the base game coin)
--   logistic-science-pack    -> Silver Coin
--   chemical-science-pack    -> Banknote
--   production-science-pack  -> Bond
--   utility-science-pack     -> Gold Bar
--   space-science-pack       -> Diamond
--
-- military-science-pack is the seventh, and it is not money. It used to be the
-- War Chest, but every technology priced in it was a combat technology, so when
-- combat left the mod the denomination had nothing left to buy. It retires in
-- remove_military.lua, which hides it the way STEP 4 below hides the coin.
--
-- WHY RE-SKIN INSTEAD OF ADDING SIX NEW ITEMS:
--
--   * `lab.inputs` and every technology's `unit.ingredients` already name
--     these prototypes, so the whole tech tree re-prices itself for free --
--     no technology is rewritten and no lab whitelist is patched.
--   * Nothing anywhere else (achievements, tips-and-tricks, factoriopedia,
--     the rocket silo's `rocket_launch_products`) ends up referencing an item
--     that no longer exists.
--
-- Research costs are deliberately left at their vanilla numbers: a technology
-- that wanted 100 red packs now wants 100 Pennies.
--
-- Labs already run without power -- remove_electricity.lua converts their
-- electric energy source to "void" -- and the early tech chain stays reachable
-- because it is trigger-based, not unit-based:
--
--   steam-power              -> craft 50 iron-plate   (iron is purchasable)
--   electronics              -> craft 10 copper-plate (unlocks the lab recipe)
--   automation-science-pack  -> craft a lab
--   everything downstream    -> unit.ingredients, i.e. priced in currency

-- Vanilla's science pack stack size. Money now stacks like science rather than
-- like the base game coin (100k), which makes storing a fortune a logistics
-- problem instead of a single chest slot. Tune here.
local stack_size = 200

local denominations = {
    { key = "penny",       pack = "automation-science-pack", icon = "penny",       hint = "P" },
    { key = "silver_coin", pack = "logistic-science-pack",   icon = "silver-coin", hint = "S" },
    { key = "banknote",    pack = "chemical-science-pack",   icon = "banknote",    hint = "N" },
    { key = "bond",        pack = "production-science-pack", icon = "bond",        hint = "B" },
    { key = "gold_bar",    pack = "utility-science-pack",    icon = "gold-bar",    hint = "G" },
    { key = "diamond",     pack = "space-science-pack",      icon = "diamond",     hint = "D" },
}

-- ============================================================
-- STEP 1: Re-skin the pack items
--
-- Only presentation changes here. Name, stack size and every reference to
-- the prototype stay exactly as vanilla left them.
-- ============================================================
for index, denomination in ipairs(denominations) do
    local item = data.raw.item[denomination.pack]
    assert(item, "currency: base game item '" .. denomination.pack .. "' is missing")

    item.icon = "__tycoon__/graphics/icons/" .. denomination.icon .. ".png"
    item.icon_size = 64
    item.icons = nil

    -- Vanilla points every pack at the shared "used by labs to research"
    -- blurb; ours is per denomination, from the locale file.
    item.localised_description = nil

    -- Vanilla tints each science pack sprite slightly at random so a belt of
    -- them shimmers. That would mangle flat currency art, so it goes.
    item.random_tint_color = nil

    -- text_color is optional in the real API (and vanilla omits it), but the
    -- bundled type definitions mark it required.
    ---@diagnostic disable-next-line: missing-fields
    item.color_hint = { text = denomination.hint }
    item.subgroup = "currency"
    item.order = string.char(string.byte("a") + index - 1) .. "[" .. denomination.icon .. "]"
    item.stack_size = stack_size
end

-- ============================================================
-- STEP 2: Delete the pack recipes
--
-- These have to go, and not merely be hidden: red is 1 copper-plate +
-- 1 iron-gear-wheel and green is an inserter + a belt, all of which the
-- player can buy or craft from purchased plates. Leaving the recipes in
-- would let the factory print its own money and the customer economy would
-- stop mattering. Money is earned by serving customers, never crafted.
--
-- space-science-pack has no recipe in vanilla (it comes from launching a
-- satellite), so the loop simply finds nothing for it.
-- ============================================================
local removed_recipes = {}
local removed_recipe_count = 0

for _, denomination in ipairs(denominations) do
    if data.raw.recipe[denomination.pack] then
        data.raw.recipe[denomination.pack] = nil
        removed_recipes[denomination.pack] = true
        removed_recipe_count = removed_recipe_count + 1
    end
end

-- ============================================================
-- STEP 3: Strip technology effects that unlock a deleted recipe
--
-- Same treatment remove_electricity.lua gives its deleted recipes: a
-- technology pointing at a recipe that no longer exists is a load error.
--
-- The technologies themselves stay. Five of them are named after a pack and
-- are now effect-less, which is intentional: they remain prerequisites in the
-- tree and read as being licensed to deal in that denomination (the locale
-- file renames them to match). The sixth, military-science-pack, is deleted
-- outright by remove_military.lua along with the rest of the combat tree.
-- ============================================================
local stripped_effects = 0

for _, tech in pairs(data.raw.technology) do
    if tech.effects then
        local kept = {}
        for _, effect in pairs(tech.effects) do
            if effect.type == "unlock-recipe" and removed_recipes[effect.recipe] then
                stripped_effects = stripped_effects + 1
            else
                table.insert(kept, effect)
            end
        end
        tech.effects = kept
    end
end

-- Those six technologies keep a science bottle for an icon otherwise, which
-- fights the name the locale file gives them. Our icon art is 64px and the
-- technology screen draws much larger, so these are upscaled and soft --
-- dedicated 256px renders are a follow-up, not a blocker.
for _, denomination in ipairs(denominations) do
    local tech = data.raw.technology[denomination.pack]
    if tech then
        tech.icon = "__tycoon__/graphics/icons/" .. denomination.icon .. ".png"
        tech.icon_size = 64
        tech.icons = nil
    end
end

-- ============================================================
-- STEP 4: Retire the base game coin
--
-- The Penny took its job. The prototype stays (other prototypes reference it
-- by name) but goes back to being hidden, as it is in vanilla, so there is
-- exactly one visible currency ladder.
-- ============================================================
data.raw.item.coin.hidden = true
data.raw.item.coin.hidden_in_factoriopedia = true

log("[currency] Re-skinned " .. #denominations .. " science packs into currency, deleted "
    .. removed_recipe_count .. " pack recipe(s) and stripped "
    .. stripped_effects .. " unlock-recipe effect(s).")

-- Item names by denomination, so the rest of the mod never spells out which
-- science pack backs which coin.
local currency = {}
for _, denomination in ipairs(denominations) do
    currency[denomination.key] = denomination.pack
end

return currency
