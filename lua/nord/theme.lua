local nord = require("nord.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups

	local syntax = {
		Type =						{ fg = nord.nord9_gui}, -- int, long, char, etc.
		StorageClass =				{ fg = nord.nord9_gui}, -- static, register, volatile, etc.
		Structure =					{ fg = nord.nord9_gui}, -- struct, union, enum, etc.
		Constant =					{ fg = nord.nord4_gui}, -- any constant
		String =					{ fg = nord.nord14_gui, bg = nord.none, style= 'italic' }, -- Any string
		Character =					{ fg = nord.nord14_gui}, -- any character constant: 'c', '\n'
		Number =					{ fg = nord.nord15_gui }, -- a number constant: 5
		Boolean =					{ fg = nord.nord9_gui}, -- a boolean constant: TRUE, false
		Float =						{ fg = nord.nord15_gui}, -- a floating point constant: 2.3e10
		Statement =					{ fg = nord.nord9_gui}, -- any statement
		Label =						{ fg = nord.nord9_gui }, -- case, default, etc.
		Operator =					{ fg = nord.nord9_gui }, -- sizeof", "+", "*", etc.
		Exception =					{ fg = nord.nord9_gui}, -- try, catch, throw
		PreProc =					{ fg = nord.nord9_gui}, -- generic Preprocessor
		Include =					{ fg = nord.nord9_gui}, -- preprocessor #include
		Define =					{ fg = nord.nord9_gui}, -- preprocessor #define
		Macro =						{ fg = nord.cyan }, -- same as Define
		Typedef =					{ fg = nord.cyan }, -- A typedef
		PreCondit =					{ fg = nord.pink }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = nord.nord4_gui}, -- any special symbol
		SpecialChar =					{ fg = nord.nord13_gui}, -- special character in a constant
		Tag =						{ fg = nord.nord4_gui}, -- you can use CTRL-] on this
		Delimiter =					{ fg = nord.nord6_gui }, -- character that needs attention like , or .
		SpecialComment =				{ fg = nord.nord8_gui}, -- special things inside a comment
		Debug =						{ fg = nord.red }, -- debugging statements
		Underlined =					{ fg = nord.link, bg = nord.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = nord.disabled }, -- left blank, hidden
		Error =						{ fg = nord.error, bg = nord.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = nord.nord13_gui, bg = nord.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = nord.link, style = "underline" },
        htmlH1 = { fg = nord.cyan, style = "bold" },
        htmlH2 = { fg = nord.red, style = "bold" },
        htmlH3 = { fg = nord.green, style = "bold" },
        htmlH4 = { fg = nord.yellow, style = "bold" },
        htmlH5 = { fg = nord.purple, style = "bold" },
        markdownH1 = { fg = nord.cyan, style = "bold" },
        markdownH2 = { fg = nord.red, style = "bold" },
        markdownH3 = { fg = nord.green, style = "bold" },
        markdownH1Delimiter = { fg = nord.cyan },
        markdownH2Delimiter = { fg = nord.red },
        markdownH3Delimiter = { fg = nord.green },
	}

	syntax.Comment =		{fg = nord.nord3_gui_bright}
	syntax.Conditional =	{fg = nord.nord9_gui} -- normal if, then, else, endif, switch, etc.
	syntax.Keyword =		{fg = nord.nord9_gui} -- normal for, do, while, etc.
	syntax.Repeat =			{fg = nord.nord9_gui} -- normal any other keyword
	syntax.Function =		{fg = nord.nord8_gui}
	Identifier =			{fg = nord.nord4_gui}; -- any variable name

    return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

	local editor = {
		NormalFloat =			{ fg = nord.fg, bg = nord.float }, -- normal text and background color
		ColorColumn =			{ fg = nord.nord1_gui, bg = nord.active }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = nord.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = nord.nord4_gui, bg = nord.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = nord.cursor, bg = nord.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = nord.blue, bg = nord.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = nord.green, bg = nord.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = nord.orange, bg = nord.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = nord.red, bg = nord.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = nord.yellow, bg = nord.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = nord.disabled },
		ErrorMsg =				{ fg = nord.none },
		Folded =				{ fg = nord.disabled, nord.none, style = 'italic' },
		FoldColumn =			{ fg = nord.blue },
		IncSearch =				{ fg = nord.highlight, bg = nord.white, style = 'reverse' },
		LineNr =				{ fg = nord.line_numbers },
		CursorLineNr =			{ fg = nord.accent },
		MatchParen =			{ fg = nord.yellow, bg = nord.none, style = 'bold' },
		ModeMsg =				{ fg = nord.accent },
		MoreMsg =				{ fg = nord.accent },
		NonText =				{ fg = nord.disabled },
		Pmenu =					{ fg = nord.text, bg = nord.contrast },
		PmenuSel =				{ fg = nord.accent, bg = nord.active },
		PmenuSbar =				{ fg = nord.text, bg = nord.contrast },
		PmenuThumb =			{ fg = nord.fg, bg = nord.accent },
		Question =				{ fg = nord.green },
		QuickFixLine =			{ fg = nord.highlight, nord.white, style = 'reverse' },
		qfLineNr =				{ fg = nord.highlight, nord.white, style = 'reverse' },
		Search =				{ fg = nord.highlight, bg = nord.white, style = 'reverse' },
		SpecialKey =			{ fg = nord.purple },
		SpellBad =				{ fg = nord.red, bg = nord.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = nord.blue, bg = nord.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = nord.cyan, bg = nord.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = nord.purple, bg = nord.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = nord.fg, bg = nord.contrast },
		StatusLineNC =  		{ fg = nord.text, bg = nord.disabled },
		StatusLineTerm =		{ fg = nord.fg, bg = nord.contrast },
		StatusLineTermNC =		{ fg = nord.text, bg = nord.disabled },
		TabLineFill =			{ fg = nord.fg },
		TablineSel =			{ fg = nord.bg, bg = nord.accent },
		Tabline =				{ fg = nord.fg },
		Title =					{ fg = nord.green, bg = nord.none, style = 'bold' },
		Visual =				{ fg = nord.none, bg = nord.selection },
		VisualNOS =				{ fg = nord.none, bg = nord.selection },
		WarningMsg =			{ fg = nord.yellow },
		WildMenu =				{ fg = nord.orange, bg = nord.none, style = 'bold' },
		CursorColumn =			{ fg = nord.none, bg = nord.active },
		CursorLine =			{ fg = nord.none, bg = nord.none },
		ToolbarLine =			{ fg = nord.fg, bg = nord.bg_alt },
		ToolbarButton =			{ fg = nord.fg, bg = nord.none, style = 'bold' },
		NormalMode =			{ fg = nord.accent, bg = nord.none, style = 'reverse' },
		InsertMode =			{ fg = nord.green, bg = nord.none, style = 'reverse' },
		ReplacelMode =			{ fg = nord.red, bg = nord.none, style = 'reverse' },
		VisualMode =			{ fg = nord.purple, bg = nord.none, style = 'reverse' },
		CommandMode =			{ fg = nord.gray, bg = nord.none, style = 'reverse' },
		Warnings =				{ fg = nord.yellow },

        healthError =           { fg = nord.error },
        healthSuccess =         { fg = nord.green },
        healthWarning =         { fg = nord.yellow },

        -- dashboard
        DashboardShortCut =                     { fg = nord.blue },
        DashboardHeader =                       { fg = nord.purple },
        DashboardCenter =                       { fg = nord.cyan },
        DashboardFooter =                       { fg = nord.green, style = "italic" },

	}

    -- Options:

    --Set transparent background
    if vim.g.nord_disable_background == true then
		editor.Normal =				{ fg = nord.fg, bg = nord.none } -- normal text and background color
		editor.SignColumn =			{ fg = nord.fg, bg = nord.none }
    else
		editor.Normal =				{ fg = nord.fg, bg = nord.bg } -- normal text and background color
		editor.SignColumn =			{ fg = nord.fg, bg = nord.bg }
    end

    -- Remove window split borders
    if vim.g.nord_borders == true then
		editor.VertSplit =				{ fg = nord.border }
    else
		editor.VertSplit =				{ fg = nord.bg }
    end

    return editor
end

theme.loadTerminal = function ()

	vim.g.terminal_color_0 = nord.black
	vim.g.terminal_color_1 = nord.red
	vim.g.terminal_color_2 = nord.green
	vim.g.terminal_color_3 = nord.yellow
	vim.g.terminal_color_4 = nord.blue
	vim.g.terminal_color_5 = nord.purple
	vim.g.terminal_color_6 = nord.cyan
	vim.g.terminal_color_7 = nord.white
	vim.g.terminal_color_8 = nord.gray
	vim.g.terminal_color_9 = nord.red
	vim.g.terminal_color_10 = nord.green
	vim.g.terminal_color_11 = nord.yellow
	vim.g.terminal_color_12 = nord.blue
	vim.g.terminal_color_13 = nord.purple
	vim.g.terminal_color_14 = nord.cyan
	vim.g.terminal_color_15 = nord.white

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = nord.orange },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
        TSCharacter=                { fg = nord.nord14_gui },    -- For characters.
        TSConstructor =             { fg = nord.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = nord.pink },    -- For constants
        TSFloat =                   { fg = nord.nord15_gui },    -- For floats
        TSNumber =                  { fg = nord.nord15_gui },    -- For all number
        TSString =                  { fg = nord.nord14_gui },    -- For strings.

	--TSAnnotation =              { fg = nord.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = nord.yellow },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = nord.nord9_gui },    -- For booleans.
        --TSCharacter=                { fg = nord.orange },    -- For characters.
        --TSConstructor =             { fg = nord.purple }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        --TSConstant =                { fg = nord.yellow },    -- For constants
        TSConstBuiltin =            { fg = nord.blue },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = nord.blue },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = nord.error },    -- For syntax/parser errors.
        TSException =               { fg = nord.yellow },    -- For exception related keywords.
        TSField =                   { fg = nord.gray }, -- For fields.
        --TSFloat =                   { fg = nord.red },    -- For floats.
        TSFuncMacro =               { fg = nord.blue },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = nord.nord9_gui },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = nord.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = nord.nord4_gui},    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        --TSNumber =                  { fg = nord.orange },    -- For all numbers
        TSOperator =                { fg = nord.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = nord.paleblue }, -- For parameters of a function.
        TSParameterReference=       { fg = nord.paleblue },    -- For references to parameters of a function.
        TSProperty =                { fg = nord.paleblue }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = nord.cyan }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = nord.cyan }, -- For brackets and parens.
        TSPunctSpecial =            { fg = nord.cyan }, -- For special punctutation that does not fall in the catagories before.
        --TSString =                  { fg = nord.green },    -- For strings.
        TSStringRegex =             { fg = nord.blue }, -- For regexes.
        TSStringEscape =            { fg = nord.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = nord.yellow },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = nord.nord9_gui},    -- For types.
        TSTypeBuiltin =             { fg = nord.nord9_gui},    -- For builtin types.
        TSTag =                     { fg = nord.nord4_gui },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = nord.yellow },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = nord.text },    -- For strings considered text in a markup language.
        TSTextReference =           { fg = nord.yellow }, -- FIXME
        TSEmphasis =                { fg = nord.paleblue },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = nord.fg, bg = nord.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = nord.paleblue, bg = nord.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = nord.fg },    -- Literal text.
        TSURI =                     { fg = nord.link },    -- Any URI like a link or email.        TSAnnotation =              { fg = nord.red },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

    }

    treesitter.TSComment=                  { fg = nord.nord3_gui_bright }
    treesitter.TSConditional =             { fg = nord.nord9_gui }   -- For keywords related to conditionnals.
    treesitter.TSKeyword =                 { fg = nord.purple } -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat =                  { fg = nord.purple }    -- For keywords related to loops.
    treesitter.TSKeywordFunction =         { fg = nord.nord8_gui }
    treesitter.TSFunction =                { fg = nord.nord8_gui }    -- For fuction (calls and definitions).
    treesitter.TSMethod =                  { fg = nord.blue }    -- For method calls and definitions.
    treesitter.TSFuncBuiltin =             { fg = nord.cyan }
    treesitter.TSVariable =                { fg = nord.accent }-- Any variable name that does not have another highlight.
    treesitter.TSVariableBuiltin =         { fg = nord.accent }

    return treesitter

end

theme.loadLSP = function ()
    -- Lsp highlight groups

    local lsp = {
        LspDiagnosticsDefaultError =            { fg = nord.error }, -- used for "Error" diagnostic virtual text
        LspDiagnosticsSignError =               { fg = nord.error }, -- used for "Error" diagnostic signs in sign column
        LspDiagnosticsFloatingError =           { fg = nord.error }, -- used for "Error" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextError =        { fg = nord.error }, -- Virtual text "Error"
        LspDiagnosticsUnderlineError =          { style = 'undercurl', sp = nord.error }, -- used to underline "Error" diagnostics.
        LspDiagnosticsDefaultWarning =          { fg = nord.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = nord.yellow}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = nord.yellow}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = nord.yellow}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = nord.yellow }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = nord.paleblue }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = nord.paleblue },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = nord.paleblue }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = nord.paleblue }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = nord.paleblue }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = nord.purple  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = nord.purple  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = nord.purple  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = nord.purple  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = nord.paleblue }, -- used to underline "Hint" diagnostics.
        LspReferenceText =                      { fg = nord.accent, bg = nord.highlight }, -- used for highlighting "text" references
        LspReferenceRead =                      { fg = nord.accent, bg = nord.highlight }, -- used for highlighting "read" references
        LspReferenceWrite =                     { fg = nord.accent, bg = nord.highlight }, -- used for highlighting "write" references
    }

    return lsp

end

theme.loadPlugins = function()
    -- Plugins highlight groups

    local plugins = {

        -- LspTrouble
        LspTroubleText =                        { fg = nord.text },
        LspTroubleCount =                       { fg = nord.purple, bg = nord.active },
        LspTroubleNormal =                      { fg = nord.fg, bg = nord.sidebar },

        -- Diff
        diffAdded =                             { fg = nord.green },
        diffRemoved =                           { fg = nord.red },
        diffChanged =                           { fg = nord.yellow },
        diffOldFile =                           { fg = nord.yelow },
        diffNewFile =                           { fg = nord.orange },
        diffFile =                              { fg = nord.blue },
        diffLine =                              { fg = nord.comments },
        diffIndexLine =                         { fg = nord.purple },

        -- Neogit
        NeogitBranch =                          { fg = nord.paleblue },
        NeogitRemote =                          { fg = nord.purple },
        NeogitHunkHeader =                      { fg = nord.fg, bg = nord.highlight },
        NeogitHunkHeaderHighlight =             { fg = nord.blue, bg = nord.contrast },
        NeogitDiffContextHighlight =            { fg = nord.bg_alt, bg = nord.contrast },
        NeogitDiffDeleteHighlight =             { fg = nord.red },
        NeogitDiffAddHighlight =                { fg = nord.green },

        -- GitGutter
        GitGutterAdd =                          { fg = nord.green }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = nord.yellow }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = nord.red }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = nord.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = nord.green }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = nord.green }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = nord.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = nord.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = nord.yellow }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = nord.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = nord.red }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = nord.red }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = nord.cyan },
        TelescopeResultsBorder =                { fg = nord.purple },
        TelescopePreviewBorder =                { fg = nord.green },
        TelescopeSelectionCaret =               { fg = nord.purple },
        TelescopeSelection =                    { fg = nord.purple },
        TelescopeMatching =                     { fg = nord.cyan },
        TelescopeNormal =                       { fg = nord.fg, bg = nord.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = nord.blue, style = "bold" },
        NvimTreeGitDirty =                      { fg = nord.yellow },
        NvimTreeGitNew =                        { fg = nord.green },
        NvimTreeImageFile =                     { fg = nord.yellow },
        NvimTreeExecFile =                      { fg = nord.green },
        NvimTreeSpecialFile =                   { fg = nord.purple , style = "underline" },
        NvimTreeFolderName=                     { fg = nord.paleblue },
        NvimTreeEmptyFolderName=                { fg = nord.disabled },
        NvimTreeFolderIcon=                     { fg = nord.accent },
        NvimTreeIndentMarker =                  { fg  = nord.disabled },
        LspDiagnosticsError =                   { fg = nord.error },
        LspDiagnosticsWarning =                 { fg = nord.yellow },
        LspDiagnosticsInformation =             { fg = nord.paleblue },
        LspDiagnosticsHint =                    { fg = nord.purple },

        -- WhichKey
        WhichKey =                              { fg = nord.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = nord.text },
        WhichKeyDesc =                          { fg = nord.blue, style = 'italic' },
        WhichKeySeperator =                     { fg = nord.fg },
        WhichKeyFloating =                      { bg = nord.float },
        WhichKeyFloat =                         { bg = nord.float },

        -- LspSaga
        DiagnosticError =                       { fg = nord.error },
        DiagnosticWarning =                     { fg = nord.yellow },
        DiagnosticInformation =                 { fg = nord.paleblue },
        DiagnosticHint =                        { fg = nord.purple },
        DiagnosticTruncateLine =                { fg = nord.fg },
        LspFloatWinNormal =                     { bg = nord.contrast },
        LspFloatWinBorder =                     { fg = nord.purple },
        LspSagaBorderTitle =                    { fg = nord.cyan },
        LspSagaHoverBorder =                    { fg = nord.paleblue },
        LspSagaRenameBorder =                   { fg = nord.green },
        LspSagaDefPreviewBorder =               { fg = nord.green },
        LspSagaCodeActionBorder =               { fg = nord.blue },
        LspSagaFinderSelection =                { fg = nord.green },
        LspSagaCodeActionTitle =                { fg = nord.paleblue },
        LspSagaCodeActionContent =              { fg = nord.purple },
        LspSagaSignatureHelpBorder =            { fg = nord.pink },
        ReferencesCount =                       { fg = nord.purple },
        DefinitionCount =                       { fg = nord.purple },
        DefinitionIcon =                        { fg = nord.blue },
        ReferencesIcon =                        { fg = nord.blue },
        TargetWord =                            { fg = nord.cyan },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = nord.accent },
        BufferLineFill =                        { bg = nord.bg_alt },

        -- Sneak
        Sneak =                                 { fg = nord.bg, bg = nord.accent },
        SneakScope =                            { bg = nord.selection },

        -- Indent Blankline
        IndentBlanklineChar =                   { fg = nord.highlight },
        IndentBlanklineContextChar =            { fg = nord.disabled },


    }
    -- Options:

    -- Disable nvim-tree background
        if vim.g.nord_disable_background == true then
            plugins.NvimTreeNormal =                        { fg = nord.fg, bg = nord.none }
        else
            plugins.NvimTreeNormal =                        { fg = nord.fg, bg = nord.sidebar }
        end

    return plugins

end

return theme
