vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    if vim.bo.filetype == 'NvimTree' then
      vim.cmd 'NvimTreeResize 60'
    end
  end,
})

vim.api.nvim_create_autocmd('BufLeave', {
  callback = function()
    if vim.bo.filetype == 'NvimTree' then
      vim.cmd 'NvimTreeResize 30'
    end
  end,
})

return {
  filters = {
    dotfiles = true,
  },
  renderer = {
    group_empty = true,
  },
}
