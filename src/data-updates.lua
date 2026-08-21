-- Everything else lives in data.lua. This stage exists because base generates the
-- fluid barrel items and their fill/empty recipes in its OWN data-updates, so nothing
-- needing a finished recipe list can run earlier.
--
-- The order below is correctness, not reading order:
--
--   prices defines the buy recipes and the price of every raw good
--   tolls  needs every recipe to exist -- at the data stage the barrel recipes are
--          still missing and would silently escape the exemption
--   cost   needs both the prices and the tolls, so it is last
require("services.economy.shop.prices")
require("services.economy.money.tolls")
require("services.economy.money.cost")
