local customizations = {
  { rule = "style/*", severity = "off", fixable = true },
  { rule = "format/*", severity = "off", fixable = true },
  { rule = "*-indent", severity = "off", fixable = true },
  { rule = "*-spacing", severity = "off", fixable = true },
  { rule = "*-spaces", severity = "off", fixable = true },
  { rule = "*-order", severity = "off", fixable = true },
  { rule = "*-dangle", severity = "off", fixable = true },
  { rule = "*-newline", severity = "off", fixable = true },
  { rule = "*quotes", severity = "off", fixable = true },
  { rule = "*semi", severity = "off", fixable = true },
}

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = { eslint = {} },
    setup = {
      eslint = function()
        require("lspconfig").eslint.setup({
          filetypes = {
            "javascript",
            "javascriptreact",
            "javascript.jsx",
            "typescript",
            "typescriptreact",
            "typescript.tsx",
            "vue",
            "html",
            "markdown",
            "json",
            "jsonc",
            "yaml",
            "toml",
            "xml",
            "gql",
            "graphql",
            "astro",
            "svelte",
            "css",
            "less",
            "scss",
            "pcss",
            "postcss",
          },
          settings = {
            -- Silent the stylistic rules in you IDE, but still auto fix them
            rulesCustomizations = customizations,
          },
          on_attach = function(_, bufnr)
            vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              command = "EslintFixAll",
            })
          end,
        })
        -- require("lazyvim.util").lsp.on_attach(function(client)
        --   if client.name == "eslint" then
        --     client.server_capabilities.documentFormattingProvider = true
        --   elseif client.name == "tsserver" then
        --     client.server_capabilities.documentFormattingProvider = false
        --   end
        -- end)
      end,
    },
  },
}
