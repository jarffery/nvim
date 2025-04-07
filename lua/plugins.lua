-- 自动安装 lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.notify("正在安装 lazy.nvim，请稍后...")
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
  vim.notify("lazy.nvim 安装完毕")
end
vim.opt.rtp:prepend(lazypath)

-- 加载 lazy.nvim 并初始化插件
require("lazy").setup({
  --------------------- colorschemes --------------------
  { "folke/tokyonight.nvim" },
  { "mhartington/oceanic-next" },
  { "ellisonleao/gruvbox.nvim", dependencies = { "rktjmp/lush.nvim" } },
  { "shaunsingh/nord.nvim" },
  { "ful1e5/onedark.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "tanvirtin/monokai.nvim" },
  -------------------------------------------------------
  -------------------------- plugins --------------------
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "akinsho/bufferline.nvim", version = "*", dependencies = { "nvim-tree/nvim-web-devicons", "moll/vim-bbye" } },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "arkav/lualine-lsp-progress" },
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },
  { "LinArcX/telescope-env.nvim" },
  { "nvimdev/dashboard-nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "ahmedkhalf/project.nvim" },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  {
    "kylechui/nvim-surround",
    version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  -------------------------------------------------------
  --------------------- LSP ----------------------------
  { "williamboman/mason.nvim" },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason-lspconfig.nvim" },
}, {
  ui = {
    border = "single", -- 使用单线边框
  },
})
