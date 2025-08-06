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
vim.keymap.set('n', '<leader>g', '<cmd>FzfLua grep<Cr>')


vim.cmd[[set completeopt+=menuone,noselect,popup]]

require'nvim-treesitter.configs'.setup {
	indent = { enable = true },
  highlight = { enable = true },
}

vim.diagnostic.config({ signs = true })
vim.lsp.enable('tsserver')
