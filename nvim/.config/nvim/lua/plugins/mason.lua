return {
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "mason-org/mason.nvim" },
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "pyright",
          "vtsls",
          "tailwindcss-language-server",
          "lua-language-server",
          "json-lsp",
          "ruff",
          "eslint_d",
          "prettierd",
          "stylua",
          "hadolint",
          "dockerfile-language-server",
          "docker-compose-language-service",
          "yaml-language-server",
          "shfmt",
          "taplo",
        },
        run_on_start = true,
      })
    end,
  },
}
