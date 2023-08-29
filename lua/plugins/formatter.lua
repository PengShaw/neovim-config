local function config()
	require("formatter").setup({
		logging = true,
		log_level = vim.log.levels.WARN,
		filetype = require("config.format"),
	})
end

return {
	"mhartington/formatter.nvim",
	config = config,
}
