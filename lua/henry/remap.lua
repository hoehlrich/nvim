local nnoremap = require('henry.keymap').nnoremap
local vnoremap = require('henry.keymap').vnoremap
local tnoremap = require('henry.keymap').tnoremap

-- Utils
nnoremap('<leader>rr', "<cmd>:lua require('henry.utils').render()<cr><cr>")
nnoremap('<leader>ro', "<cmd>:lua require('henry.utils').open()<cr><cr>")

-- Copy & Paste
vnoremap('<leader>y', '"+y')
nnoremap('<leader>y', '"+y<cr>')
nnoremap('<leader>p', '"+p<cr>')
nnoremap('<leader>P', '"+P<cr>')
vnoremap('<leader>p', '"+p<cr>')
vnoremap('<leader>P', '"+P<cr>')

-- LSP remaps
nnoremap('gD', vim.lsp.buf.declaration)
nnoremap('gd', vim.lsp.buf.definition)
nnoremap('K', vim.lsp.buf.hover)
nnoremap('gi', vim.lsp.buf.implementation)
nnoremap('<leader>D', vim.lsp.buf.type_definition)
nnoremap('<leader>rn', vim.lsp.buf.rename)
nnoremap('<leader>ca', vim.lsp.buf.code_action)
nnoremap('gr', vim.lsp.buf.references)
nnoremap('<leader>fmt', function() vim.lsp.buf.format { async = true } end)

-- Split movement remaps
nnoremap('<c-h>', '<c-w>h')
nnoremap('<c-j>', '<c-w>j')
nnoremap('<c-k>', '<c-w>k')
nnoremap('<c-l>', '<c-w>l')

-- Floaterm
nnoremap('<leader>tn', '<cmd>FloatermNew<cr>')
nnoremap('<leader>tt', '<cmd>FloatermToggle<cr>')
tnoremap('<esc>', '<c-\\><c-n><cmd>FloatermHide<cr>')

tnoremap('<c-h>', '<c-\\><c-n><cmd>FloatermPrev<cr>')
tnoremap('<c-l>', '<c-\\><c-n><cmd>FloatermNext<cr>')

-- Netrw
nnoremap('<leader>e', '<cmd>Ex<cr>')

-- fzf
nnoremap('<c-p>', '<cmd>Files<cr>')

