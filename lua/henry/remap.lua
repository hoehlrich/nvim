local nnoremap = require("henry.keymap").nnoremap
local tnoremap = require("henry.keymap").tnoremap

nnoremap("<leader>e", "<cmd>Neotree<CR>")

-- Remap split navigation to hjkl
nnoremap("<c-h>", "<cmd>wincmd h<CR>")
nnoremap("<c-j>", "<cmd>wincmd j<CR>")
nnoremap("<c-k>", "<cmd>wincmd k<CR>")
nnoremap("<c-l>", "<cmd>wincmd l<CR>")

-- Lsp remaps
nnoremap("gd", ":lua vim.lsp.buf.definition()<cr>")
nnoremap("gD", ":lua vim.lsp.buf.declaration()<cr>")
nnoremap("gi", ":lua vim.lsp.buf.implementation()<cr>")
nnoremap("gw", ":lua vim.lsp.buf.document_symbol()<cr>")
nnoremap("gw", ":lua vim.lsp.buf.workspace_symbol()<cr>")
nnoremap("gr", ":lua vim.lsp.buf.references()<cr>")
nnoremap("gt", ":lua vim.lsp.buf.type_definition()<cr>")
nnoremap("K", ":lua vim.lsp.buf.hover()<cr>")
nnoremap("<leader>af", ":lua vim.lsp.buf.code_action()<cr>")
nnoremap("<leader>rn", ":lua vim.lsp.buf.rename()<cr>")

-- Telescope remaps
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Toggleterm 
nnoremap("<c-\\>", "<cmd>ToggleTerm<cr>")

-- Terminal
tnoremap("<Esc>", "<c-\\><c-n>")
