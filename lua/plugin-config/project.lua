local status, project = pcall(require, "project_nvim")
if not status then
  vim.notify("没有找到 project_nvim")
  return
end

-- Ensure `project.nvim` works properly with `nvim-tree`
project.setup({
  detection_methods = { "pattern", "lsp" }, -- Use pattern matching and LSP root
  patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", ".sln" },

  -- Sync nvim-tree root with the project's working directory
  sync_root_with_cwd = true, -- Same as in `nvim-tree.lua`
  respect_buf_cwd = true,     -- Ensures consistency with nvim-tree
})

-- Ensure `telescope-projects` integration is loaded
local telescope_status, telescope = pcall(require, "telescope")
if telescope_status then
  pcall(telescope.load_extension, "projects")
else
  vim.notify("没有找到 telescope")
end

pcall(telescope.load_extension, "projects")
