local named_colors = require("nord.named_colors")

local dark_colors = {
	nord0_gui = named_colors.black, -- nord0 in palette
	nord1_gui = named_colors.dark_gray, -- nord1 in palette
	nord2_gui = named_colors.gray, -- nord2 in palette
	nord3_gui = named_colors.light_gray, -- nord3 in palette
	nord3_gui_bright = named_colors.light_gray_bright, -- out of palette
	nord4_gui = named_colors.darkest_white, -- nord4 in palette
	nord5_gui = named_colors.darker_white, -- nord5 in palette
	nord6_gui = named_colors.white, -- nord6 in palette
	nord7_gui = named_colors.teal, -- nord7 in palette
	nord8_gui = named_colors.off_blue, -- nord8 in palette
	nord9_gui = named_colors.glacier, -- nord9 in palette
	nord10_gui = named_colors.blue, -- nord10 in palette
	nord11_gui = named_colors.red, -- nord11 in palette
	nord12_gui = named_colors.orange, -- nord12 in palette
	nord13_gui = named_colors.yellow, -- nord13 in palette
	nord14_gui = named_colors.green, -- nord14 in palette
	nord15_gui = named_colors.purple, -- nord15 in palette
	none = "NONE",
}

local light_colors = {
	nord0_gui = named_colors.white, -- nord0 in palette
	nord1_gui = named_colors.darker_white, -- nord1 in palette
	nord2_gui = named_colors.darkest_white, -- nord2 in palette
	nord3_gui = named_colors.light_gray, -- nord3 in palette
	nord3_gui_bright = named_colors.light_gray_bright, -- out of palette
	nord4_gui = named_colors.gray, -- nord4 in palette
	nord5_gui = named_colors.dark_gray, -- nord5 in palette
	nord6_gui = named_colors.black, -- nord6 in palette

	-- Same colors across light and dark from here down...
	nord7_gui = named_colors.teal, -- nord7 in palette
	nord8_gui = named_colors.off_blue, -- nord8 in palette
	nord9_gui = named_colors.glacier, -- nord9 in palette
	nord10_gui = named_colors.blue, -- nord10 in palette
	nord11_gui = named_colors.red, -- nord11 in palette
	nord12_gui = named_colors.orange, -- nord12 in palette
	nord13_gui = named_colors.yellow, -- nord13 in palette
	nord14_gui = named_colors.green, -- nord14 in palette
	nord15_gui = named_colors.purple, -- nord15 in palette
	none = "NONE",
}

local nord = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.nord_contrast then
	nord.sidebar = nord.nord1_gui
	nord.float = nord.nord1_gui
else
	nord.sidebar = nord.nord0_gui
	nord.float = nord.nord0_gui
end

if vim.g.nord_cursorline_transparent then
	nord.cursorlinefg = nord.nord0_gui
else
	nord.cursorlinefg = nord.nord1_gui
end

return nord
