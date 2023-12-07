-- :help options
local options = {
    number = true,
    relativenumber = true,
    clipboard = "unnamedplus",
    cmdheight = 2,
    cursorline = true,
    tabstop = 4,
    shiftwidth = 4,
    smartindent = true,
    expandtab = true,
    fileencoding = "UTF-8",
    guifont = "monospace:h17",
    signcolumn = "yes",
    wrap = true,
    scrolloff = 8,
    undofile = true,
    updatetime = 1000,
    ignorecase = true,
    smartcase = true,
    showtabline = 2,
    splitbelow = true,
    splitright = true,
    mouse = "a",
    completeopt = {"menuone", "noselect"},
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
