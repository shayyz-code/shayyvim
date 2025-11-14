vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
})

vim.lsp.config("rust_analyzer", {
  capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
})

vim.lsp.config('gopls', {
  capabilities = capabilities,
})

vim.lsp.config('zls', {
  capabilities = capabilities,
})
