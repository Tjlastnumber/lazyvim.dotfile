return {
  "saghen/blink.cmp",
  event = { "BufReadPost", "BufNewFile" },
  version = "1.*",
  opts = {
    completion = {
      documentation = {
        auto_show = true,
      },
    },
    signature = {
      enabled = true,
    },
    cmdline = {
      completion = {
        menu = {
          auto_show = true,
        },
      },
    },
  },
}
