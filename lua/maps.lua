local keymap = vim.keymap

keymap.set('n', '<Space>', '', {})
vim.g.mapleader = ' '

keymap.set( 'n', '<ESC>', '<cmd> noh <CR>')

-- do not yank x
keymap.set('n', 'x', '"_x')

-- navigate within insert mode
keymap.set( 'i', '<C-h>', '<Left>')
keymap.set( 'i', '<C-l>', '<Right>')
keymap.set( 'i', '<C-j>', '<Down>')
keymap.set( 'i', '<C-k>', '<Up>')

-- switch between windows
keymap.set( 'n', '<C-h>', '<C-w>h')
keymap.set( 'n', '<C-l>', '<C-w>l')
keymap.set( 'n', '<C-j>', '<C-w>j')
keymap.set( 'n', '<C-k>', '<C-w>k')
