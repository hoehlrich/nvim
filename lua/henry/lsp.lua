require("mason").setup({
    ui = {
        border = "single"
    }
})
require("mason-lspconfig").setup()

vim.lsp.config('pyright', {
  settings = {
    python = {
      analysis = {
        extraPaths = {
	        '/home/henry/dev/icarus/icarus/option_trees/icarus/inc/xm-python/lib',
	        '/home/henry/dev/icarus/icarus/option_trees/icarus/inc/xm-python/pylib',
	        '/home/henry/dev/icarus/icarus/option_trees/icarus/inc/xm-python/python',
        },
        diagnosticSeverityOverrides = {
          reportMissingModuleSource = 'none',
        },
      },
    },
  },
})

vim.lsp.enable{"matlab-language-server"}
vim.lsp.enable("clangd")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("texlab")
vim.lsp.config("lua_ls", {
    Lua = {
        diagnostics = {
            globals = { "vim" }
        }
    }
} )
vim.lsp.enable("lua_ls")

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
