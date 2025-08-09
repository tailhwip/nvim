vim.api.nvim_create_user_command("SetupDefaultTools", function()
  vim.cmd "MasonInstall lua-language-server stylua jq yq"
end, {})

vim.api.nvim_create_user_command("SetupGraphicsTools", function()
  vim.cmd "MasonInstall uncrustify gersemi slang"
  vim.cmd "TSInstall c cpp cmake slang"
end, {})

vim.api.nvim_create_user_command("SetupWebTools", function()
  vim.cmd "MasonInstall html-lsp css-lsp typescript-language-server prettier"
  vim.cmd "TSInstall html css javascript typescript"
end, {})
