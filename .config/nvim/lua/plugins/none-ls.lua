-- [[
-- How to configure Null LS:
--     1. Install formatters and linters with manson -> :Mason
--     2. Add the formatter and linter to `sources` table ->
--         null_ls.builtins.formatting.<name>
--         null_ls.builtins.diagnotics.<name>
-- ]]
return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				-- failed to load eslint_d for method diagnostics?
				-- null_ls.builtins.diagnostics.eslint_d,
			},
		})
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
