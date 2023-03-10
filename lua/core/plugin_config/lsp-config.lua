require("mason").setup()
require("mason-lspconfig").setup ({
  ensure_installed = { "gopls", "lua_ls" }
})

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  -- 查看函数聲明
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  -- 查看 method 定義
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  -- 查看 method 文件
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  -- 查看 method 相關引用
  vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, {})
end

require("lspconfig").gopls.setup {
  on_attach = on_attach
}

require("lspconfig").lua_ls.setup {
  on_attach = on_attach
}
