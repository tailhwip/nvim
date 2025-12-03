require 'nvchad.mappings'

local map = vim.keymap.set

map('n', ';', ':', { desc = 'CMD enter command mode' })
map('i', 'jk', '<ESC>')

map('n', '<leader>df', vim.diagnostic.open_float, { desc = 'LSP diagnostic float' })
map('n', '<leader>da', vim.lsp.buf.code_action, { desc = 'LSP code action' })
