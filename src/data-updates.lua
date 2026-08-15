-- Everything Tycoon adds lives in data.lua. This stage exists because base
-- generates the fluid barrel items and their fill/empty recipes in its own
-- data-updates.lua, so anything that has to see a finished recipe list -- the
-- shop, which sells crude oil by the barrel, and the toll injector, which has to
-- see the barrel recipes in order to exempt them -- cannot run any earlier.
--
-- The order below is correctness, not reading order:
--
--   shop   defines the buy recipes and the price of every raw good
--   tolls  charges a coin to craft, and must run after every recipe exists --
--          at the data stage the barrel recipes are still missing and would
--          silently escape the exemption
--   cost   re-solves the graph and checks the authored refunds still cover it,
--          so it has to be last: it needs both the prices and the tolls
require("services.shop")
require("services.tolls")
require("services.cost")
