local status, dashboard = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

dashboard.setup({
  theme = "hyper", -- Choose "doom" or "hyper"
  config = {
    header = {
      [[]],
    [[          ▀████▀▄▄              ▄█ ]],
    [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
    [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
    [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
    [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
    [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
    [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
    [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
    [[   █   █  █      ▄▄           ▄▀   ]],
    },
    center = {
      {
        icon = "  ",
        desc = " Projects",
        action = "Telescope projects",
        key = "p",
      },
      {
        icon = "  ",
        desc = " Recently opened files",
        action = "Telescope oldfiles",
        key = "r",
      },
      {
        icon = "  ",
        desc = " Edit keybindings",
        action = "edit ~/.config/nvim/lua/keybindings.lua",
        key = "k",
      },
      {
        icon = "  ",
        desc = " Edit Projects",
        action = "edit ~/.local/share/nvim/project_nvim/project_history",
        key = "e",
      },
      {
        icon = "  ",
        desc = " Find file",
        action = "Telescope find_files",
        key = "f",
      },
      {
        icon = "  ",
        desc = " Find text",
        action = "Telescope live_grep",
        key = "t",
      },
    },
  },
})
