-- Colorscheme name:    nord.nvim
-- Description:         Port of articicestudio's nord theme for neovim
-- Author:              https://github.com/shaunsingh

local nord = {
	--16 colors
	nord0_gui = "#2E3440",
	nord1_gui = "#3B4252",
	nord2_gui = "#434C5E",
	nord3_gui = "#4C566A",
	nord3_gui_bright = "#616E88",
	nord4_gui = "#D8DEE9",
	nord5_gui = "#E5E9F0",
	nord6_gui = "#ECEFF4",
	nord7_gui = "#8FBCBB",
	nord8_gui = "#88C0D0",
	nord9_gui = "#81A1C1",
	nord10_gui = "#5E81AC",
	nord11_gui = "#BF616A",
	nord12_gui = "#D08770",
	nord13_gui = "#EBCB8B",
	nord14_gui = "#A3BE8C",
	nord15_gui = "#B48EAD",
	none = "NONE",
}

-- Syntax highlight groups
local syntax = {
	Type = { fg = nord.nord9_gui }, -- int, long, char, etc.
	StorageClass = { fg = nord.nord9_gui }, -- static, register, volatile, etc.
	Structure = { fg = nord.nord9_gui }, -- struct, union, enum, etc.
	Constant = { fg = nord.nord4_gui }, -- any constant
	Character = { fg = nord.nord14_gui }, -- any character constant: 'c', '\n'
	Number = { fg = nord.nord15_gui }, -- a number constant: 5
	Boolean = { fg = nord.nord9_gui }, -- a boolean constant: TRUE, false
	Float = { fg = nord.nord15_gui }, -- a floating point constant: 2.3e10
	Statement = { fg = nord.nord9_gui }, -- any statement
	Label = { fg = nord.nord9_gui }, -- case, default, etc.
	Operator = { fg = nord.nord9_gui }, -- sizeof", "+", "*", etc.
	Exception = { fg = nord.nord9_gui }, -- try, catch, throw
	PreProc = { fg = nord.nord9_gui }, -- generic Preprocessor
	Include = { fg = nord.nord9_gui }, -- preprocessor #include
	Define = { fg = nord.nord9_gui }, -- preprocessor #define
	Macro = { fg = nord.nord9_gui }, -- same as Define
	Typedef = { fg = nord.nord9_gui }, -- A typedef
	PreCondit = { fg = nord.nord13_gui }, -- preprocessor #if, #else, #endif, etc.
	Special = { fg = nord.nord4_gui }, -- any special symbol
	SpecialChar = { fg = nord.nord13_gui }, -- special character in a constant
	Tag = { fg = nord.nord4_gui }, -- you can use CTRL-] on this
	Delimiter = { fg = nord.nord6_gui }, -- character that needs attention like , or .
	SpecialComment = { fg = nord.nord8_gui }, -- special things inside a comment
	Debug = { fg = nord.nord11_gui }, -- debugging statements
	Underlined = { fg = nord.nord14_gui, bg = nord.none, style = "underline" }, -- text that stands out, HTML links
	Ignore = { fg = nord.nord1_gui }, -- left blank, hidden
	Error = { fg = nord.nord11_gui, bg = nord.none, style = "bold,underline" }, -- any erroneous construct
	Todo = { fg = nord.nord13_gui, bg = nord.none, style = "bold" },
	Conceal = { fg = nord.none, bg = nord.nord0_gui },

	htmlLink = { fg = nord.nord14_gui, style = "underline" },
	htmlH1 = { fg = nord.nord8_gui, style = "bold" },
	htmlH2 = { fg = nord.nord11_gui, style = "bold" },
	htmlH3 = { fg = nord.nord14_gui, style = "bold" },
	htmlH4 = { fg = nord.nord15_gui, style = "bold" },
	htmlH5 = { fg = nord.nord9_gui, style = "bold" },
	markdownH1 = { fg = nord.nord8_gui, style = "bold" },
	markdownH2 = { fg = nord.nord11_gui, style = "bold" },
	markdownH3 = { fg = nord.nord14_gui, style = "bold" },
	markdownH1Delimiter = { fg = nord.nord8_gui },
	markdownH2Delimiter = { fg = nord.nord11_gui },
	markdownH3Delimiter = { fg = nord.nord14_gui },
	Comment = { fg = nord.nord3_gui_bright }, -- normal comments
	Conditional = { fg = nord.nord9_gui }, -- normal if, then, else, endif, switch, etc.
	Keyword = { fg = nord.nord9_gui }, -- normal for, do, while, etc.
	Repeat = { fg = nord.nord9_gui }, -- normal any other keyword
	Function = { fg = nord.nord8_gui }, -- normal function names
	Identifier = { fg = nord.nord9_gui }, -- any variable name
	String = { fg = nord.nord14_gui }, -- any string
}

-- Editor highlight groups
local editor = {
    NormalFloat = { fg = nord.nord4_gui, bg = nord.nord0_gui }, -- normal text and background color
    ColorColumn = { fg = nord.none, bg = nord.nord1_gui }, --  used for the columns set with 'colorcolumn'
    Conceal = { fg = nord.nord1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" }, -- the character under the cursor
    CursorIM = { fg = nord.nord5_gui, bg = nord.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    Directory = { fg = nord.nord7_gui, bg = nord.none }, -- directory names (and other special names in listings)
    DiffAdd = { fg = nord.nord14_gui, bg = nord.none, style = "reverse" }, -- diff mode: Added line
    DiffChange = { fg = nord.nord13_gui, bg = nord.none, style = "reverse" }, --  diff mode: Changed line
    DiffDelete = { fg = nord.nord11_gui, bg = nord.none, style = "reverse" }, -- diff mode: Deleted line
    DiffText = { fg = nord.nord15_gui, bg = nord.none, style = "reverse" }, -- diff mode: Changed text within a changed line
    EndOfBuffer = { fg = nord.nord1_gui },
    ErrorMsg = { fg = nord.none },
    Folded = { fg = nord.nord_3_gui_bright, bg = nord.none, style = "italic" },
    FoldColumn = { fg = nord.nord7_gui },
    IncSearch = { fg = nord.nord6_gui, bg = nord.nord10_gui },
    LineNr = { fg = nord.nord3_gui_bright },
    CursorLineNr = { fg = nord.nord4_gui },
    MatchParen = { fg = nord.nord15_gui, bg = nord.none, style = "bold" },
    ModeMsg = { fg = nord.nord4_gui },
    MoreMsg = { fg = nord.nord4_gui },
    NonText = { fg = nord.nord1_gui },
    Pmenu = { fg = nord.nord4_gui, bg = nord.nord2_gui },
    PmenuSel = { fg = nord.nord4_gui, bg = nord.nord10_gui },
    PmenuSbar = { fg = nord.nord4_gui, bg = nord.nord2_gui },
    PmenuThumb = { fg = nord.nord4_gui, bg = nord.nord4_gui },
    Question = { fg = nord.nord14_gui },
    QuickFixLine = { fg = nord.nord4_gui, bg = nord.nord6_gui, style = "reverse" },
    qfLineNr = { fg = nord.nord4_gui, bg = nord.nord6_gui, style = "reverse" },
    Search = { fg = nord.nord1_gui, bg = nord.nord6_gui, style = "reverse" },
    SpecialKey = { fg = nord.nord9_gui },
    SpellBad = { fg = nord.nord11_gui, bg = nord.none, style = "italic,undercurl" },
    SpellCap = { fg = nord.nord7_gui, bg = nord.none, style = "italic,undercurl" },
    SpellLocal = { fg = nord.nord8_gui, bg = nord.none, style = "italic,undercurl" },
    SpellRare = { fg = nord.nord9_gui, bg = nord.none, style = "italic,undercurl" },
    StatusLine = { fg = nord.nord4_gui, bg = nord.nord2_gui },
    StatusLineNC = { fg = nord.nord4_gui, bg = nord.nord1_gui },
    StatusLineTerm = { fg = nord.nord4_gui, bg = nord.nord2_gui },
    StatusLineTermNC = { fg = nord.nord4_gui, bg = nord.nord1_gui },
    TabLineFill = { fg = nord.nord4_gui },
    TablineSel = { fg = nord.nord8_gui, bg = nord.nord3_gui },
    Tabline = { fg = nord.nord4_gui },
    Title = { fg = nord.nord14_gui, bg = nord.none, style = "bold" },
    Visual = { fg = nord.none, bg = nord.nord1_gui },
    VisualNOS = { fg = nord.none, bg = nord.nord1_gui },
    WarningMsg = { fg = nord.nord15_gui },
    WildMenu = { fg = nord.nord12_gui, bg = nord.none, style = "bold" },
    CursorColumn = { fg = nord.none, bg = nord.nord1_gui },
    CursorLine = { fg = nord.none, bg = nord.nord1_gui },
    ToolbarLine = { fg = nord.nord4_gui, bg = nord.nord1_gui },
    ToolbarButton = { fg = nord.nord4_gui, bg = nord.none, style = "bold" },
    NormalMode = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
    InsertMode = { fg = nord.nord14_gui, bg = nord.none, style = "reverse" },
    ReplacelMode = { fg = nord.nord11_gui, bg = nord.none, style = "reverse" },
    VisualMode = { fg = nord.nord9_gui, bg = nord.none, style = "reverse" },
    CommandMode = { fg = nord.nord4_gui, bg = nord.none, style = "reverse" },
    Warnings = { fg = nord.nord15_gui },
    
    healthError = { fg = nord.nord11_gui },
    healthSuccess = { fg = nord.nord14_gui },
    healthWarning = { fg = nord.nord15_gui },
    
    -- dashboard
    DashboardShortCut = { fg = nord.nord7_gui },
    DashboardHeader = { fg = nord.nord9_gui },
    DashboardCenter = { fg = nord.nord8_gui },
    DashboardFooter = { fg = nord.nord14_gui, style = "italic" },
    
    -- BufferLine
    BufferLineIndicatorSelected = { fg = nord.nord0_gui },
    BufferLineFill = { bg = nord.nord0_gui },
    
    Normal = { fg = nord.nord4_gui, bg = nord.nord0_gui },
    SignColumn = { fg = nord.nord4_gui, bg = nord.nord0_gui },
    VertSplit = { fg = nord.nord0_gui },
}

-- TreeSitter highlight groups
local treesitter = {
	TSCharacter = { fg = nord.nord14_gui }, -- For characters.
	TSConstructor = { fg = nord.nord9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
	TSConstant = { fg = nord.nord13_gui }, -- For constants
	TSFloat = { fg = nord.nord15_gui }, -- For floats
	TSNumber = { fg = nord.nord15_gui }, -- For all number
	TSString = { fg = nord.nord14_gui }, -- For strings.

	TSAttribute = { fg = nord.nord15_gui }, -- (unstable) TODO: docs
	TSBoolean = { fg = nord.nord9_gui }, -- For booleans.
	TSConstBuiltin = { fg = nord.nord7_gui }, -- For constant that are built in the language: `nil` in Lua.
	TSConstMacro = { fg = nord.nord7_gui }, -- For constants that are defined by macros: `NULL` in C.
	TSError = { fg = nord.nord11_gui }, -- For syntax/parser errors.
	TSException = { fg = nord.nord15_gui }, -- For exception related keywords.
	TSField = { fg = nord.nord4_gui }, -- For fields.
	TSFuncMacro = { fg = nord.nord7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
	TSInclude = { fg = nord.nord9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
	TSLabel = { fg = nord.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
	TSNamespace = { fg = nord.nord4_gui }, -- For identifiers referring to modules and namespaces.
	TSOperator = { fg = nord.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
	TSParameter = { fg = nord.nord10_gui }, -- For parameters of a function.
	TSParameterReference = { fg = nord.nord10_gui }, -- For references to parameters of a function.
	TSProperty = { fg = nord.nord10_gui }, -- Same as `TSField`.
	TSPunctDelimiter = { fg = nord.nord8_gui }, -- For delimiters ie: `.`
	TSPunctBracket = { fg = nord.nord8_gui }, -- For brackets and parens.
	TSPunctSpecial = { fg = nord.nord8_gui }, -- For special punctutation that does not fall in the catagories before.
	TSStringRegex = { fg = nord.nord7_gui }, -- For regexes.
	TSStringEscape = { fg = nord.nord15_gui }, -- For escape characters within a string.
	TSSymbol = { fg = nord.nord15_gui }, -- For identifiers referring to symbols or atoms.
	TSType = { fg = nord.nord9_gui }, -- For types.
	TSTypeBuiltin = { fg = nord.nord9_gui }, -- For builtin types.
	TSTag = { fg = nord.nord4_gui }, -- Tags like html tag names.
	TSTagDelimiter = { fg = nord.nord15_gui }, -- Tag delimiter like `<` `>` `/`
	TSText = { fg = nord.nord4_gui }, -- For strings considenord11_gui text in a markup language.
	TSTextReference = { fg = nord.nord15_gui }, -- FIXME
	TSEmphasis = { fg = nord.nord10_gui }, -- For text to be represented with emphasis.
	TSUnderline = { fg = nord.nord4_gui, bg = nord.none, style = "underline" }, -- For text to be represented with an underline.
	TSTitle = { fg = nord.nord10_gui, bg = nord.none, style = "bold" }, -- Text that is part of a title.
	TSLiteral = { fg = nord.nord4_gui }, -- Literal text.
	TSURI = { fg = nord.nord14_gui }, -- Any URI like a link or email.
	TSAnnotation = { fg = nord.nord11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
	TSComment = { fg = nord.nord3_gui_bright },
	TSConditional = { fg = nord.nord9_gui }, -- For keywords related to conditionnals.
	TSKeyword = { fg = nord.nord9_gui }, -- For keywords that don't fall in previous categories.
	TSRepeat = { fg = nord.nord9_gui }, -- For keywords related to loops.
	TSKeywordFunction = { fg = nord.nord8_gui },
	TSFunction = { fg = nord.nord8_gui }, -- For fuction (calls and definitions).
	TSMethod = { fg = nord.nord7_gui }, -- For method calls and definitions.
	TSFuncBuiltin = { fg = nord.nord8_gui },
	TSVariable = { fg = nord.nord4_gui }, -- Any variable name that does not have another highlight.
	TSVariableBuiltin = { fg = nord.nord4_gui },
}

-- Lsp highlight groups
local lsp = {
	DiagnosticDefaultError = { fg = nord.nord11_gui }, -- used for "Error" diagnostic virtual text
	DiagnosticSignError = { fg = nord.nord11_gui }, -- used for "Error" diagnostic signs in sign column
	DiagnosticFloatingError = { fg = nord.nord11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
	DiagnosticVirtualTextError = { fg = nord.nord11_gui }, -- Virtual text "Error"
	DiagnosticUnderlineError = { fg = nord.nord11_gui, style = "undercurl" }, -- used to underline "Error" diagnostics.
	DiagnosticDefaultWarn = { fg = nord.nord15_gui }, -- used for "Warn" diagnostic signs in sign column
	DiagnosticSignWarn = { fg = nord.nord15_gui }, -- used for "Warn" diagnostic signs in sign column
	DiagnosticFloatingWarn = { fg = nord.nord15_gui }, -- used for "Warn" diagnostic messages in the diagnostics float
	DiagnosticVirtualTextWarn = { fg = nord.nord15_gui }, -- Virtual text "Warn"
	DiagnosticUnderlineWarn = { fg = nord.nord15_gui, style = "undercurl" }, -- used to underline "Warn" diagnostics.
	DiagnosticDefaultInfo = { fg = nord.nord10_gui }, -- used for "Info" diagnostic virtual text
	DiagnosticSignInfo = { fg = nord.nord10_gui }, -- used for "Info" diagnostic signs in sign column
	DiagnosticFloatingInfo = { fg = nord.nord10_gui }, -- used for "Info" diagnostic messages in the diagnostics float
	DiagnosticVirtualTextInfo = { fg = nord.nord10_gui }, -- Virtual text "Info"
	DiagnosticUnderlineInfo = { fg = nord.nord10_gui, style = "undercurl" }, -- used to underline "Info" diagnostics.
	DiagnosticDefaultHint = { fg = nord.nord9_gui }, -- used for "Hint" diagnostic virtual text
	DiagnosticSignHint = { fg = nord.nord9_gui }, -- used for "Hint" diagnostic signs in sign column
	DiagnosticFloatingHint = { fg = nord.nord9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
	DiagnosticVirtualTextHint = { fg = nord.nord9_gui }, -- Virtual text "Hint"
	DiagnosticUnderlineHint = { fg = nord.nord10_gui, style = "undercurl" }, -- used to underline "Hint" diagnostics.
	LspReferenceText = { fg = nord.nord4_gui, bg = nord.nord1_gui }, -- used for highlighting "text" references
	LspReferenceRead = { fg = nord.nord4_gui, bg = nord.nord1_gui }, -- used for highlighting "read" references
	LspReferenceWrite = { fg = nord.nord4_gui, bg = nord.nord1_gui }, -- used for highlighting "write" references
}

-- Plugins highlight groups
local plugins = {

	-- LspTrouble
	LspTroubleText = { fg = nord.nord4_gui },
	LspTroubleCount = { fg = nord.nord9_gui, bg = nord.nord10_gui },
	LspTroubleNormal = { fg = nord.nord4_gui, bg = nord.nord0_gui },

	-- Diff
	diffAdded = { fg = nord.nord14_gui },
	diffRemoved = { fg = nord.nord11_gui },
	diffChanged = { fg = nord.nord15_gui },
	diffOldFile = { fg = nord.yelow },
	diffNewFile = { fg = nord.nord12_gui },
	diffFile = { fg = nord.nord7_gui },
	diffLine = { fg = nord.nord3_gui },
	diffIndexLine = { fg = nord.nord9_gui },

	-- Neogit
	NeogitBranch = { fg = nord.nord10_gui },
	NeogitRemote = { fg = nord.nord9_gui },
	NeogitHunkHeader = { fg = nord.nord8_gui },
	NeogitHunkHeaderHighlight = { fg = nord.nord8_gui, bg = nord.nord1_gui },
	NeogitDiffContextHighlight = { bg = nord.nord1_gui },
	NeogitDiffDeleteHighlight = { fg = nord.nord11_gui, style = "reverse" },
	NeogitDiffAddHighlight = { fg = nord.nord14_gui, style = "reverse" },

	-- GitGutter
	GitGutterAdd = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
	GitGutterChange = { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
	GitGutterDelete = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|

	-- GitSigns
	GitSignsAdd = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
	GitSignsAddNr = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
	GitSignsAddLn = { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
	GitSignsChange = { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
	GitSignsChangeNr = { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
	GitSignsChangeLn = { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
	GitSignsDelete = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
	GitSignsDeleteNr = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
	GitSignsDeleteLn = { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|

	-- Telescope
	TelescopePromptBorder = { fg = nord.nord8_gui },
	TelescopeResultsBorder = { fg = nord.nord9_gui },
	TelescopePreviewBorder = { fg = nord.nord14_gui },
	TelescopeSelectionCaret = { fg = nord.nord9_gui },
	TelescopeSelection = { fg = nord.nord9_gui },
	TelescopeMatching = { fg = nord.nord8_gui },

	-- NvimTree
	NvimTreeNormal = { fg = nord.nord4_gui, bg = nord.nord0_gui },
	NvimTreeRootFolder = { fg = nord.nord7_gui, style = "bold" },
	NvimTreeGitDirty = { fg = nord.nord15_gui },
	NvimTreeGitNew = { fg = nord.nord14_gui },
	NvimTreeImageFile = { fg = nord.nord15_gui },
	NvimTreeExecFile = { fg = nord.nord14_gui },
	NvimTreeSpecialFile = { fg = nord.nord9_gui, style = "underline" },
	NvimTreeFolderName = { fg = nord.nord10_gui },
	NvimTreeEmptyFolderName = { fg = nord.nord1_gui },
	NvimTreeFolderIcon = { fg = nord.nord4_gui },
	NvimTreeIndentMarker = { fg = nord.nord1_gui },
	LspDiagnosticsError = { fg = nord.nord11_gui },
	LspDiagnosticsWarning = { fg = nord.nord15_gui },
	LspDiagnosticsInformation = { fg = nord.nord10_gui },
	LspDiagnosticsHint = { fg = nord.nord9_gui },

	-- WhichKey
	WhichKey = { fg = nord.nord4_gui, style = "bold" },
	WhichKeyGroup = { fg = nord.nord4_gui },
	WhichKeyDesc = { fg = nord.nord7_gui, style = "italic" },
	WhichKeySeperator = { fg = nord.nord4_gui },
	WhichKeyFloating = { bg = nord.nord0_gui },
	WhichKeyFloat = { bg = nord.nord0_gui },

	-- Sneak
	Sneak = { fg = nord.nord0_gui, bg = nord.nord4_gui },
	SneakScope = { bg = nord.nord1_gui },

	-- Cmp
	CmpItemKind = { fg = nord.nord15_gui },
	CmpItemAbbrMatch = { fg = nord.nord5_gui, style = "bold" },
	CmpItemAbbrMatchFuzzy = { fg = nord.nord5_gui, style = "bold" },
	CmpItemAbbr = { fg = nord.nord4_gui },
	CmpItemMenu = { fg = nord.nord14_gui },

	-- Indent Blankline
	IndentBlanklineChar = { fg = nord.nord3_gui },
	IndentBlanklineContextChar = { fg = nord.nord10_gui },

	-- Illuminate
	illuminatedWord = { bg = nord.nord3_gui },
	illuminatedCurWord = { bg = nord.nord3_gui },

	-- nvim-dap
	DapBreakpoint = { fg = nord.nord14_gui },
	DapStopped = { fg = nord.nord15_gui },

	-- Hop
	HopNextKey = { fg = nord.nord4_gui, style = "bold" },
	HopNextKey1 = { fg = nord.nord8_gui, style = "bold" },
	HopNextKey2 = { fg = nord.nord4_gui },
	HopUnmatched = { fg = nord.nord3_gui },

	-- Fern
	FernBranchText = { fg = nord.nord3_gui_bright },

	-- nvim-ts-rainbow
	rainbowcol1 = { fg = nord.nord15_gui },
	rainbowcol2 = { fg = nord.nord13_gui },
	rainbowcol3 = { fg = nord.nord11_gui },
	rainbowcol4 = { fg = nord.nord7_gui },
	rainbowcol5 = { fg = nord.nord8_gui },
	rainbowcol6 = { fg = nord.nord15_gui },
	rainbowcol7 = { fg = nord.nord13_gui },
}

local set_namespace = vim.api.nvim__set_hl_ns or vim.api.nvim_set_hl_ns
local namespace = vim.api.nvim_create_namespace("nord")
local function highlight(statement)
	for name, setting in pairs(statement) do
		vim.api.nvim_set_hl(namespace, name, setting)
	end
end

local M = {}

M.setup = function()
	vim.cmd("highlight clear")
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = "nord"
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end
	highlight(syntax)
	highlight(editor)
	highlight(treesitter)
	highlight(plugins)
	highlight(lsp)
	set_namespace(namespace)
end

return M
