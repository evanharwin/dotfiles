local plugin = {
    "lewis6991/gitsigns.nvim",
}

function plugin.config()
    require('gitsigns').setup()
end

return plugin
