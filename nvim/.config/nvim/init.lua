-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.project-theme")

vim.opt.guicursor = {
  "n:block", -- Normal: solid block
  "v:hor20", -- Visual: underline cursor
  "i:hor20", -- Insert: underline
  "c:hor20", -- Command-line: underline
  "r:hor20", -- Replace: underline
  "o:hor20", -- Operator-pending: underline
  "a:blinkon300-blinkoff300",
}

vim.opt.clipboard = "unnamedplus"

vim.g.clipboard = {
  name = "win32yank",
  copy = {
    ["+"] = "win32yank.exe -i --crlf",
    ["*"] = "win32yank.exe -i --crlf",
  },
  paste = {
    ["+"] = "win32yank.exe -o --lf",
    ["*"] = "win32yank.exe -o --lf",
  },
  cache_enabled = 0,
}
