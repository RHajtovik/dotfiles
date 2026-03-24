return {
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          auto_show = true,
          max_height = 10,
        },
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
          window = {
            max_height = 15,
            max_width = 50,
          },
        },
        ghost_text = { enabled = false },
      },
      fuzzy = { implementation = "prefer_rust_with_warning" },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      keymap = { preset = "enter" },
    },
  },
}
