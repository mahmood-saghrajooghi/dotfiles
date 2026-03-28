local theme_path = vim.fn.expand("~/.config/omarchy/current/theme/neovim.lua")
local uv = vim.uv or vim.loop

if uv and uv.fs_stat(theme_path) then
  local ok, theme = pcall(dofile, theme_path)
  if ok and theme ~= nil then
    return theme
  end
end

return {}
