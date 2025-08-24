require "nvchad.options"

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.glsl", "*.hlsl", "*.slang" },
  callback = function(args)
    local ext = vim.fn.fnamemodify(args.file, ":e")
    vim.bo.filetype = ext
  end,
})
