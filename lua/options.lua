local opt = vim.opt
local g = vim.g
local api = vim.api

opt.background = "dark"
vim.cmd("colorscheme onedark")

g.mapleader = ' '
api.nvim_set_keymap('n', "<leader>/", "gcc", {})
api.nvim_set_keymap('v', "<leader>/", "gc", {})
api.nvim_set_keymap('i', "jj", "<esc>", {})

api.nvim_set_keymap('n', "<leader>s", ":wa<cr>", {})
api.nvim_set_keymap('n', "<leader>c", ":bdelete<cr>", {})
api.nvim_set_keymap('n', "<leader>q", ":qa<cr>", {})

api.nvim_set_keymap('n', "<leader>ww", "<c-w>w", {})
api.nvim_set_keymap('n', "<leader>wh", "<c-w>h", {})
api.nvim_set_keymap('n', "<leader>wj", "<c-w>j", {})
api.nvim_set_keymap('n', "<leader>wk", "<c-w>k", {})
api.nvim_set_keymap('n', "<leader>wl", "<c-w>l", {})

api.nvim_set_keymap('n', "<leader>wn", ":new<cr>", {})
api.nvim_set_keymap('n', "<leader>wv", ":vnew<cr>", {})
api.nvim_set_keymap('n', "<leader>wo", ":only<cr>", {})
api.nvim_set_keymap('n', "<leader>wc", ":close<cr>", {})
-- api.nvim_set_keymap('n', '<F5>', ':!cd build && make && ./run<CR>', {})

api.nvim_set_keymap('n', "<esc>", ":noh <CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('n', "<m-j>", ":MoveLine(1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('v', "<m-j>", ":MoveBlock(1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('n', "<m-k>", ":MoveLine(-1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('v', "<m-k>", ":MoveBlock(-1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('n', "<m-l>", ":MoveHChar(1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('v', "<m-l>", ":MoveHBlock(1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('n', "<m-h>", ":MoveHChar(-1)<CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap('v', "<m-h>", ":MoveHBlock(-1)<CR>",
  { noremap = true, silent = true })

api.nvim_set_keymap('n', "<leader>e", ":NvimTreeToggle<cr>", {})
api.nvim_set_keymap("n", "<TAB>", ":BufferLineCycleNext <CR>",
  { noremap = true, silent = true })
api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev <CR>",
  { noremap = true, silent = true })
-- api.nvim_set_keymap('n', '<c-n>', ':Texplore <CR>',{})

opt.cc = "80"
g.autochdir = true
g.completeopt = "menu,menuone,noselect"
-- g.netrw_liststyle = 2
-- g.netrw_banner = 0
g.loaded = 1
g.loaded_netrwPlugin = 1

g.vim_version = vim.version().minor
--[[  
    use filetype.lua instead of filetype.vim. it's enabled
    by default in neovim 0.8 (nightly)
--]]
if g.vim_version < 8 then
  g.did_load_filetypes = 0
  g.do_filetype_lua = 1
end

opt.laststatus = 3 -- global statusline
opt.showmode = false

opt.title = true
opt.clipboard = "unnamedplus"
opt.cursorline = true

-- Indenting
opt.expandtab = true
opt.shiftwidth = 2
opt.smartindent = true
opt.tabstop = 2
opt.softtabstop = 2

opt.fillchars = { eob = ' ' }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = 'a'

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.ruler = false

-- disable nvim intro
opt.shortmess:append "sI"

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.termguicolors = true
opt.timeoutlen = 400
-- opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append "<>[]hl"
