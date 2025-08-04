return {
  cmd = { 'typescript-language-server', '--stdio' },
  root_markers = {'.git', '.editorconfig', '.tsconfig'},
  filetypes = { 'javascript', 'typescript',  'javascriptreact', 'typescriptreact' },
  on_attach = function(client, bufnr)
    vim.lsp.completion.enable(true, client.id, bufnr, { autotrigger = true })
  end,
}
