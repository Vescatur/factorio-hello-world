-- Everything Tycoon adds runs in data.lua. This stage exists for one reason:
-- base generates the fluid barrel items and their fill/empty recipes in its own
-- data-updates.lua, so anything that has to name a barrel -- the shop, which
-- sells crude oil by the barrel -- cannot be built until after that has run.
require("services.shop")
