local plugin = {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'nvim-lua/plenary.nvim',
    },
}

plugin.servers = {
    "lua_ls",
    "rust_analyzer",
    "ruff_lsp",
    "ty",
}

plugin.settings = {
    lua_ls = {
        -- suppressing a warning in lua config files
        settings = { Lua = { diagnostics = { globals = { "vim" } } } }
    },
}

-- set up a default, empty, config for the new mason tools.
setmetatable(plugin.settings, { __index = function() return {} end })

function plugin.config()
    local lsp = require("lsp-zero")
    lsp.preset("recommended")
    require("lsp-zero").setup()
    require("mason").setup()
    require("mason-lspconfig").setup_handlers({
        function(server_name)
            require("lspconfig")[server_name].setup(plugin.settings[server_name])
        end
    })
    require("mason-lspconfig").setup({
        ensure_installed = plugin.servers,
        automatic_installation = true,
    })
    vim.diagnostic.config({
        virtual_text = false
    })
end

return plugin
