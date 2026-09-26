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
          typeCheckingMode = "off",   -- "basic" if you want to keep light checks
          diagnosticSeverityOverrides = {
              reportUndefinedVariable = "none",  -- backstop in case injector misses one
              reportMissingModuleSource = 'none',
          },
        extraPaths = {
	        '/home/henry/dev/icarus/icarus/option_trees/icarus/inc/xm-python/lib',
	        '/home/henry/dev/icarus/icarus/option_trees/icarus/inc/xm-python/pylib',
	        '/home/henry/dev/icarus/icarus/option_trees/icarus/inc/xm-python/python',
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

vim.lsp.config('arduino_language_server', {
  cmd = {
    "arduino-language-server",
    "-cli-config", vim.fn.expand("~/.arduino15/arduino-cli.yaml"),
    "-fqbn", "arduino:avr:uno", -- swap for your actual board
    "-clangd", "/usr/bin/clangd",
  },
  filetypes = { "arduino" },
  root_markers = { "sketch.yaml", ".git" },
})

vim.lsp.enable('arduino_language_server')

-- beancount: point the server at the project's main ledger and its uv venv
vim.lsp.config('beancount', {
  root_markers = { "main.beancount", ".git" },
  before_init = function(params, config)
    local root = config.root_dir
    if not root then return end
    local opts = params.initializationOptions or {}
    local journal = root .. "/main.beancount"
    if vim.uv.fs_stat(journal) then
      opts.journal_file = journal
    end
    local venv_bin = root .. "/.venv/bin/"
    if vim.fn.executable(venv_bin .. "bean-check") == 1 then
      opts.bean_check = {
        bean_check_cmd = venv_bin .. "bean-check",
        python_cmd = venv_bin .. "python",
      }
    end
    params.initializationOptions = opts
  end,
})
vim.lsp.enable('beancount')

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
