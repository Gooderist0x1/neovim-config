local plugins = {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		dependencies = {
			"lopi-py/luau-lsp.nvim",
		},
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require("mason-lspconfig").setup_handlers({
				luau_lsp = function()
					require("luau-lsp").setup({
						server = {
							filetypes = {"luau"},
							settings = {
								["luau-lsp"] = {
									capabilities = capabilities,
									completion = {
										imports = {
											enabled = true,
										},
									},
								},
							},
						},
					})
				end,
			})
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"luau_lsp",
				},
			})
		end,
	},
}
return plugins
