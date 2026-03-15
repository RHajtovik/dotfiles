local current_theme = nil

local function set_project_theme()
  local cwd = vim.fn.getcwd()
  local theme = "gruvbox-material"

  if cwd:find("qnxm%-design%-system") then
    theme = "rose-pine"
  elseif cwd:find("qmmand%-console%-start") then
    theme = "everforest"
  elseif cwd:find("qmmander") then
    theme = "gruvbox-material"
  end

  if theme ~= current_theme then
    local ok, err = pcall(vim.cmd.colorscheme, theme)
    if ok then
      current_theme = theme
    else
      vim.notify("Failed to load colorscheme " .. theme .. ": " .. err, vim.log.levels.ERROR)
    end
  end
end

vim.api.nvim_create_autocmd("VimEnter", {
  callback = set_project_theme,
})

vim.api.nvim_create_autocmd("DirChanged", {
  callback = set_project_theme,
})
