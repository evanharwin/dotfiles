local plugin = {
    "ggandor/leap.nvim",
}

function plugin.config()
    vim.api.nvim_set_hl(0, 'LeapBackdrop', { link = 'Comment' })
    vim.api.nvim_set_hl(0, 'LeapMatch', { fg = 'white', bg = "black", bold = true, nocombine = true, })
    vim.api.nvim_set_hl(0, 'LeapLabel', { fg = 'pink', bg = "black", bold = true, nocombine = true, })
end

return plugin
