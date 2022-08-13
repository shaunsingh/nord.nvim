local util = {}
local nord = require("nord.theme")

-- Go trough the table and highlight the group with the color values
util.highlight = function(group, color)
	local style = color.style and "gui=" .. color.style or "gui=NONE"
	local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
	local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
	local sp = color.sp and "guisp=" .. color.sp or ""

	local hl = "highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp

	vim.cmd(hl)
	if color.link then
		vim.cmd("highlight! link " .. group .. " " .. color.link)
	end
end

-- Only define nord if it's the active colorscheme
function util.onColorScheme()
	if vim.g.colors_name ~= "nord" then
		vim.cmd([[autocmd! nord]])
		vim.cmd([[augroup! nord]])
	end
end

-- Change the background for the terminal, packer and qf windows
util.contrast = function()
	vim.cmd([[augroup nord]])
	vim.cmd([[  autocmd!]])
	vim.cmd([[  autocmd ColorScheme * lua require("nord.util").onColorScheme()]])
	vim.cmd([[  autocmd TermOpen * setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType packer setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[  autocmd FileType qf setlocal winhighlight=Normal:NormalFloat,SignColumn:NormalFloat]])
	vim.cmd([[augroup end]])
end
-- Loads the colors from the dictionary Object (colorSet)
function util.loadColorSet(colorSet)
	for group, colors in pairs(colorSet) do
		util.highlight(group, colors)
	end
end
-- Load the theme
function util.load()
	-- Set the theme environment
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	-- vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nord"

	-- load the most importaint parts of the theme
	local editor = nord.loadEditor()
	local syntax = nord.loadSyntax()
	local treesitter = nord.loadTreeSitter()
	local filetypes = nord.loadFiletypes()

	-- load editor highlights
	util.loadColorSet(editor)

	-- load syntax highlights
	util.loadColorSet(syntax)

	-- load treesitter highlights
	util.loadColorSet(treesitter)

	-- load filetype-specific highlights
	util.loadColorSet(filetypes)

	nord.loadTerminal()

	-- imort tables for plugins and lsp
	local plugins = nord.loadPlugins()
	local lsp = nord.loadLSP()

	-- load plugin highlights
	util.loadColorSet(plugins)

	-- load lsp highlights
	util.loadColorSet(lsp)

	-- if contrast is enabled, apply it to sidebars and floating windows
	if vim.g.nord_contrast == true then
		util.contrast()
	end
end

return util
