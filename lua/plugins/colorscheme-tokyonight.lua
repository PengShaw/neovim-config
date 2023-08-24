local customData =require("config.variables").colorschemeTable

function config()
  vim.cmd("colorscheme " .. customData.colorscheme)
end

return {
  customData.url,
  lazy = false,
  priority = 1000,
  config = config,
}
