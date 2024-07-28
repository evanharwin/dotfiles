local opts= {
    noremap = true,
    silent = true,
}

-- groupings
-- <leader>f: 'find'
-- <leader>g: 'goto'
-- <leader>d: 'debug/diagnose'

-- window navigation and resizing
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<C-Up>', ':resize -1<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +1<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -1<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +1<CR>', opts)

-- preseve selection in visual mode switching
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- telescope keybindings
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, opts)
vim.keymap.set("n", "<leader>fr", telescope_builtin.git_files, opts)
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, opts)
vim.keymap.set("n", "<leader>fm", telescope_builtin.man_pages, opts)
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, opts)
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, opts)

-- language server protocol
vim.keymap.set("n", "<leader>fs", vim.lsp.buf.workspace_symbol, opts)
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>dd", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>da", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "<leader>k", vim.lsp.buf.hover, opts)

-- clear highlighted search result
vim.keymap.set("n", "<leader>s", ":noh<CR>", opts)

-- leap for motion with 'sS'
vim.keymap.set({'n', 'x', 'o'}, 's', '<Plug>(leap-forward)')
vim.keymap.set({'n', 'x', 'o'}, 'S', '<Plug>(leap-backward)')
vim.keymap.set({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')

-- fix escape in terminal mode
vim.api.nvim_set_keymap('t', '<ESC>', '<C-\\><C-n>', opts)
