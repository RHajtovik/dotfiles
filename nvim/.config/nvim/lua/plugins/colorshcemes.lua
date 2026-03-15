---@diagnostic disable: undefined-global
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000, -- load before other UI stuff
    config = function()
      require("rose-pine").setup({
        variant = "main", -- main | moon | dawn
        dark_variant = "main",
        styles = {
          transparency = true, -- works great with blur
        },
      })
      vim.cmd("colorscheme rose-pine")
    end,
  },
  {
    "sainnhe/everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_background = "hard" -- soft | medium | hard
      vim.g.everforest_transparent_background = 1
    end,
  },
}
