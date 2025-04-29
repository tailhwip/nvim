require("nvchad.configs.lspconfig").defaults()

local servers = {
  -- cmake
  "clangd",

  -- web
  "html",
  "cssls",
  "ts_ls",
}

vim.lsp.enable(servers)

