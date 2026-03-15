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
  "a:blinkon500-blinkoff400",
}
