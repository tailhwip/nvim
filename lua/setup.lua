vim.api.nvim_create_user_command("SetupCppTools", function()
  -- local: cmake ninja llvm uncrustify
  vim.cmd "MasonInstall gersemi"
  vim.cmd "TSInstall c cpp cmake"
end, {})

vim.api.nvim_create_user_command("SetupShaderTools", function()
  -- local: slang
  vim.cmd "TSInstall glsl hlsl slang"
end, {})

vim.api.nvim_create_user_command("SetupLuaTools", function()
  -- local: lua
  vim.cmd "MasonInstall lua-language-server stylua"
end, {})

vim.api.nvim_create_user_command("SetupWebTools", function()
  vim.cmd "MasonInstall html-lsp css-lsp typescript-language-server prettier"
  vim.cmd "TSInstall html css javascript typescript"
end, {})
