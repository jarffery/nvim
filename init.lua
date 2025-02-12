if vim.g.vscode then
    --VSCode extension
    -- 基础配置
    require("basic_vscode")
    -- keymapping
    --plugins setup
else
    -- disable netrew at the very start
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- load the required plugins

    -- plugins setup
    require("plugins")
    require("plugin-config.nvim-tree")
    require("plugin-config.bufferline")
    require("plugin-config.lualine")
    require("plugin-config.telescope")
    require("plugin-config.dashboard")
    require("plugin-config.project")
    require("plugin-config.nvim-treesitter")
    -- LSP
    --require("lsp")
    -- colormap setup
    require("colorscheme")
    -- 基础配置
    require("basic")
    -- keymapping
    require("keybindings")
end
