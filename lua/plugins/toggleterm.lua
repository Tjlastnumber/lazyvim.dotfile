return {
  "akinsho/toggleterm.nvim",
  version = "*",
  opts = {
    size = 10,
    open_mapping = { [[<c-\>]], [[<c-`>]] },
    shading_factor = 2,
    direction = "float",
    float_opts = {
      border = "curved",
      highlights = {
        border = "Normal",
        height = 100,
        background = "Normal",
      },
    },
  },
}
