local csTable =require("config.variables").colorschemeTable

return {
  csTable.url,
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme " .. csTable.colorscheme)
  end
}
