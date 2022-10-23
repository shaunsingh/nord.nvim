-- Colorscheme name:    nord.nvim
-- Description:         Port of articicestudio's nord theme for neovim
-- Author:              https://github.com/shaunsingh

local util = require("nord.util")

local bufferline = require("bufferline.theme")

-- Load the theme
local set = function()
	util.load()
end

return { set = set, bufferline = bufferline }
