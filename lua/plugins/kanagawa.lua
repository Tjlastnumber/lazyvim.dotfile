-- Default options:
return {
  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    lazy = true,
    enabled = true,
    opts = {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = {
        palette = { -- add/modify theme and palette colors
          waveAqua1 = "#4d9375",
        },
        theme = {
          dragon = {
            ui = {
              bg = "#131313",
            },
            syn = {
              special1 = "#4d9375",
              special2 = "#4d9375",
              special3 = "#4d9375",
            },
          },
          all = {},
        },
      },
      overrides = function(colors)
        return {
          Boolean = { fg = colors.palette.waveAqua1 },
          Conditional = { fg = colors.palette.waveAqua1 },
          Label = { fg = colors.palette.waveAqua1 },
          Repeat = { fg = colors.palette.waveAqua1 },
          Operator = { fg = colors.palette.waveAqua1 },
          Tag = { fg = colors.palette.waveAqua1 },
          Function = { fg = colors.palette.springGreen },
          String = { fg = colors.palette.sakuraPink },
          Typedef = { fg = colors.palette.crystalBlue },
        }
      end,
      theme = "wave", -- Load "wave" theme when 'background' option is not set
      background = {
        -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    },
  },
}
