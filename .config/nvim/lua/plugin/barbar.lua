local plugin = {
    "romgrk/barbar.nvim",
}

function plugin.config()
    require("barbar").setup({
        'romgrk/barbar.nvim',
        dependencies = {
            'lewis6991/gitsigns.nvim',
            'nvim-tree/nvim-web-devicons',
        },
        init = function() vim.g.barbar_auto_setup = false end
    })
end

return plugin

