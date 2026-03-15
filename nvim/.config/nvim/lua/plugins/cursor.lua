return {
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.28,
      trailing_stiffness = 0.22,
      matrix_pixel_threshold = 0.8,
      time_interval = 16,

      transparent_bg_fallback_color = "#1d2021",
      legacy_computing_symbols_support = false,
    },
  },
  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.5,
      trailing_stiffness = 0.5,
      matrix_pixel_threshold = 0.5,

      -- good for transparent terminal backgrounds
      transparent_bg_fallback_color = "#303030",

      -- only set this true if your font supports legacy computing symbols well
      legacy_computing_symbols_support = true,
    },
  },
}
