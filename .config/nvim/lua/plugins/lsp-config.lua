-- [[
-- How to configure new lsp:
--     1. Download using mason ui -> :Mason
--     2. Add lsp to `ensure_installed` for `mason-lspconfig`
--     3. Configure lsp for `nvim-lspconfig` -> vim.lsp.config("lua_ls", {})
-- ]]
return {
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls" }
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("lua_ls", {})
            vim.lsp.config("rust_analyzer", {})
            vim.lsp.config("ts_ls", {})

            -- commands not supported by ts_ls?
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            -- no code actions available?
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    },
}
