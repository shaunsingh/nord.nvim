local named_colors = require("nord.named_colors")
local named_colors_jellybeans = named_colors.jellybeans;

local dark_colors = {
	nord0_gui = named_colors_jellybeans.black, -- nord0 in palette
	nord1_gui = named_colors_jellybeans.dark_gray, -- nord1 in palette
	nord2_gui = named_colors_jellybeans.gray, -- nord2 in palette
	nord3_gui = named_colors_jellybeans.light_gray, -- nord3 in palette
	nord3_gui_bright = named_colors_jellybeans.light_gray_bright, -- out of palette
	nord4_gui = named_colors_jellybeans.darkest_white, -- nord4 in palette
	nord5_gui = named_colors_jellybeans.darker_white, -- nord5 in palette
	nord6_gui = named_colors_jellybeans.white, -- nord6 in palette
	nord7_gui = named_colors_jellybeans.teal, -- nord7 in palette
	nord8_gui = named_colors_jellybeans.off_blue, -- nord8 in palette
	nord9_gui = named_colors_jellybeans.glacier, -- nord9 in palette
	nord10_gui = named_colors_jellybeans.blue, -- nord10 in palette
	nord11_gui = named_colors_jellybeans.red, -- nord11 in palette
	nord12_gui = named_colors_jellybeans.orange, -- nord12 in palette
	nord13_gui = named_colors_jellybeans.yellow, -- nord13 in palette
	nord14_gui = named_colors_jellybeans.green, -- nord14 in palette
	nord15_gui = named_colors_jellybeans.purple, -- nord15 in palette
	none = "NONE",
}

-- TODO: support light
local jellybeans = dark_colors

return jellybeans
