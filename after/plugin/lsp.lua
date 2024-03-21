require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "jdtls", "pyright", "clangd", "java_language_server", "quick_lint_js", "vtsls"}
})

local on_attach = function (_, bufnr)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>wl', function()
     print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)

end

local lspconfig = require('lspconfig')

require("lspconfig").lua_ls.setup {
    on_attach = on_attach
}

require("lspconfig").clangd.setup {
    on_attach = on_attach
}

require("lspconfig").pyright.setup {
    on_attach = on_attach
}

require("lspconfig").jdtls.setup {
    on_attach = on_attach
}

require("lspconfig").java_language_server.setup {
    on_attach = on_attach
}

require("lspconfig").quick_lint_js.setup {
    on_attach = on_attach
}

require("lspconfig").vtsls.setup {
    on_attach = on_attach
}

