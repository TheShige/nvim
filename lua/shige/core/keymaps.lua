local opts = {
    noremap = true,
    silent = true
}

local kmap = vim.api.nvim_set_keymap

--  Remap space as the leader key
kmap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal Mode --
-- Opening file explorer with Space + E
kmap("n", "<leader>e", ":Lex 20<CR><CR>", opts)

-- Opening Lazy Git
kmap("n", "<leader>gg", ":LazyGit<CR>", opts)

-- Better window navigation
kmap("n", "<C-m>", "<C-w>h", opts)
kmap("n", "<C-n>", "<C-w>j", opts)
kmap("n", "<C-e>", "<C-w>k", opts)
kmap("n", "<C-i>", "<C-w>l", opts)

-- Window resizing controls
kmap("n", "<C-Up>", ":resize +2<cr>", opts)
kmap("n", "<C-Down>", ":resize -2<cr>", opts)
kmap("n", "<C-Left>", ":vertical resize +2<cr>", opts)
kmap("n", "<C-Right>", ":vertical resize -2<cr>", opts)

-- Insert mode --
kmap("i", "<Down><Up>", "<ESC>", opts)

-- Visual mode --
-- Stay in indent mode
kmap("v", "<", "<gv", opts)
kmap("v", ">", ">gv", opts)

-- Move text up and down
kmap("v", "<A-Down>", ":m .+1<CR>==", opts)
kmap("v", "<A-Up>", ":m .-2<CR>==", opts)
kmap("v", "p", '"_dP', opts)

-- Visual Block mode --
kmap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
kmap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

-- Terminal mode --
kmap("t", "<Down><Up>", "<C-\\><C-n>", opts)
