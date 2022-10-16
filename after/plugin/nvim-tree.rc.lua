local status, n = pcall(require, "nvim-tree")
if (not status) then return end

-- disable netrw at the very start
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

n.setup({
  sort_by = "case_sensitive",
  disable_netrw = true,
  hijack_cursor = true,
  hijack_unnamed_buffer_when_opening = true,
  view = {
    adaptive_size = true,
  },
  renderer = {
    group_empty = true,
    highlight_git = true,
  },
  filters = {
    dotfiles = false,
  },
})

vim.keymap.set('n', '<C-n>', '<cmd> NvimTreeToggle <CR>')
vim.keymap.set('n', '<leader>e', '<cmd> NvimTreeFocus <CR>')
