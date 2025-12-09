local plugin = {
    "bjarneo/pixel.nvim",
    priority = 1000,
}

function plugin.config()
    vim.cmd.colorscheme("pixel")
end

return plugin
