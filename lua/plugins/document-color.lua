-- ~/.config/nvim/lua/plugins/document-color.lua
return {
  "mrshmllow/document-color.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("document-color").setup({
      mode = "background",
    })
  end,
  init = function()
    -- Hook LSP on_attach
    local Util = require("lazyvim.util")
    Util.lsp.on_attach(function(client, buffer)
      if client.server_capabilities.colorProvider then
        require("document-color").buf_attach(buffer)
      end
    end)
  end,
}
