return {
    "feline-nvim/feline.nvim",
    config = function ()
        local feline = require("feline")

        feline.setup()
        feline.winbar.setup()
    end,
}
