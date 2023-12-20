
# shaunsingh/nord.nvim

## Neovim theme based off of the [Nord Color Palette.](https://www.nordtheme.com/docs/colors-and-palettes)

![118406380-d78ad580-b649-11eb-945c-5988fa717f39](https://user-images.githubusercontent.com/71196912/128029391-ad55fd41-d5f9-43bd-a795-c11b562f9d6d.jpg)

## Features

Nord.nvim is meant to be a modern colorscheme written in lua for NeoVim that supports a lot of the new features
added to NeoVim like built-in LSP and [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)

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
  + [barbar.nvim](https://github.com/romgrk/barbar.nvim)
  + [nvim-notify](https://github.com/rcarriga/nvim-notify)
  + [leap.nvim](https://github.com/ggandor/leap.nvim)
  + [mini.nvim](https://github.com/echasnovski/mini.nvim)
  + [aerial.nvim](https://github.com/stevearc/aerial.nvim)
  + [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim)
  + [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim)

+ Ability to change background on sidebar-like windows like Nvim-Tree, Packer, terminal etc.

## ⚡️ Requirements

+ Neovim >= 0.5.0

## 🌙 Installation

Install via your favourite package manager:

```vim
" If you are using Vim-Plug
Plug 'shaunsingh/nord.nvim'
```

```lua
-- If you are using Packer
use 'shaunsingh/nord.nvim'
```

## 🌓 Usage

Enable the colorscheme:

```vim
"Vim-Script:
colorscheme nord
```

```lua
--Lua:
vim.cmd[[colorscheme nord]]
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
| nord_enable_sidebar_background  | `false`     | Re-enables the background of the sidebar if you disabled the background of everything
| nord_italic                     | `true`      | enables/disables italics
| nord_uniform_diff_background    | `false`     | enables/disables colorful backgrounds when used in *diff* mode
| nord_bold                       | `true`      | enables/disables bold

```lua
-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

-- Load the colorscheme
require('nord').set()
```

```vim
" Example config in Vim-Script
let g:nord_contrast = v:true
let g:nord_borders = v:false
let g:nord_disable_background = v:false
let g:nord_italic = v:false
let g:nord_uniform_diff_background = v:true
let g:nord_bold = v:false

" Load the colorscheme
colorscheme nord
```

### headlines support

To support [headlines]("https://github.com/lukas-reineke/headlines.nvim"), you should add these code to your settings:

```lua
require("headlines").setup({
    markdown = {
        headline_highlights = {
            "Headline1",
            "Headline2",
            "Headline3",
            "Headline4",
            "Headline5",
            "Headline6",
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote",
    },
})

```

It should look like this

![26B3E551-FD57-458C-BE85-C8945BCE37DF](https://user-images.githubusercontent.com/61075605/197376829-43c30172-2528-47a0-b23f-ab63f73c0851.png)

### bufferline support

To support [BufferLine](https://github.com/akinsho/nvim-bufferline.lua), you can add these code to your settings:

```lua
local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
})

require("bufferline").setup({
    options = {
        separator_style = "thin",
    },
    highlights = highlights,
})

```

It should look like this

<img width="891" alt="image" src="https://user-images.githubusercontent.com/61075605/189152634-6d309903-90e6-4ffe-a7bc-f65b19eb4c43.png">
or you want to use slant separator

```lua
local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
    fill = "#181c24"
})

require("bufferline").setup({
    options = {
        separator_style = "slant",
    },
    highlights = highlights,
})

```


<img width="866" alt="image" src="https://user-images.githubusercontent.com/61075605/189151983-0cbf1f13-e62b-4b01-b6ce-a1c00a5f8ef3.png">

The default setting of bufferline highlights is

```lua
{
    fill = colors.nord0_gui,
    indicator = colors.nord9_gui,
    bg = colors.nord0_gui,
    buffer_bg = colors.nord0_gui,
    buffer_bg_selected = colors.nord1_gui,
    buffer_bg_visible = "#2A2F3A",
    bold = true,
    italic = true,
}
```
