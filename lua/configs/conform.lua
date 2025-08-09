require("conform").setup {
  formatters_by_ft = {
    -- c/cpp
    c = { "clang-format", "uncrustify" },
    cpp = { "clang-format", "uncrustify" },
    cmake = { "gersemi" },
    slang = { "clang-format", "uncrustify" },

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
      args = function(_, ctx)
        local ft = vim.bo[ctx.buf].filetype:upper()
        ft = ft == "Slang" and "C" or ft
        return { "-c", ".uncrustify.cfg", "-q", "-l", ft }
      end,
      stdin = true,
    },
  },
}
