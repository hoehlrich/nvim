require("mason").setup({
    ui = {
        border = "single"
    }
})
require("mason-lspconfig").setup()


vim.lsp.config("clangd", {})
vim.lsp.config("rust_analyzer", {})
vim.lsp.config("texlab", {})
vim.lsp.config("lua_ls", {
    Lua = {
        diagnostics = {
            globals = { "vim" }
        }
    }
} )

require("lspconfig.ui.windows").default_options = {
    border = "single"
}
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
        border = "single"
    }
)
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
    vim.lsp.handlers.signature_help, {
        border = "single"
    }
)
vim.diagnostic.config {
    virtual_text = true,
    float = { border = "single" }
}
