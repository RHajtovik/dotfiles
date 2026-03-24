return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "center",
        layout_config = {
          center = {
            width = 0.6,
            height = 0.4,
            preview_cutoff = 1,
          },
        },
      },
    },
  },
}
