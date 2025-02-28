local plugin = {
    "stevearc/oil.nvim",
}

function plugin.config()
    require("oil").setup({
        default_file_explorer = true,
        columns = {
            "icon",
        },
        use_default_keymaps = false,
    })
end

return plugin
