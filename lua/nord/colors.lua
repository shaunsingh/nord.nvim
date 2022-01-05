local nord = (vim.o.background == 'dark') and {
  --16 colors
  nord0_gui        = "#2E3440", -- nord0 in palette
  nord1_gui        = "#3B4252", -- nord1 in palette
  nord2_gui        = "#434C5E", -- nord2 in palette
  nord3_gui        = "#4C566A", -- nord3 in palette
  nord3_gui_bright = "#616E88", -- out of palette
  nord4_gui        = "#D8DEE9", -- nord4 in palette
  nord5_gui        = "#E5E9F0", -- nord5 in palette
  nord6_gui        = "#ECEFF4", -- nord6 in palette
  nord7_gui        = "#8FBCBB", -- nord7 in palette
  nord8_gui        = "#88C0D0", -- nord8 in palette
  nord9_gui        = "#81A1C1", -- nord9 in palette
  nord10_gui       = "#5E81AC", -- nord10 in palette
  nord11_gui       = "#BF616A", -- nord11 in palette
  nord12_gui       = "#D08770", -- nord12 in palette
  nord13_gui       = "#EBCB8B", -- nord13 in palette
  nord14_gui       = "#A3BE8C", -- nord14 in palette
  nord15_gui       = "#B48EAD", -- nord15 in palette
  none             = 'NONE'
} or {
  --16 colors
  nord0_gui        = "#ECEFF4", -- nord6 in palette
  nord1_gui        = "#E5E9F0", -- nord5 in palette
  nord2_gui        = "#D8DEE9", -- nord4 in palette
  nord3_gui        = "#4C566A", -- nord3 in palette
  nord3_gui_bright = "#AEC7DF", -- out of palette
  nord4_gui        = "#434C5E", -- nord2 in palette
  nord5_gui        = "#3B4252", -- nord1 in palette
  nord6_gui        = "#2E3440", -- nord0 in palette
  nord7_gui        = "#8FBCBB", -- nord7 in palette
  nord8_gui        = "#88C0D0", -- nord8 in palette
  nord9_gui        = "#81A1C1", -- nord9 in palette
  nord10_gui       = "#5E81AC", -- nord10 in palette
  nord11_gui       = "#BF616A", -- nord11 in palette
  nord12_gui       = "#D08770", -- nord12 in palette
  nord13_gui       = "#EBCB8B", -- nord13 in palette
  nord14_gui       = "#A3BE8C", -- nord14 in palette
  nord15_gui       = "#B48EAD", -- nord15 in palette
  none             = 'NONE'
}

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.nord_contrast == true then
  nord.sidebar = nord.nord1_gui
  nord.float = nord.nord1_gui
else
  nord.sidebar = nord.nord0_gui
  nord.float = nord.nord0_gui
end

if vim.g.nord_cursorline_transparent == true then
  nord.cursorlinefg = nord.nord0_gui
else
  nord.cursorlinefg = nord.nord1_gui
end

return nord
