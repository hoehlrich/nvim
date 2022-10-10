-- LSP Installer
local lsp_installer = require("nvim-lsp-installer")
lsp_installer.on_server_ready(function(server)
    local opts = {}
    --
    -- Lua setup
    if server.name == 'sumneko_lua' then
        opts.settings = {
            Lua = {
                diagnostics = {
                    -- Add vim to global scope
                    globals = { 'vim' }
                }
            }
        }
    end

    server:setup(opts)
end)

