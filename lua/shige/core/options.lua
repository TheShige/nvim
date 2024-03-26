-- :help options
local options = {
    number = true,
    relativenumber = true,
    cmdheight = 0,
    cursorline = true,
    tabstop = 4,
    shiftwidth = 4,
    smartindent = true,
    expandtab = true,
    fileencoding = "UTF-8",
    guifont = "Fira Code:h17",
    signcolumn = "yes",
    wrap = true,
    scrolloff = 8,
    undofile = true,
    updatetime = 1000,
    ignorecase = true,
    smartcase = true,
    showtabline = 0,
    splitbelow = true,
    splitright = true,
    mouse = "a",
    completeopt = { "menuone", "noselect" },
    termguicolors = true,
    laststatus = 3,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.api.nvim_create_autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        if mark[1] > 1 and mark[1] <= vim.api.nvim_buf_line_count(0) then
            vim.api.nvim_win_set_cursor(0, mark)
        end
    end,
})
