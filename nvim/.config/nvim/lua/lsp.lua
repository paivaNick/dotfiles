local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("lua_ls", {
	cmd = { "lua-language-server" },
    filetypes = { "lua" },
	capabilities = capabilities,
})
vim.lsp.config("ts_ls", {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
	capabilities = capabilities, -- mesma tabela de capacidades do exemplo
})
vim.lsp.enable("lua_ls")
vim.lsp.enable("ts_ls")

-- No início do seu arquivo de LSP (antes de vim.lsp.config)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    print("LSP attached to " .. vim.bo.filetype)
  end,
})
