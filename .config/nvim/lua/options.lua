-- hint: use `:h {option}` for info

-- enable mouse, system clipboard
vim.opt.mouse = 'a'
vim.opt.clipboard = 'unnamedplus'

-- fast refresh
vim.opt.updatetime = 50

-- setup completions menu
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

-- space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- don't wrap lines
vim.opt.wrap = false

-- python-friendly tabs-as-spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- cursor line and scrolling
vim.opt.cursorline = true
vim.opt.scrolloff = 8

-- splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- search
vim.opt.incsearch = true
