local onenord = {
  --16 colors
  fg = "#C8D0E0",
  fg_light = "#E5E9F0",
  bg = "#2E3440",
  gray = "#646A76",
  light_gray = "#6C7A96",
  cyan = "#88C0D0",
  blue = "#81A1C1",
  dark_blue = "#5E81AC",
  green = "#A3BE8C",
  light_green = "#8FBCBB",
  dark_red = "#BF616A",
  red = "#D57780",
  light_red = "#DE878F",
  pink = "#E85B7A",
  dark_pink = "#E44675",
  orange = "#D08F70",
  yellow = "#EBCB8B",
  purple = "#B988B0",
  light_purple = "#B48EAD",
  none = "NONE",
}

-- Enable contrast sidebars, floating windows and popup menus
-- if vim.g.nord_contrast == true then
--   nord.sidebar = nord.nord1_gui
--   nord.float = nord.nord1_gui
-- else
--   nord.sidebar = nord.nord0_gui
--   nord.float = nord.nord0_gui
-- end

-- if vim.g.nord_cursorline_transparent == true then
--   nord.cursorlinefg = nord.nord0_gui
-- else
--   nord.cursorlinefg = nord.nord1_gui
-- end

-- more semantically meaningful colors

onenord.error = onenord.dark_red
onenord.warn = onenord.orange
onenord.info = onenord.green
onenord.hint = onenord.purple

onenord.diff_add = onenord.green
onenord.diff_add_bg = "#324125"
onenord.diff_change = onenord.dark_blue
onenord.diff_change_bg = "#334963"
onenord.diff_remove = onenord.red
onenord.diff_remove_bg = onenord.dark_red
onenord.diff_text_bg = "#446285"

onenord.active = "#353B49"
onenord.float = "#3B4252"
onenord.highlight = "#434C5E"
onenord.selection = "#4C566A"

return onenord

return nord
