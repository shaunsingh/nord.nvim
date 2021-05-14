# Neovim Theme Template 



## Usage 

This repository serves as a template for a lua-based neovim theme, based off of Marko Cerovac's [Material.nvim](https://github.com/marko-cerovac/material.nvim)

In order to create your theme, do the following:

1. Add the colors you would like under `/lua/themename/color.lua`
2. Rename all instances of `themename` to the name you would like to have 
3. Use your colorscheme by setting `colorscheme themename` (themename being the name of your colorscheme)

## Examples of themes based on this repo

[Moonlight](https://github.com/shaunsingh/moonlight.nvim): 
![preview github](https://user-images.githubusercontent.com/71196912/118175481-27755c80-b3fe-11eb-9d70-85a9f936c33d.png)


[Material.nvim](https://github.com/marko-cerovac/material.nvim): 
<img width="948" alt="image" src="https://user-images.githubusercontent.com/71196912/118197385-d7f25900-b41c-11eb-8f27-8f5613151bdb.png">
<img width="951" alt="image" src="https://user-images.githubusercontent.com/71196912/118197394-df196700-b41c-11eb-970a-32866a2a85b8.png">


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
    theme = 'themename' --change this to your themename
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
| themename_italic_comments            | `false`     | Make comments italic                                                                                                                                            |
| themename_italic_keywords            | `false`     | Make keywords italic                                                                                                                                            |
| themename_italic_functions           | `false`     | Make functions italic                                                                                                                                           |
| themename_italic_variables           | `false`     | Make variables and identifiers italic                                                                                                                           |
| themename_contrast                   | `true`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| themename_borders                    | `false`     | Enable the border between verticaly split windows visable
| themename_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background

```lua
-- Example config in lua
vim.g.themename_italic_comments = true
vim.g.themename_italic_keywords = true
vim.g.themename_italic_functions = true
vim.g.themename_italic_variables = false
vim.g.themename_contrast = true
vim.g.themename_borders = false
vim.g.themename_disable_background = false

-- Load the colorscheme
require('nord').set()
```

```vim
" Example config in Vim-Script
let g:themename_italic_comments = true
let g:themename_italic_keywords = true
let g:themename_italic_functions = true
let g:themename_italic_variables = false
let g:themename_contrast = true
let g:themename_borders = false 
let g:themename_disable_background = false

-- Load the colorsheme
colorscheme themename
```

