local colors = require('nord.colors')

local nord = {}

nord.normal = {
	a = {fg = colors.nord0_gui, bg = colors.nord4_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
	c = {fg = colors.nord4_gui, bg = colors.nord1_gui},
}

nord.insert = {
	a = {fg = colors.nord0_gui, bg = colors.nord14_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

nord.visual = {
	a = {fg = colors.nord0_gui, bg = colors.nord9_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

nord.replace = {
	a = {fg = colors.nord0_gui, bg = colors.nord11_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

nord.command = {
	a = {fg = colors.nord0_gui, bg = colors.nord15_gui, gui = 'bold'},
	b = {fg = colors.nord4_gui, bg = colors.nord10_gui},
}

nord.innord10_gui = {
  a = {fg = colors.nord1_gui, bg = colors.nord0_gui, gui = 'bold'},
  b = {fg = colors.nord1_gui, bg = colors.nord0_gui},
  c = {fg = colors.nord1_gui, bg = colors.nord1_gui}
}

return nord
