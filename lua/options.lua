require "nvchad.options"

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.slang",
  callback = function()
    vim.bo.filetype = "slang"
  end,
})
