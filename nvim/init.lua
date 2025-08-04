--Settings
vim.wo.number = true
vim.o.relativenumber = true
vim.o.clipboard = "unnamedplus"
vim.o.undofile = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.cursorline = true

vim.o.winborder = 'single'

--Colors
vim.cmd[[hi Normal ctermbg=none guibg=none]]
vim.cmd[[colorscheme nord]]

--Keys
vim.keymap.set('n', '<leader>f', '<cmd>FzfLua files<Cr>')
vim.keymap.set('n', '<leader>b', '<cmd>FzfLua buffers<Cr>')
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
-- vim.keymap.set('n', '<leader>k', vim.lsp.buf.hover)
-- vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
-- vim.keymap.set('n', '<leader>a', vim.lsp.buf.code_action)
-- vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)


vim.cmd[[set completeopt+=menuone,noselect,popup]]

require'nvim-treesitter.configs'.setup {
	indent = { enable = true },
  highlight = { enable = true },
}

vim.diagnostic.config({ signs = true })
vim.lsp.enable('tsserver')
