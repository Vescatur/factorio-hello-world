-- Order is for reading, not for correctness: the modules that need another one
-- require it themselves and Lua caches the result. The list is complete so the
-- pure side-effect modules run even though nothing requires them.
require("services.remove_ore")
require("services.remove_electricity")
require("services.remove_enemies")
require("services.remove_military")
require("services.item_groups")
require("services.currency")
require("services.customers")
require("services.entrance")
require("services.import")
require("services.export")
