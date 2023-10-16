---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-F>"] = { ":lua require('telescope.builtin').live_grep({search_dirs={vim.fn.expand('%:p')}})<CR>", "" },
    ["<C-P>"] = { ":Telescope live_grep<CR>", "" },
    ["<C-A>"] = { ":Telescope find_files<CR>", "" },
    ["<leader>sr"] = { ":lua require('ssr').open()<CR>", "" },
    ["<A-j>"] = { ":m .+1<CR>==", " ", opts = { nowait = true } },
    ["<A-k>"] = { ":m .-2<CR>==", " ", opts = { nowait = true } },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}

-- more keybinds!

return M
