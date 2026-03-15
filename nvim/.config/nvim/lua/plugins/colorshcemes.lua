---@diagnostic disable: undefined-global
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000, -- load before other ui stuff
    config = function()
      require("rose-pine").setup({
        variant = "main", -- main | moon | dawn
        dark_variant = "main",
        styles = {
          transparency = true, -- works great with blur
        },
      })
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
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_background = "soft" -- or "soft" / "hard"
      vim.g.gruvbox_material_foreground = "material"
      vim.g.gruvbox_material_transparent_background = 1
    end,
  },
}
