local opts = { noremap = true, silent = true }
local opts_no_silent = { noremap = true }

vim.keymap.set('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '
vim.g.localleader = ' '

-- edit file in current window, h-split, v-split, tab
vim.keymap.set('n', '<leader>ew', ':e %%', opts)
vim.keymap.set('n', '<leader>es', ':sp %%', opts)
vim.keymap.set('n', '<leader>ev', ':vsp %%', opts)
vim.keymap.set('n', '<leader>et', ':tabe %%', opts)

vim.keymap.set('n', '<leader>j', 'jzz', opts)
vim.keymap.set('n', '<leader>k', 'kzz', opts)
vim.keymap.set('n', 'J', 'mzJ`z')

-- window-movements
vim.keymap.set('n', '<C-j>', '<C-W>j', opts)
vim.keymap.set('n', '<C-k>', '<C-W>k', opts)
vim.keymap.set('n', '<C-h>', '<C-W>h', opts)
vim.keymap.set('n', '<C-l>', '<C-W>l', opts)

-- open netrw
-- vim.keymap.set("n", "<leader>e", ":Lex 30<CR>", opts)
vim.keymap.set('n', '<leader>t', ':Neotree toggle right<CR>', opts)

-- resize windows
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':versical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':versical resize +2<CR>', opts)

-- navigate buffers
vim.keymap.set('n', '<S-l>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-h>', ':bprev<CR>', opts)
vim.keymap.set('n', '<S-x>', ':bd<CR>', opts)

-- move line vertically
vim.keymap.set('n', '<Up>', ':m .-2<CR>==', opts)
vim.keymap.set('n', '<Down>', ':m .+1<CR>==', opts)
vim.keymap.set('v', '<Up>', ":m '<-2<CR>gv=gv", opts)
vim.keymap.set('v', '<Down>', ":m '>+1<CR>gv=gv", opts)

-- move lines horizontally
vim.keymap.set('n', '<Left>', '<<', opts)
vim.keymap.set('n', '<Right>', '>>', opts)
vim.keymap.set('v', '<Left>', "<'[V']", opts)
vim.keymap.set('v', '<Right>', ">'[V']", opts)

-- move vertically by visual line
vim.keymap.set('n', 'j', 'gj', opts)
vim.keymap.set('n', 'k', 'gk', opts)

-- center search item
vim.keymap.set('n', 'n', 'nzz', opts)
vim.keymap.set('n', 'N', 'Nzz', opts)

-- normal regex
vim.keymap.set('n', '/', '/\\v', opts_no_silent)
vim.keymap.set('v', '/', '/\\v', opts_no_silent)

-- window split
vim.keymap.set('n', '<leader>s', ':split<CR>', opts)
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', opts)

vim.keymap.set('n', '<leader>cl', ':nohlsearch<CR>', opts)

vim.keymap.set('n', ';', ':', opts_no_silent)
vim.keymap.set('v', ';', ':', opts_no_silent)
vim.keymap.set('i', 'jk', '<ESC>', opts)

-- copy/paste
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
vim.keymap.set({ 'n', 'v' }, '<leader>d', [["_d]])

-- vertical scroll
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- telescope
vim.keymap.set('n', '<leader>ff', "<CMD>lua require('telescope.builtin').find_files()<CR>", opts)
vim.keymap.set('n', '<leader>fg', "<CMD>lua require('telescope.builtin').live_grep()<CR>", opts)
vim.keymap.set('n', '<leader>fb', "<CMD>lua require('telescope.builtin').buffers()<CR>", opts)
vim.keymap.set('n', '<leader>fh', "<CMD>lua require('telescope.builtin').help_tags()<CR>", opts)
