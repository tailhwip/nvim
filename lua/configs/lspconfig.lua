require("nvchad.configs.lspconfig").defaults()

-- Default border style
vim.cmd "highlight! link FloatBorder CmpBorder"
vim.cmd "highlight! link NormalFloat CmpDoc"

local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = "single"
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- Configure LSP servers
vim.lsp.enable({
  -- c/cpp
  "clangd",

  -- web
  "html",
  "cssls",
  "ts_ls",
})

vim.lsp.config["clangd"].cmd = {
  "clangd",
  "--background-index",
  "--header-insertion=never",
  "--clang-tidy",
}
