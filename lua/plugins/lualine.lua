local function config()
	require("lualine").setup({
		options = {
			theme = "tokyonight",
			component_separators = { left = "|", right = "|" },
			-- https://github.com/ryanoasis/powerline-extra-symbols
			section_separators = { left = " ", right = "" },
		},
		extensions = { "nvim-tree" },
		sections = {
			lualine_c = { "filename", "lsp_progress" },
			lualine_x = { "filesize", "encoding", "fileformat", "filetype" },
		},
	})
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons", opt = true },
		"arkav/lualine-lsp-progress",
	},
	config = config,
}
