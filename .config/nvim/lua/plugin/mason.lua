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
    "pyright",
}

plugin.settings = {
    lua_ls = {
        -- suppressing a warning in lua config files
        settings = { Lua = { diagnostics = { globals = {"vim"} } } }
    },
    rust_analyzer = {},
    ruff_lsp = {
        on_attach = function(client, bufnr)
            client.server_capabilities.hoverProvider = false
        end
    },
    pyright = {
        settings = {
            pyright = {
                disableOrganizeImports = true, -- use ruff
            },
            python = {
                analysis = {
                    ignore = {"*"}, -- use ruff
                    typeCheckingMode = {"strict"},
                }
            }
        },
    },
}

function plugin.config()
	local lsp = require("lsp-zero")
	lsp.preset("recommended")
	require("lsp-zero").setup()
	require("mason").setup()
	require("mason-lspconfig").setup_handlers({
		function (server_name)
		    require("lspconfig")[server_name].setup(plugin.settings[server_name])
		end
	})
	require("mason-lspconfig").setup({
      ensure_installed = plugin.servers,
      automatic_installation = true,
	})
    vim.diagnostic.config({
        virtual_text = true
    })
end

return plugin
