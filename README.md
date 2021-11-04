
# th4tkh13m/onenord.nvim 
## (Based on shaunsingh/nord.nvim and rmehri01/onenord.nvim)

## Neovim theme based off of the [Nord Color Palette](https://www.nordtheme.com/docs/colors-and-palettes) and [Atom's OneDark Color Pallete](https://github.com/atom/atom/tree/master/packages/one-dark-ui)

![118406380-d78ad580-b649-11eb-945c-5988fa717f39](https://user-images.githubusercontent.com/71196912/128029391-ad55fd41-d5f9-43bd-a795-c11b562f9d6d.jpg)

## Features

OneNord.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter).

It is a fork of [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim) and inspired on [rmehri01/onenord.nvim](https://github.com/rmehri01/onenord.nvim).

### Why does this repository exist? Don't we have [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim) and [rmehri01/onenord.nvim](https://github.com/rmehri01/onenord.nvim)?

That is a good point. I do love [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim), but the constrast of the colorscheme does not satisfy me! The comments are hard to see, as well as some elements as keywords and modifiers have the same colors. Otherwise, [rmehri01/onenord.nvim](https://github.com/rmehri01/onenord.nvim) has the perfect colorscheme I need, but I do notice it makes my startuptime a little bit slower (10ms) than [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim).

- [shaunsingh/nord.nvim](https://github.com/shaunsingh/nord.nvim) 

- [rmehri01/onenord.nvim](https://github.com/rmehri01/onenord.nvim)
- [th4tkh13m/onenord.nvim](https://github.com/th4tkh13m/onenord.nvim)


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
    + [Dashboard](https://github.com/glepnir/dashboard-nvim)
    + [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
    + [Lualine](https://github.com/hoob3rt/lualine.nvim)
    + [Neogit](https://github.com/TimUntersberger/neogit)
    + [vim-sneak](https://github.com/justinmk/vim-sneak)
    + [lightspeed.nvim](https://github.com/ggandor/lightspeed.nvim)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.


## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:
```vim
" If you are using Vim-Plug
Plug 'th4tkh13m/onenord.nvim'
```

```lua
-- If you are using Packer
use 'th4tkh13m/onenord.nvim'
```

## 🌓 Usage

Enable the colorscheme:
```vim 
"Vim-Script:
colorscheme onenord
```

```lua
--Lua:
vim.cmd[[colorscheme onenord]]
```

To enable the `nord` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'nord'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

| Option                              | Default     | Description                                                                                                                                                     |
| ----------------------------------- | ----------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| nord_contrast                   | `false`      | Make sidebars and popup menus like nvim-tree and telescope have a different background                                                                                       |
| nord_borders                    | `false`     | Enable the border between verticaly split windows visable
| nord_disable_background         | `false`     | Disable the setting of background color so that NeoVim can use your terminal background
| nord_cursorline_transparent     | `false`     | Set the cursorline transparent/visible
| nord_enable_sidebar_background  | `false`     | Re-enables the backgrond of the sidebar if you disabled the background of everything
| nord_italic                     | `true`      | enables/disables italics
 

```lua
-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false

-- Load the colorscheme
require('nord').set()
```

```vim
" Example config in Vim-Script
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false

-- Load the colorscheme
colorscheme onenord
```

