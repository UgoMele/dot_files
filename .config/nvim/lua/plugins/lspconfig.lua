return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.cssls.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities,
      })
      --- lspconfig.tailwindcss.setup({})
    end
  },
}
