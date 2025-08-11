return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "css",
      "scss",
      "dockerfile",
      "gitignore",
      "html",
      "vue",
      "json",
      "markdown",
      "typescript",
      "java",
    },
    -- 启用增量选择
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<CR>",
        node_incremental = "<CR>",
        node_decremental = "<BS>",
        scope_incremental = "<TAB>",
      },
    },
  },
}
