require("conform").setup {
  formatters_by_ft = {
    -- c/cpp
    c = { "clang-format", "uncrustify" },
    cpp = { "clang-format", "uncrustify" },

    glsl = { "clang-format", "uncrustify" },
    slang = { "clang-format", "uncrustify" },

    cmake = { "gersemi" },

    -- web
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },

    -- misc
    json = { "jq" },
    yaml = { "yq" },
  },

  format_on_save = {
    timeout_ms = 2000,
    lsp_fallback = true,
  },

  formatters = {
    uncrustify = {
      command = "uncrustify",
      args = function()
        return { "-c", ".uncrustify.cfg", "-q", "-l", "CPP" }
      end,
      stdin = true,
    },
  },
}
