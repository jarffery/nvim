-- disable netrew at the very start
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- load the required plugins
-- 基础配置
require("basic")
-- keymapping
require("keybindings")
-- colormap setup
require("colorscheme")
-- plugins setup
require("plugins")
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.telescope")
require("plugin-config.dashboard")
require("plugin-config.project")
