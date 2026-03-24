return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_organize_imports", "ruff_format" },

        javascript = { "eslint_d", "prettierd" },
        typescript = { "eslint_d", "prettierd" },
        javascriptreact = { "eslint_d", "prettierd" },
        typescriptreact = { "eslint_d", "prettierd" },
        json = { "prettierd" },
        css = { "prettierd" },
        markdown = { "prettierd" },

        lua = { "stylua" },
      },
    },
  },
}
