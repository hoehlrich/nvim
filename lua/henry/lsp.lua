require("mason").setup({
    ui = {
        border = "single"
    }
})
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")
lspconfig.clangd.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.texlab.setup {}
lspconfig.lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }
            }
        }
    }
}
lspconfig.arduino_language_server.setup {}
lspconfig.tsserver.setup {}

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
    float = { border = "single" }
}
