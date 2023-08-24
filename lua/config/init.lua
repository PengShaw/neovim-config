local M = {}

function M.setup()
  --- basic config ---
  require "config.options"
  --- plugins ---
  --- lazy.nvim
  require "plugins.lazy-init"
end

return M
