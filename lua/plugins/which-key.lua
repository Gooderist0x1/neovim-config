local whichkey = {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
		config = function()
			local wk = require("which-key")
			wk.register({
				["<leader>"] = {
					t = {
						name = "Telescope",
						f = "Find Files",
						g = "Live Grep",
					},
					c = {
						name = "Code",
						a = "Code Actions",
					},
					g = {
						name = "Formating",
						f = "Format",
					},
				},
				g = {
					d = "Get Definition",
				},
				K = "hover",
			})
		end,
	},
}

return whichkey
