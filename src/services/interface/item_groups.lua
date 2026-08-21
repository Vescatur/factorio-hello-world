-- The Profitorio tab and the four subgroups that order its contents.
--
-- These stay together rather than moving next to the module that fills each
-- one, because the `order` letters only make sense read side by side: the
-- customers walking in come first, the orders they place next, then the money
-- they pay with, and the shop that spends it last.
data:extend({
    {
        type = "item-group",
        name = "customer-group",
        order = "z",
        icon = "__profitorio__/graphics/icons/penny.png",
        icon_size = 64
    },
    {
        type = "item-subgroup",
        name = "customer-new",
        group = "customer-group",
        order = "a"
    },
    {
        type = "item-subgroup",
        name = "customer-deliver",
        group = "customer-group",
        order = "b"
    },
    -- The denominations, ordered penny-first by currency.lua.
    {
        type = "item-subgroup",
        name = "currency",
        group = "customer-group",
        order = "y"
    },
    {
        type = "item-subgroup",
        name = "currency-buy",
        group = "customer-group",
        order = "z"
    }
})
