return {
  formatters_by_ft = {
    -- cmake
    c = { "clang-format" },
    cpp = { "clang-format" },
    cmake = { "gersemi" },

    -- web
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
