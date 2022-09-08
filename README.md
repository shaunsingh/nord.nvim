
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

```lua
-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true

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

" Load the colorscheme
colorscheme nord
```

To be support [BufferLine](https://github.com/akinsho/nvim-bufferline.lua), you can add these code to your settings:

```lua
local nord0 = "#2E3440"
local nord1 = "#3B4252"
local nord9 = "#81A1C1"
local fill = nord0 --'#181c24' if separator_style is "slant"
local indicator = nord9
local bg = nord0
local buffer_bg = nord0
local buffer_bg_selected = nord1
local buffer_bg_visible = "#2A2F3A"

require("bufferline").setup({
 highlights = {
  fill = {
   bg = fill
  },
  background = {
   bg = bg,
  },

  buffer_selected = {
   bg = buffer_bg_selected,
  },
  buffer_visible = {
   bg = buffer_bg_visible,
   italic = true
  },

  numbers = {
   bg = buffer_bg,
  },
  numbers_selected = {
   bg = buffer_bg_selected,
  },
  numbers_visible = {
   bg = buffer_bg_visible,
   italic = true
  },

  diagnostic = {
   bg = buffer_bg,
  },
  diagnostic_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  diagnostic_visible = {
   bg = buffer_bg_visible
  },

  hint = {
   bg = buffer_bg,
  },
  hint_visible = {
   bg = buffer_bg_visible,
  },
  hint_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  hint_diagnostic = {
   bg = buffer_bg,
  },
  hint_diagnostic_visible = {
   bg = buffer_bg_visible,
  },
  hint_diagnostic_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },

  info = {
   bg = buffer_bg;
  },
  info_visible = {
   bg = buffer_bg_visible,
  },
  info_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  info_diagnostic = {
   bg = buffer_bg,
  },
  info_diagnostic_visible = {
   bg = buffer_bg_visible,
  },
  info_diagnostic_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },

  warning = {
   bg = buffer_bg,
  },
  warning_visible = {
   bg = buffer_bg_visible,
  },
  warning_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  warning_diagnostic = {
   bg = buffer_bg,
  },
  warning_diagnostic_visible = {
   bg = buffer_bg_visible,
  },
  warning_diagnostic_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  error = {
   bg = buffer_bg,
  },
  error_visible = {
   bg = buffer_bg_visible,
  },
  error_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  error_diagnostic = {
   bg = buffer_bg,
  },
  error_diagnostic_visible = {
   bg = buffer_bg_visible,
  },
  error_diagnostic_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },

  close_button = {
   bg = buffer_bg,
  },
  close_button_visible = {
   bg = buffer_bg_visible,
  },
  close_button_selected = {
   bg = buffer_bg_selected,
  },

  duplicate = {
   bg = buffer_bg,
  },
  duplicate_selected = {
   bg = buffer_bg_selected,
  },
  duplicate_visible = {
   bg = buffer_bg_visible,
  },

  separator = {
   fg = fill,
   bg = buffer_bg,
  },
  separator_selected = {
   fg = fill,
   bg = buffer_bg_selected,
  },
  separator_visible = {
   fg = fill,
   bg = buffer_bg_visible,
  },
  modified = {
   bg = buffer_bg,
  },
  modified_selected = {
   bg = buffer_bg_selected,
  },
  modified_visible = {
   bg = buffer_bg_visible,
  },
  indicator_selected = {
   fg = indicator,
   bg = buffer_bg_selected,
  },
  pick = {
   bg = buffer_bg,
   bold = true,
   italic = true,
  },
  pick_selected = {
   bg = buffer_bg_selected,
   bold = true,
   italic = true,
  },
  pick_visible = {
   bg = buffer_bg_visible,
   bold = true,
   italic = true,
  },
 },
})
```
It should look like this
<img width="866" alt="image" src="https://user-images.githubusercontent.com/61075605/189151983-0cbf1f13-e62b-4b01-b6ce-a1c00a5f8ef3.png">

<img width="891" alt="image" src="https://user-images.githubusercontent.com/61075605/189152634-6d309903-90e6-4ffe-a7bc-f65b19eb4c43.png">
