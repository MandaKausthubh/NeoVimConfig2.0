vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.laststatus = 2
vim.opt.autowrite = true
-- vim.opt.cursorline = true
vim.opt.autoread = true


vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.relativenumber = true
vim.opt.number = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('v', '<C-l>', ":'<,'>!xclip -f -sel clip<CR>")
vim.keymap.set('n', '<C-t>n', ':tabnext<CR>')
vim.keymap.set('n', '<C-t>p', ':tabprevious<CR>')
vim.keymap.set('n', '<C-t>t', ':tabnew<CR>')

local nnoremap = function(lhs, rhs)
    vim.api.nvim_set_keymap('n', lhs, rhs, { noremap = true, silent = true })
end


-- Hello I am able to copy and paste!!

nnoremap("<C-d>", "<C-d>zz");
nnoremap("<C-u>", "<C-u>zz");

