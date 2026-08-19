-- TEMPLATE: measure how an API really behaves, before writing code against it.
--
-- Cheaper than reasoning, and far cheaper than shipping. Reach for it whenever
-- the docs are ambiguous, or when a field's name implies a behaviour you have not
-- seen with your own eyes. The docs are occasionally wrong outright: LoaderPrototype
-- says belt_length "should be the same as belt_distance", and setting it to the
-- documented 0 crashes the game at TransportLine.cpp:891.
--
-- Run over RCON -- no player and no rendering needed:
--   powershell tools/rcon-server.ps1 -Action start
--   python tools/factorio_rcon.py < probe.lua
--   powershell tools/rcon-server.ps1 -Action stop
--
-- ONE LINE ONLY. The console splits the command name on the first whitespace, so
-- factorio_rcon.py flattens this whole block into one line before sending it. It
-- drops whole-line comments on the way -- these ones included -- so comment freely,
-- but never TRAILING a statement: that would comment out everything after it, and
-- no statement may depend on a line break.
--
-- The example below is the probe that settled how a loader's mode and direction
-- compose. Replace the body; keep the shape.

/silent-command
local ok, err = pcall(function()
local surface = game.surfaces[1]
local out = {}
local function note(...) out[#out + 1] = string.format(...) end
for _, e in pairs(surface.find_entities_filtered { area = { { -6, -6 }, { 6, 6 } } }) do
if e.type ~= "character" then e.destroy() end
end
local subject = surface.create_entity { name = "loader", position = { 0.5, 0.5 }, force = "player", direction = defines.direction.south }
note("as placed:         dir=%d mode=%s", subject.direction, subject.loader_type)
subject.loader_type = "input"
note("after mode write:  dir=%d mode=%s", subject.direction, subject.loader_type)
subject.direction = defines.direction.south
note("after dir restore: dir=%d mode=%s", subject.direction, subject.loader_type)
rcon.print(table.concat(out, "\n"))
end)
if not ok then rcon.print("ERROR: " .. tostring(err)) end
