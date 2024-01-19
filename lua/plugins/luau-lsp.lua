local luau = {
	{
		"lopi-py/luau-lsp.nvim",
		ft = { "luau", "lua" },
		opts = {},
		dependecies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("luau-lsp").setup({
				sourcemap = {
					enabled = true,
					autogenerate = true,
					rojo_project_file = "default.project.json",
				},
				types = {
					roblox = true,
					roblox_security_level = "PluginSecurity",
				},
				fflags = {
					sync = true,
					override = {
						LuauTarjanChildLimit = 0,
					},
				},
			})
		end,
	},
}
return luau
