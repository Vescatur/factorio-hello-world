-- TEMPLATE: a phased harness that asserts items actually moved.
--
-- Copy to the scratchpad, fill in RIGS, run with:
--   powershell tools/run-scenario.ps1 -Lua <path> -Scenario verify
--
-- The phases are the point. A build and its verdict CANNOT share a tick: an
-- entity resolves its connections on its first update, so loader_container, belt
-- neighbours and machine status all read as nil or empty on the tick you created
-- them. Asserting there measures the harness, not the game.

local REPORT = "verify/report.txt"      -- under script-output; matches -Expect
local SETTLE = 60                       -- ticks before anything is asserted
local RUN    = 900                      -- ticks of simulation before the verdict
local FEED_ITEM = "iron-plate"

local RIGS = {
    -- One entry per case. `build` runs at tick 0, `check` returns
    -- (number_moved, unit) at the end. Keep `expect` as the smallest count that
    -- means it works -- a count, never a mode or a flag.
    {
        name = "1. describe the case",
        expect = 1,
        build = function(s, x, p, record)
            -- Feed a belt continuously so throughput is never the variable under
            -- test, and place the thing under test with build_from_cursor so
            -- on_built_entity actually fires.
            record.feed = s.create_entity {
                name = "transport-belt", position = { x, -3.5 }, force = "player",
                direction = defines.direction.south,
            }
            record.target = s.create_entity {
                name = "wooden-chest", position = { x, 1.5 }, force = "player",
            }
            p.cursor_stack.set_stack({ name = "loader", count = 5 })
            p.build_from_cursor { position = { x, 0.5 }, direction = defines.direction.south }
            p.cursor_stack.clear()
        end,
        check = function(record)
            return record.target.get_inventory(defines.inventory.chest)
                .get_item_count(FEED_ITEM), "delivered"
        end,
    },
    {
        -- ALWAYS keep a control that bypasses the code under test and creates the
        -- intended end state directly. If the control passes and the real case
        -- fails, the bug is in your code; if both fail, your model of the engine
        -- is wrong. Nothing else separates those two.
        name = "2. CONTROL: end state created directly",
        expect = 1,
        build = function(s, x, _, record)
            record.feed = s.create_entity {
                name = "transport-belt", position = { x, -3.5 }, force = "player",
                direction = defines.direction.south,
            }
            record.target = s.create_entity {
                name = "wooden-chest", position = { x, 1.5 }, force = "player",
            }
            s.create_entity {
                name = "loader", position = { x, 0.5 }, force = "player",
                direction = defines.direction.south, type = "input",
            }
        end,
        check = function(record)
            return record.target.get_inventory(defines.inventory.chest)
                .get_item_count(FEED_ITEM), "delivered"
        end,
    },
}


local function pad(surface)
    local far = #RIGS * 12 + 20
    local tiles = {}
    for x = -20, far do
        for y = -20, 20 do tiles[#tiles + 1] = { name = "refined-concrete", position = { x, y } } end
    end
    surface.set_tiles(tiles)
    for _, entity in pairs(surface.find_entities_filtered { area = { { -20, -20 }, { far, 20 } } }) do
        if entity.type ~= "character" then entity.destroy() end
    end
end


script.on_nth_tick(30, function()
    local surface = game.surfaces[1]
    local player = game.players[1]
    if not player then return end
    storage.phase = storage.phase or 0

    if storage.phase == 0 then
        storage.phase = 1
        if not player.character then player.create_character() end
        -- build_from_cursor respects reach, and a harness builds far from the
        -- character. Without these every placement silently fails.
        player.character_build_distance_bonus = 500
        player.character_reach_distance_bonus = 500
        pad(surface)

        storage.rigs = {}
        for index, rig in ipairs(RIGS) do
            local x = (index - 1) * 12 + 0.5
            player.character.teleport({ x + 6, 12 }, surface)
            local record = {}
            local ok, err = pcall(rig.build, surface, x, player, record)
            record.error = (not ok) and tostring(err) or nil
            storage.rigs[index] = record
        end
        storage.started = game.tick
        return
    end

    if storage.phase == 1 and game.tick > storage.started + SETTLE then
        storage.phase = 2
        return
    end

    if storage.phase == 2 and game.tick > storage.started + RUN then
        storage.phase = 3
        local report, pass, fail = {}, 0, 0
        for index, rig in ipairs(RIGS) do
            local record = storage.rigs[index]
            local moved, unit = 0, "?"
            if not record.error then
                local ok, a, b = pcall(rig.check, record)
                if ok then moved, unit = a, b else record.error = tostring(a) end
            end
            local good = not record.error and moved >= rig.expect
            report[#report + 1] = string.format("%-52s %6d %-12s %s",
                rig.name, moved, unit,
                record.error and ("ERROR " .. record.error) or (good and "PASS" or "**FAIL**"))
            if good then pass = pass + 1 else fail = fail + 1 end
        end
        table.insert(report, 1, string.format("%d passed, %d failed\n", pass, fail))
        -- Written even when cases errored: a partial report beats a dead run with
        -- nothing to read.
        helpers.write_file(REPORT, table.concat(report, "\n"), false)
        game.print("report written")
    end
end)


-- Keep every feeder saturated, so no case ever fails for want of input.
script.on_event(defines.events.on_tick, function()
    for _, record in pairs(storage.rigs or {}) do
        if record.feed and record.feed.valid then
            for lane = 1, 2 do
                record.feed.get_transport_line(lane).insert_at_back({ name = FEED_ITEM })
            end
        end
    end
end)
