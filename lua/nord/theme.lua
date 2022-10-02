local nord = require("nord.colors")

-- 默认先迁移再考虑使用 palette 好了
-- start
local foreground = "#e8e8d3"
local background = "#151515"
local grey       = "#888888"
local grey_one   = "#1c1c1c"
local grey_two   = "#f0f0f0"
local grey_three = "#333333"
local regent_grey = "#9098A0"
local scorpion   = "#606060"
local cod_grey   = "#101010"
local tundora    = "#404040"
local zambezi    = "#605958"
local silver_rust = "#ccc5c4"
local silver     = "#c7c7c7"
local alto       = "#dddddd"
local gravel     = "#403c41"
local boulder    = "#777777"
local cocoa_brown = "#302028"
local grey_chateau = "#a0a8b0"
local bright_grey = "#384048"
local shuttle_grey = "#535d66"
local mine_shaft = "#1f1f1f"
local temptress = "#40000a"

local bayoux_blue = "#556779"
local total_white = "#ffffff"
local total_black = "#000000"
local cadet_blue = "#b0b8c0"
local perano     = "#b0d0f0"
local wewak      = "#f0a0c0"
local mantis     = "#70b950"
local raw_sienna = "#cf6a4c"
local highland   = "#799d6a"
local hoki       = "#668799"
local green_smoke = "#99ad6a"
local costa_del_sol = "#556633"
local biloba_flower = "#c6b6ee"
local morning_glory = "#8fbfdc"
local goldenrod = "#fad07a"
local ship_cove = "#8197bf"
local koromiko = "#ffb964"
local brandy = "#dad085"
local old_brick = "#902020"
local dark_blue = "#0000df"
local ripe_plum = "#540063"
local casal = "#2D7067"
local purple = "#700089"
local tea_green  ="#d2ebbe"
local dell = "#437019"
local calypso = "#2B5B77"

-- Mapping
local fg = foreground
local bg = background 
local error = wewak
local warning = koromiko
local info = morning_glory
local hint = brandy

-- Syntax
local syntax = {
   comment = bayoux_blue,
   constant = morning_glory,
   variable = morning_glory,
   string = perano,
   keyword = wewak,
   func = biloba_flower,
   func_param = alto,
   match_paren_bg = casal,
   tag = tea_green,
   html_arg = wewak,
   param = raw_sienna,
   json_label = morning_glory,
}

local github = {
   add = '#244032',
   add_fg = '#56d364',
   change = '#341a00',
   change_fg = '#e3b341',
   delete = '#462c32',
   delete_fg = '#f85149',
   gutter_fg = '#e1e4e8',
   fg_light = '#d1d5da',
   yellow = '#ffea7f',
   orange = '#d18616',
   blue = '#2188ff',
   magenta = '#b392f0',
}
-- end

local theme = {}
theme.loadSyntax = function()
	-- Syntax highlight groups
	local syntax = {
		Comment      = { fg = grey }, -- any comment
    ColorColumn  = { bg = total_black }, -- used for the columns set with 'colorcolumn'
    Conceal      = { fg = morning_glory }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor       = { fg = background, bg = perano }, -- character under the cursor
    -- lCursor      = { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     = { }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = grey_one }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine   = { bg = grey_one }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory    = { fg = brandy }, -- directory names (and other special names in listings)
    DiffAdd = { fg = github.add_fg, bg = github.add }, -- diff mode: Added line |diff.txt|
    DiffChange = { fg = github.change_fg, bg = github.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = github.delete_fg, bg = github.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText = { fg = github.gutter_fg }, -- diff mode: Changed text within a changed line |diff.txt|
    DiffviewFilePanelFileName = { fg = github.fg_light },
    -- EndOfBuffer  = { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   = { }, -- cursor in a focused terminal
    -- TermCursorNC = { }, -- cursor in an unfocused terminal
    ErrorMsg     = { bg = old_brick }, -- error messages on the command line
    VertSplit    = { fg = gravel }, -- the column separating vertically split windows
    Folded       = { fg = grey_chateau, bg = bright_grey }, -- line used for closed folds
    FoldColumn   = { fg = shuttle_grey, bg = mine_shaft }, -- 'foldcolumn'
    SignColumn   = { fg = boulder }, -- column where |signs| are displayed
    -- IncSearch    = { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   = { }, -- |:substitute| replacement text highlighting
    LineNr       = { fg = zambezi }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = silver_rust }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen   = { fg = wewak, gui="bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      = { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      = { }, -- Area for messages and cmdline
    -- MsgSeparator = { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg      = { fg = highland }, -- |more-prompt|
    NonText      = { fg = scorpion }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal       = { bg = background, fg = foreground }, -- normal text
    -- NormalFloat  = { }, -- Normal text in floating windows.
    -- NormalNC     = { }, -- normal text in non-current windows
    Pmenu        = { fg = total_white, bg = background }, -- Popup menu: normal item.
    PmenuSel     = { fg = total_black, bg = ship_cove, style = "bold" }, -- Popup menu: selected item.
    -- PmenuSbar    = { }, -- Popup menu: scrollbar.
    -- PmenuThumb   = { }, -- Popup menu: Thumb of the scrollbar.
    Question     = { fg = mantis }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = bright_grey }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search       = { fg = wewak, bg = cocoa_brown }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey   = { fg = tundora, bg = grey_one }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad     = { bg = old_brick }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap     = { bg = dark_blue }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal   = { bg = casal }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare    = { bg = ripe_plum }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine   = { fg = total_white, bg = grey_one }, -- status line of current window
    StatusLineNC = { fg = silver, bg = grey_one }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine      = { fg = goldenrod, bg = background }, -- tab pages line, not active tab page label
    TabLineFill  = { fg = background }, -- tab pages line, where there are no labels
    TabLineSel   = { fg = background, bg = goldenrod }, -- tab pages line, active tab page label
    Title        = { fg = mantis }, -- titles for output from ":set all", ":autocmd" etc.
    Visual       = { bg = tundora }, -- Visual mode selection
    -- VisualNOS    = { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   = { }, -- warning messages
    -- Whitespace   = { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu     = { fg = wewak, bg = cocoa_brown }, -- current match in 'wildmenu' completion
    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.
    Constant       = { fg = raw_sienna }, -- (preferred) any constant
    String         = { fg = green_smoke }, --   a string constant: "this is a string"
    StringDelimiter = { fg = costa_del_sol },
    -- Character      = { }, --  a character constant: 'c', '\n'
    -- Number         = { }, --   a number constant: 234, 0xff
    -- Boolean        = { }, --  a boolean constant: TRUE, false
    -- Float          = { }, --    a floating point constant: 2.3e10
    Identifier     = { fg = biloba_flower }, -- (preferred) any variable name
    Function       = { fg = goldenrod }, -- function name (also: methods for classes)
    Statement      = { fg = perano }, -- (preferred) any statement
    -- Conditional    = { }, --  if, then, else, endif, switch, etc.
    -- Repeat         = { }, --   for, do, while, etc.
    -- Label          = { }, --    case, default, etc.
    Operator       = { fg = morning_glory }, -- "sizeof", "+", "*", etc.
    -- Keyword        = { }, --  any other keyword
    -- Exception      = { }, --  try, catch, throw
    PreProc        = { fg = ship_cove }, -- (preferred) generic Preprocessor
    Include        = { PreProc, style = "italic" }, --  preprocessor #include
    -- Define         = { }, --   preprocessor #define
    -- Macro          = { }, --    same as Define
    -- PreCondit      = { }, --  preprocessor #if, #else, #endif, etc.
    Type           = { fg = koromiko, gui="italic" }, -- (preferred) int, long, char, etc.
    -- StorageClass   = { }, -- static, register, volatile, etc.
    Structure      = { fg = morning_glory }, --  struct, union, enum, etc.
    -- Typedef        = { }, --  A typedef
    Special        = { fg = "#9b1e41" }, -- highland -- (preferred) any special symbol
    -- SpecialChar    = { }, --  special character in a constant
    -- Tag            = { }, --    you can use CTRL-] on this
    Delimiter      = { fg = hoki }, --  character that needs attention
    -- SpecialComment = { }, -- special things inside a comment
    -- Debug          = { }, --    debugging statements
    Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold       = { style = "bold" },
    Italic     = { style = "italic" },
    -- ("Ignore", below, may be invisible...)
    -- Ignore =          { }, -- (preferred) left blank, hidden  |hl-Ignore|
    Error          = { bg = old_brick }, -- (preferred) any erroneous construct
    Todo           = { fg = silver }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
	}

	-- Italic comments
  -- TODO: italic
	if vim.g.nord_italic == false then
	else
	end

	return syntax
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
	}

	-- Options:
  -- TODO: Later 
	return editor
end

theme.loadTerminal = function()
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
        -- TSAnnotation        { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For comment blocks.
    TSNote = { fg = bg, bg = info },
    TSWarning = { fg = bg, bg = warning },
    TSDanger = { fg = bg, bg = error },
    TSConstructor = { fg = syntax.variable }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    TSConstant = { fg = syntax.constant }, -- For constants
    commentTSConstant = { fg = syntax.keyword },
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { fg = fg }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude = { fg = syntax.keyword }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = syntax.keyword, gui="italic" }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = syntax.keyword, gui="italic" }, -- For keywords used to define a fuction.
    TSLabel = { fg = perano }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    TSOperator = { fg = syntax.keyword }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = syntax.func_param }, -- For parameters of a function.
    -- TSParameterReference = { };    -- For references to parameters of a function.
    TSProperty = { fg = syntax.func }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = fg }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = fg }, -- For brackets and parens.
    TSPunctSpecial = { fg = fg }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    TSStringRegex = { fg = syntax.variable }, -- For regexes.
    TSStringEscape = { fg = old_brick }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    TSType = { fg = syntax.keyword }, -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariableBuiltin = { fg = syntax.variable }, -- Variable names that are defined by the languages, like `this` or `self`.
    TSTag = { fg = syntax.tag }, -- Tags like html tag names.
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = old_brick }, -- FIXME
    TSNamespace          = { fg = wewak },    -- For identifiers referring to modules and namespaces.
    TSVariable           = { Normal, gui="NONE" };    -- Any variable name that does not have another highlight.
    TSTagDelimiter       = { fg = bayoux_blue },    -- Tag delimiter like `<` `>` `/`
    TSEmphasis           = { Italic },    -- For text to be represented with emphasis.
    TSUnderline          = { Underlined },    -- For text to be represented with an underline.
    TSStrike             = { gui="strikethrough" },    -- For strikethrough text.
    TSURI                = { fg = morning_glory },    -- Any URI like a link or email.
	}

  -- TODO:
	if vim.g.nord_italic == false then
	else
	end

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = nord.nord7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = nord.nord7_gui },
		yamlTSString = { fg = nord.nord4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = nord.nord7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
    LspReferenceText                     = { bg=background }, -- used for highlighting "text" references
    LspReferenceRead                     = { bg=background }, -- used for highlighting "read" references
    LspReferenceWrite                    = { bg=background }, -- used for highlighting "write" references
    LspDiagnosticsDefaultError           = { fg = old_brick }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning         = { fg = koromiko }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation     = { fg = perano }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint            = { fg = tea_green }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsVirtualTextError       = { LspDiagnosticsDefaultError, bg = old_brick }, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning     = { LspDiagnosticsDefaultWarning, bg = koromiko }, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = { LspDiagnosticsDefaultInformation, bg = perano }, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint        = { LspDiagnosticsDefaultHint, bg = tea_green }, -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError         = { sp = old_brick, gui="undercurl" }, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning       = { sp = koromiko, gui="undercurl" }, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation   = { sp = perano, gui="undercurl" }, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint          = { sp = tea_green, gui="undercurl" }, -- Used to underline "Hint" diagnostics
    -- LspDiagnosticsFloatingError          = { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    = { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           = { }, -- Used to color "Hint" diagnostic messages in diagnostics float
    -- LspDiagnosticsSignError              = { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            = { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        = { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               = { }, -- Used for "Hint" signs in sign column
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- Diff
    diffAdded = { fg = github.add_fg, bg = github.add },
    diffChanged = { fg = github.change_fg, bg = github.change },
    diffRemoved = { fg = github.delete_fg , bg = github.delete },
    diffOldFile = { fg = github.yellow },
    diffNewFile = { fg = github.orange },
    diffFile = { fg = github.blue },
    diffLine = { fg = github.gutter_fg },
    diffIndexLine = { fg = github.magenta },

    -- HTML
    htmlLink = { },

    -- GitSigns
    GitSignsAdd    = { fg = mantis },
    GitSignsChange = { fg = koromiko },
    GitSignsDelete = { fg = old_brick },

    -- Telescope
    TelescopeBorder = { fg = ship_cove },
    TelescopeSelection = { fg = ship_cove, bg = ship_cove},
    TelescopeMatching = { Search },
    TelescopeSelectionCaret = { fg = koromiko },
    TelescopePromptPrefix = { fg = koromiko },

    -- vim-sneak
    Sneak = { Search },

    -- NeoVim
    healthError = { fg = wewak },
    healthSuccess = { fg = mantis },
    healthWarning = { fg = koromiko },

    -- LspSaga
    DiagnosticError = { fg = error },
    DiagnosticWarning = { fg = warning },
    DiagnosticInformation = { fg = info },
    DiagnosticHint = { fg = hint },

    -- Git Default
    gitcommitSummary = { fg = mantis },

    -- typescript
    typescriptTSType = { fg = syntax.func },
    typescriptTSConstructor = { fg = syntax.func },
    typescriptTSTypeBuiltin = { fg = syntax.variable },

    -- CSS
    cssTSProperty = { fg = syntax.func },
    cssTSType = { fg = syntax.tag },

    -- html
    htmlTSConstant = { fg = syntax.tag },
    htmlTag = { fg = fg },
    htmlEndTag = { fg = fg },
    htmlTagName = { fg = syntax.tag },
    htmlArg = { fg = syntax.html_arg },

    -- javascript
    javascriptTSType = { fg = fg },
    javascriptTSParameter = { fg = syntax.param },
    javascriptTSVariable = { fg = syntax.variable },
    javascriptTSPunctDelimiter = { fg = fg },
    javascriptTSStringRegex = { fg = syntax.string },
    javascriptTSConstructor = { fg = syntax.func },
    javascriptTSProperty = { fg = syntax.func },
    regexTSStringEscape = { fg = syntax.keyword },
	}
	-- Options:

	return plugins
end

return theme

-- vi:nowrap