--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: core/keymaps.lua
-- Description: Key mapping configs
-- Author: Kien Nguyen-Tuan <kiennt2609@gmail.com>

vim.g.mapleader = ' '

-- Disable arrow keys
vim.keymap.set("", "<up>", "<nop>")
vim.keymap.set("", "<down>", "<nop>")
vim.keymap.set("", "<left>", "<nop>")
vim.keymap.set("", "<right>", "<nop>")

-- Close all windows and exit from Neovim with <leader> and q
vim.keymap.set('n', '<leader>q', ':qa!<CR>', {})
-- Fast saving with <leader> and s
vim.keymap.set('n', '<leader>s', ':w<CR>', {})
-- Move around splits
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
-- Select All Ctrl+a
vim.keymap.set('n', '<C-a>', 'ggVG', {})

-- Navigation with hop
vim.keymap.set('n', '<C-f>', ':HopWord<CR>', {})

-- Lsp
vim.keymap.set('n', '<leader>lr', vim.lsp.buf.rename, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)

-- Buffer navigation
vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-c>', ':bd<CR>', {})

-- Reload configuration without restart nvim
vim.keymap.set('n', '<leader>r', ':so %<CR>', {})

-- Easy Move Lines
vim.keymap.set('n', '<A-j>', ':m .+1<CR>==', {})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>==', {})

    -- Better indenting
vim.keymap.set('v', '<', "<gv", {})
vim.keymap.set('v', '>', ">gv", {})

  -- Move current line / block with Alt-j/k ala vscode.
vim.keymap.set('x', '<A-j>', ":m '>+1<CR>gv-gv")
vim.keymap.set('x', '<A-k>', ":m '<-2<CR>gv-gv")

-- Telescope
-- <leader> is a space now
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', telescope.find_files, {})
vim.keymap.set('n', '<leader>st', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<space>lw', telescope.diagnostics, {})

-- NvimTree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', {}) -- open/close
vim.keymap.set('n', '<leader>nr', ':NvimTreeRefresh<CR>', {}) -- refresh
vim.keymap.set('n', '<leader>nf', ':NvimTreeFindFile<CR>', {}) -- search file

-- Terminal
vim.keymap.set('n', '<leader>tt', ':NeotermToggle<CR>', {})
--[[ vim.keymap.set('n', '<leader>tx', ':NeotermExit<CR>', {}) ]]
