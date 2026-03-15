return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      show_hidden = false,
      hide_gitignored = false,
    },
    dashboard = {
      width = 50,
      pane_gap = 4,

      formats = {
        header = { "%s", align = "center" },
        footer = { "%s", align = "center" },
      },

      sections = {
        {
          section = "header",
          pane = 1,
        },
        {
          section = "keys",
          pane = 2,
          gap = 1,
          padding = 1,
        },
        {
          section = "startup",
          pane = 2,
        },
      },

      preset = {
        header = [[




⢀⢀⢀⢀⢀⢸⣿⣿⣿⣿⣷⣶⣶⣶⣶⣶⣶⣤⣄⣀⣀⣀⣀⣀⡀⢀⢀⢀
⢀⢀⢀⢀⢀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⢀⢀⢀
⢀⢀⢀⢀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢀⢀⢀
⢀⢀⢀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢀⢀⢀⢀
⢀⢀⢀⢀⣿⣿⣿⣿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⢀⢀⢀
⢀⢀⢀⢀⠸⣿⣿⣿⣦⡀⠀⣹⣿⣿⣿⣿⠟⠉⠉⠙⣻⣿⣿⡟⢀⢀⢀⢀
⢀⢀⢀⢀⢀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣴⣿⣿⣿⠟⢀⢀⢀⢀⢀
⢀⢀⢀⢀⢀⢀⢠⣾⣿⣿⣿⣿⣦⣴⣿⣿⣿⣿⣿⣿⠟⠉⢀⢀⢀⢀⢀⢀
⢀⢀⢀⢀⢀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢀⢀⢀⢀⢀⢀⢀
⢀⢀⢀⢀⢀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢀⢀⢀⢀⢀⢀⢀
⢀⢀⢀⢀⢀⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢀⢀⢀⢀⢀⢀⢀
]],
      },
    },
  },
}
