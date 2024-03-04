return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
        local telescope = require("telescope")

        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                        ["<C-e>"] = actions.move_selection_previous,
                        ["<C-n>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                    }
                }
            }
        })

        telescope.load_extension("fzf")

        local keymap = vim.keymap
        local builtin = require("telescope.builtin")

        keymap.set("n", "<leader>ff", builtin.find_files, {})
        keymap.set("n", "<leader>fr", builtin.oldfiles, {})
        keymap.set("n", "<leader>fs", builtin.live_grep, {})
        keymap.set("n", "<leader>fc", builtin.grep_string, {})
    end,
}
