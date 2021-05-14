# Nord Draft theme 

## Usage 

This repository is a draft for a neovim lua-based nord theme. 

## 🌠 Features
The theme already has the syntax highlighting for the following plugins configured: 

+ Supported plugins:
    + [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
    + [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
    + [Lsp Saga](https://github.com/glepnir/lspsaga.nvim)
    + [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
    + [Git Gutter](https://github.com/airblade/vim-gitgutter)
    + [git-messenger](https://github.com/rhysd/git-messenger.vim)
    + [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
    + [Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
    + [Nvim-Tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
    + [NERDTree](https://github.com/preservim/nerdtree)
    + [vim-which-key](https://github.com/liuchengxu/vim-which-key)
    + [Indent-Blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
    + [WhichKey](https://github.com/liuchengxu/vim-which-key)
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)

A lualine theme is also auto-generated based on the colors of the theme, and can be used through the following command: 

```
require('lualine').setup {
   options = {
    -- ... your lualine config
    theme = 'nord' 
    -- ... your lualine config
   }
}
```

## ⚡️ Requirements

+ Neovim >= 0.5.0

## ⚙️ Configuration


The templete also exposes the following options to the user:  

| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| nord_italic_comments            | `false`     | Make comments italic                                                                                                                                            |
| nord_italic_keywords            | `false`     | Make keywords italic                                                                                                                                            |
| nord_italic_functions           | `false`     | Make functions italic                                                                                                                                           |
| nord_italic_variables           | `false`     | Make variables and identifiers italic                                                                                                                           |
| nord_contrast                   | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| nord_borders                    | `false`     | Enable the border between verticaly split windows visable
| nord_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background

```lua
-- Example config in lua
vim.g.nord_italic_comments = true
vim.g.nord_italic_keywords = true
vim.g.nord_italic_functions = true
vim.g.nord_italic_variables = false
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false

-- Load the colorscheme
require('nord').set()
```

```vim
" Example config in Vim-Script
let g:nord_italic_comments = true
let g:nord_italic_keywords = true
let g:nord_italic_functions = true
let g:nord_italic_variables = false
let g:nord_contrast = true
let g:nord_borders = false 
let g:nord_disable_background = false

-- Load the colorsheme
colorscheme nord
```

