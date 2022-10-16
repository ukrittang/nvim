local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'catppuccin',
    disabled_filetypes = {
      statusline = { "NvimTree" },
      winbar = { "NvimTree" },
    }
  },
}
