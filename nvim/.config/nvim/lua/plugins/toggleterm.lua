return {
  -- ToggleTerm
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "float",
      float_opts = { border = "rounded" },
    },
    keys = {
      { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Terminal (toggle)" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal (float)" },
      { "<leader>th", "<cmd>ToggleTerm size=15 direction=horizontal<cr>", desc = "Terminal (horizontal)" },
      { "<leader>tv", "<cmd>ToggleTerm size=60 direction=vertical<cr>", desc = "Terminal (vertical)" },
      { "<leader>tT", "<cmd>ToggleTerm direction=tab<cr>", desc = "Terminal (tab)" },
    },
  },

  -- WhichKey group label: makes it show “t → Terminal” instead of “+1”
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.spec = opts.spec or {}
      table.insert(opts.spec, { "<leader>t", group = "terminal" })
    end,
  },
}
