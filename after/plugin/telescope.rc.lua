local status, telescope = pcall(require, "telescope")
if (not status) then return end
local status2, builtin = pcall(require, 'telescope.builtin')
if (not status2) then return end

telescope.setup {}

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
