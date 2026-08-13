-- research.lua
--
-- Research is re-priced in coin. Tycoon has no ores and no electricity, so
-- coins earned from customers are the only resource the player controls --
-- but the vanilla tech tree still charges automation science packs. Every
-- technology that consumed the red pack now consumes coin instead, putting
-- research on the same coin bottleneck as everything else.
--
-- The early tech chain stays reachable because it is trigger-based, not
-- unit-based, and therefore untouched here:
--
--   steam-power              -> craft 50 iron-plate   (iron is coin-buyable)
--   electronics              -> craft 10 copper-plate (unlocks the lab recipe)
--   automation-science-pack  -> craft a lab
--   everything downstream    -> unit.ingredients      (re-priced below)
--
-- Labs already run for free: remove_electricity.lua converts their electric
-- energy source to "void".

-- Cost of one red science pack, in coins. Vanilla red is 1 copper-plate +
-- 1 iron-gear-wheel (2 iron-plate), and recipes.lua sells plates at 1 coin
-- each -- so 3 coins is the raw-material equivalent. Tune here.
local coin_per_science = 1

local science_pack = "automation-science-pack"

-- ============================================================
-- STEP 1: Retarget research ingredients from red science to coin
--
-- Technologies with a `research_trigger` instead of a `unit` have no
-- ingredients at all and are skipped. We scale the ingredient AMOUNT
-- rather than `unit.count`, because count is shared by every ingredient
-- -- inflating it would also make the green/blue science half of a mixed
-- technology more expensive. Scaling the amount keeps the change isolated
-- to coin, and works the same for the infinite technologies that use
-- `count_formula` instead of `count`.
-- ============================================================
local retargeted_technologies = 0

if data.raw.technology then
  for _, tech in pairs(data.raw.technology) do
    local ingredients = tech.unit and tech.unit.ingredients
    if ingredients then
      local changed = false
      for _, ingredient in pairs(ingredients) do
        -- Base game uses the positional tuple form {name, amount}; the
        -- named form is also legal, so handle both.
        if ingredient[1] == science_pack then
          ingredient[1] = "coin"
          ingredient[2] = (ingredient[2] or 1) * coin_per_science
          changed = true
        elseif ingredient.name == science_pack then
          ingredient.name = "coin"
          ingredient.amount = (ingredient.amount or 1) * coin_per_science
          changed = true
        end
      end
      if changed then
        retargeted_technologies = retargeted_technologies + 1
      end
    end
  end
end

log("[research] Repriced " .. retargeted_technologies
  .. " technologies from " .. science_pack
  .. " to coin (x" .. coin_per_science .. " per pack).")

-- ============================================================
-- STEP 2: Let labs accept coin
--
-- A lab only consumes items listed in its `inputs` whitelist, so coin has
-- to be added there or every repriced technology becomes unresearchable.
-- Dropping the red pack at the same time is safe -- STEP 1 leaves no
-- technology requiring it -- and it keeps a dead slot out of the lab GUI.
-- ============================================================
local patched_labs = 0

for _, lab in pairs(data.raw.lab or {}) do
  if lab.inputs then
    local kept = {}
    local has_coin = false
    for _, input in pairs(lab.inputs) do
      if input ~= science_pack then
        table.insert(kept, input)
        has_coin = has_coin or input == "coin"
      end
    end
    if not has_coin then
      table.insert(kept, "coin")
    end
    lab.inputs = kept
    patched_labs = patched_labs + 1
  end
end

log("[research] Patched " .. patched_labs .. " lab prototype(s) to accept coin.")

-- ============================================================
-- STEP 3: Hide the now-unused red science pack
--
-- The item, recipe and technology prototypes stay intact so nothing that
-- references them by name breaks -- they are just removed from the UI.
-- The recipe is hidden alongside the item, otherwise the crafting menu
-- still offers a recipe whose only product is invisible and useless.
-- The automation-science-pack TECHNOLOGY is deliberately left alone: it is
-- a prerequisite of the rest of the tree and its "craft a lab" trigger is
-- a gate worth keeping.
-- ============================================================
if data.raw.item[science_pack] then
  data.raw.item[science_pack].hidden = true
  data.raw.item[science_pack].hidden_in_factoriopedia = true
end

if data.raw.recipe[science_pack] then
  data.raw.recipe[science_pack].hidden = true
  data.raw.recipe[science_pack].hidden_in_factoriopedia = true
end
