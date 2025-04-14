vim.api.nvim_create_user_command("SetupCMakeTools", function()
  vim.cmd "MasonInstall gersemi"
  vim.cmd "TSInstall c cpp cmake"
end, {})

vim.api.nvim_create_user_command("SetupShaderTools", function()
  vim.cmd "MasonInstall glslls"
  vim.cmd "TSInstall glsl hlsl"
end, {})

vim.api.nvim_create_user_command("SetupLuaTools", function()
  vim.cmd "MasonInstall lua-language-server stylua"
end, {})

vim.api.nvim_create_user_command("SetupWebTools", function()
  vim.cmd "MasonInstall html-lsp css-lsp typescript-language-server prettier"
  vim.cmd "TSInstall html css javascript typescript"
end, {})
