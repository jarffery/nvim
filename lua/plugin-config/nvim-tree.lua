local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
  return
end
-- setup custom mapping through the my_on_attach container
local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  
  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
  vim.keymap.set('n', 'v', api.node.open.vertical, opts('Open Vertical Split'))
  vim.keymap.set('n', 'h', api.node.open.horizontal, opts('Open Horizontal Split'))
end

-- setup with some options
nvim_tree.setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 35,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  on_attach = my_on_attach,
    -- wsl install -g wsl-open
    -- https://github.com/4U6U57/wsl-open/
  system_open = {
      cmd = 'wsl-open',
  }  -- mac 直接设置为 open
})
-- 自动关闭
vim.cmd([[
  autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

