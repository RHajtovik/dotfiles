-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--

if vim.g.neovide then
  -- Appearance
  vim.g.neovide_opacity = 0.7
  vim.g.neovide_window_blurred = true

  vim.opt.guifont = "CaskaydiaCove Nerd Font:h9.5"

  -- Cursor
  vim.opt.guicursor = {
    "n:block",
    "i:hor20",
    "v:hor20",
    "c:hor20",
    "r:hor20",
    "o:hor20",
    "a:blinkon400-blinkoff250",
  }

  -- Clipboard sanity
  vim.opt.clipboard = "unnamedplus"
  vim.opt.backspace = { "indent", "eol", "start" }
end
