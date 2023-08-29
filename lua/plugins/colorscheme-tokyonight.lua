local customData = require("config.variables").colorschemeTable

local function config()
	vim.cmd("colorscheme " .. customData.colorscheme)
end

return {
	customData.url,
	lazy = false,
	priority = 1000,
	config = config,
}
