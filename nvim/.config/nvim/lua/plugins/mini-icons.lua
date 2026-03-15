---@diagnostic disable: undefined-global
return {
  {
    "nvim-mini/mini.icons",
    opts = function(_, opts)
      opts = opts or {}

      opts.extension = vim.tbl_deep_extend("force", opts.extension or {}, {
        py = { glyph = "", hl = "MiniIconsPython" },
        pyc = { glyph = "", hl = "MiniIconsPython" },
        pyd = { glyph = "", hl = "MiniIconsPython" },
        pyo = { glyph = "", hl = "MiniIconsPython" },

        js = { glyph = "󰌞", hl = "MiniIconsJS" },

        ts = { glyph = "", hl = "MiniIconsTS" },
        tsx = { glyph = "", hl = "MiniIconsTS" },
      })

      return opts
    end,

    config = function(_, opts)
      require("mini.icons").setup(opts)

      local function set_mini_icon_highlights()
        vim.api.nvim_set_hl(0, "MiniIconsPython", { fg = "#6C975B" })
        vim.api.nvim_set_hl(0, "MiniIconsJS", { fg = "#FFDE59" })
        vim.api.nvim_set_hl(0, "MiniIconsTS", { fg = "#6AE7EC" })
      end

      set_mini_icon_highlights()

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        desc = "Reapply custom mini.icons highlight groups",
        callback = set_mini_icon_highlights,
      })
    end,
  },
}
