local function set_project_theme()
  local cwd = vim.fn.getcwd()

  -- Match by folder name or path
  if cwd:find("qnxm%-design%-system") then
    vim.cmd.colorscheme("rose-pine")
  elseif cwd:find("qmmand%-console%-start") then
    vim.cmd.colorscheme("everforest")
  elseif cwd:find("qmmander") then
    vim.cmd.colorscheme("rose-pine")
  else
    vim.cmd.colorscheme("rose-pine")
  end
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = set_project_theme,
})

vim.api.nvim_create_autocmd("DirChanged", {
  callback = set_project_theme,
})
