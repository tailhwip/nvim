require('conform').setup {
  formatters_by_ft = {
    -- c/cpp
    c = { 'clang-format', 'uncrustify' },
    cpp = { 'clang-format', 'uncrustify' },
    cmake = { 'gersemi' },

    -- shaders
    glsl = { 'clang-format', 'uncrustify' },
    slang = { 'clang-format', 'uncrustify' },

    -- web
    html = { 'prettier' },
    css = { 'prettier' },
    javascript = { 'prettier' },
    javascriptreact = { 'prettier' },
    typescript = { 'prettier' },
    typescriptreact = { 'prettier' },

    -- misc
    lua = { 'stylua' },
    json = { 'prettier' },
    yaml = { 'prettier' },
    xml = { 'xmlformatter' },
    sh = { 'shfmt' },
    zsh = { 'shfmt' },
  },

  format_on_save = {
    lsp_format = 'fallback',
    timeout_ms = 2000,
  },

  formatters = {
    xmlformatter = {
      command = 'xmlformat',
      args = { '--blanks', '--preserve-attributes', '-' },
      stdin = true,
    },
    uncrustify = {
      command = 'uncrustify',
      args = { '-c', '.uncrustify.cfg', '-q', '-l', 'CPP' },
      stdin = true,
    },
  },
}
