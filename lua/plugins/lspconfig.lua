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
local lspconfig = require("lspconfig")
-- Enable eslint for all supported languages
lspconfig.eslint.setup({
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
})

return {
  "neovim/nvim-lspconfig",
  opte = function(_, opts)
    opts.servers = opts.servers or {}
    opts.servers.unocss = {
      filetypes = { "html", "javascript", "typescript", "vue" }, -- 替换为你需要的 filetype
      root_dir = function(fname)
        return require("lspconfig.util").root_pattern("package.json", "uno.config.ts", ".git")(fname)
      end,
    }
    opts.setup = opts.setup or {}
    opts.setup.eslint = function()
      require("lazyvim.util").lsp.on_attach(function(client)
        if client.name == "eslint" then
          client.server_capabilities.documentFormattingProvider = true
        elseif client.name == "tsserver" then
          client.server_capabilities.documentFormattingProvider = false
        end
      end)
    end
  end,
}
