local status, bufferline = pcall(require, "bufferline")
if (not status) then return end

bufferline.setup {
  options = {
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    always_show_bufferline = true,
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true,
    separator_style = "thin",
  },
  highlights = require("catppuccin.groups.integrations.bufferline").get()
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
