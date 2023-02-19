local status, nvim_lsp = pcall(require, "lspconfig")
if (not status) then return end

nvim_lsp.pyright.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  cmd = { "typescript-language-server", "--stdio" },
  capabilities = capabilities
}
