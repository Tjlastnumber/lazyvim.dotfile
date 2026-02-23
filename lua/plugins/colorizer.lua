return {
  "norcalli/nvim-colorizer.lua",
  opts = {
    --"*", -- Highlight all files, but customize some others.
    javascript = { rgb_fn = true },
    css = { rgb_fn = true, hsl_fn = true },
    typescript = { rgb_fn = true, hsl_fn = true },
    "!html",
  },
}
