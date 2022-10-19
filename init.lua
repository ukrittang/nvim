require('tang.base')
require('tang.plugins')
require('tang.highlights')
require('tang.keymaps')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('tang.macos')
end
if is_win then
  require('tang.windows')
end
