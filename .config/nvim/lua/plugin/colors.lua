local plugin = {
    "catppuccin/nvim",
    priority = 1000,
}

function plugin.config()
    require("catppuccin").setup({
        dim_inactive = {
            enabled = true,    -- dims the background color of inactive window
            shade = "dark",
            percentage = 0.02, -- percentage of the shade to apply to the inactive window
        },
        integrations = {
            barbar = true,
        }
    })
    vim.cmd.colorscheme("catppuccin")
end

return plugin
