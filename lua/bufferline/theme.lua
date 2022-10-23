local colors = require("nord.colors")

local setting = {
	fill = colors.nord0_gui,
	indicator = colors.nord9_gui,
	bg = colors.nord0_gui,
	buffer_bg = colors.nord0_gui,
	buffer_bg_selected = colors.nord1_gui,
	buffer_bg_visible = "#2A2F3A",
	bold = true,
	italic = true,
}

local M = {}
M.highlights = function(new_setting)
	if new_setting ~= nil then
		for key, value in pairs(new_setting) do
			setting[key] = value
		end
	end

	local fill = setting.fill
	local indicator = setting.indicator
	local bg = setting.bg
	local buffer_bg = setting.bg
	local buffer_bg_selected = setting.buffer_bg_selected
	local buffer_bg_visible = setting.buffer_bg_visible
	local bold = setting.bold
	local italic = setting.italic

	return {
		fill = {
			bg = fill,
		},
		background = {
			bg = bg,
		},

		buffer_selected = {
			bg = buffer_bg_selected,
			italic = italic,
		},
		buffer_visible = {
			bg = buffer_bg_visible,
			italic = italic,
		},

		numbers = {
			bg = buffer_bg,
		},
		numbers_selected = {
			bg = buffer_bg_selected,
		},
		numbers_visible = {
			bg = buffer_bg_visible,
			italic = italic,
		},

		diagnostic = {
			bg = buffer_bg,
		},
		diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		diagnostic_visible = {
			bg = buffer_bg_visible,
		},

		hint = {
			bg = buffer_bg,
		},
		hint_visible = {
			bg = buffer_bg_visible,
		},
		hint_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		hint_diagnostic = {
			bg = buffer_bg,
		},
		hint_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		hint_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		info = {
			bg = buffer_bg,
		},
		info_visible = {
			bg = buffer_bg_visible,
		},
		info_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		info_diagnostic = {
			bg = buffer_bg,
		},
		info_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		info_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},

		warning = {
			bg = buffer_bg,
		},
		warning_visible = {
			bg = buffer_bg_visible,
		},
		warning_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		warning_diagnostic = {
			bg = buffer_bg,
		},
		warning_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		warning_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		error = {
			bg = buffer_bg,
		},
		error_visible = {
			bg = buffer_bg_visible,
		},
		error_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		error_diagnostic = {
			bg = buffer_bg,
		},
		error_diagnostic_visible = {
			bg = buffer_bg_visible,
		},
		error_diagnostic_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
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
			bold = bold,
			italic = italic,
		},
		pick_selected = {
			bg = buffer_bg_selected,
			bold = bold,
			italic = italic,
		},
		pick_visible = {
			bg = buffer_bg_visible,
			bold = bold,
			italic = italic,
		},
	}
end

return M
