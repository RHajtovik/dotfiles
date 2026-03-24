return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "yaml",
        "toml",
        "dockerfile",
        "lua",
        "bash",
        "html",
        "css",
        "markdown",
        "markdown_inline",
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
