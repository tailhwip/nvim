vim.api.nvim_create_user_command('SetupCppTools', function()
  -- local: cmake ninja uncrustify
  vim.cmd 'MasonInstall clangd clang-format gersemi'
  vim.cmd 'TSInstall c cpp cmake'
end, {})

vim.api.nvim_create_user_command('SetupJavaTools', function()
  -- local: jdk mvn
  vim.cmd 'MasonInstall jdtls xmlformatter'
  vim.cmd 'TSInstall java javadoc xml'
end, {})

vim.api.nvim_create_user_command('SetupShellTools', function()
  -- local: lua
  vim.cmd 'MasonInstall lua-language-server stylua shfmt'
end, {})

vim.api.nvim_create_user_command('SetupShaderTools', function()
  -- local: slang
  vim.cmd 'TSInstall glsl hlsl slang'
end, {})

vim.api.nvim_create_user_command('SetupWebTools', function()
  vim.cmd 'MasonInstall html-lsp css-lsp typescript-language-server prettier'
  vim.cmd 'TSInstall html css javascript typescript'
end, {})
