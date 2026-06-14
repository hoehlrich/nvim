require("nvim-treesitter").setup()

require("nvim-treesitter").install({ "c", "lua", "vim", "vimdoc", "query", "rust" })

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
