# Neovim Config

My neovim config folder

## Requirements
- [Neovim 0.7+](https://github.com/neovim/neovim)

## Installation

```bash
git clone https://hoehlrich/nvim
nvim +PackerSync
```

## Setup

### Install LSP

```bash
:LspInstall <LANGUAGE-SERVER>
```

### Install tree-sitter language parser

```bash
:TSInstall <LANGUAGE>
```

### Sync plugins

```bash
:PackerSync
```

## Features

- Syntax highlighting with [tree-sitter](https://github.com/nvim-treesitter/nvim-treesitter)
- Filetree with [neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- Terminal with [toggleterm](https://github.com/akinsho/toggleterm.nvim)
- LSP with [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- Fuzzy finder with [telescope](https://github.com/nvim-telescope/telescope.nvim)
- Autocompletion with [cmp](https://github.com/hrsh7th/nvim-cmp)
- Nordfox colorscheme with [nightfox](https://github.com/EdenEast/nightfox.nvim)
