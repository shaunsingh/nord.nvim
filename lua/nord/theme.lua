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
		Macro =						{ fg = nord.nord8_gui }, -- same as Define
		Typedef =					{ fg = nord.nord8_gui }, -- A typedef
		PreCondit =					{ fg = nord.nord13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special =					{ fg = nord.nord4_gui}, -- any special symbol
		SpecialChar =					{ fg = nord.nord13_gui}, -- special character in a constant
		Tag =						{ fg = nord.nord4_gui}, -- you can use CTRL-] on this
		Delimiter =					{ fg = nord.nord6_gui }, -- character that needs attention like , or .
		SpecialComment =				{ fg = nord.nord8_gui}, -- special things inside a comment
		Debug =						{ fg = nord.nord11_gui }, -- debugging statements
		Underlined =					{ fg = nord.link, bg = nord.none, style = 'underline' }, -- text that stands out, HTML links
		Ignore =					{ fg = nord.disabled }, -- left blank, hidden
		Error =						{ fg = nord.error, bg = nord.none, style = 'bold,underline' }, -- any erroneous construct
		Todo =						{ fg = nord.nord13_gui, bg = nord.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        htmlLink = { fg = nord.link, style = "underline" },
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
		ColorColumn =			{ fg = nord.nord0_gui, bg = nord.nord1_gui }, --  used for the columns set with 'colorcolumn'
		Conceal =				{ fg = nord.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor =				{ fg = nord.nord4_gui, bg = nord.none, style = 'reverse' }, -- the character under the cursor
		CursorIM =				{ fg = nord.cursor, bg = nord.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
		Directory =				{ fg = nord.nord7_gui, bg = nord.none }, -- directory names (and other special names in listings)
		DiffAdd =				{ fg = nord.nord14_gui, bg = nord.none, style = 'reverse' }, -- diff mode: Added line
		DiffChange =			{ fg = nord.nord12_gui, bg = nord.none, style = 'reverse' }, --  diff mode: Changed line
		DiffDelete =			{ fg = nord.nord11_gui, bg = nord.none, style = 'reverse' }, -- diff mode: Deleted line
		DiffText =				{ fg = nord.nord15_gui, bg = nord.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
		EndOfBuffer =			{ fg = nord.disabled },
		ErrorMsg =				{ fg = nord.none },
		Folded =				{ fg = nord.disabled, nord.none, style = 'italic' },
		FoldColumn =			{ fg = nord.nord7_gui },
		IncSearch =				{ fg = nord.none, bg = nord.nord4_gui, style = 'reverse' },
		LineNr =				{ fg = nord.line_numbers },
		CursorLineNr =			{ fg = nord.accent },
		MatchParen =			{ fg = nord.nord15_gui, bg = nord.none, style = 'bold' },
		ModeMsg =				{ fg = nord.accent },
		MoreMsg =				{ fg = nord.accent },
		NonText =				{ fg = nord.disabled },
		Pmenu =					{ fg = nord.text, bg = nord.contrast },
		PmenuSel =				{ fg = nord.accent, bg = nord.active },
		PmenuSbar =				{ fg = nord.text, bg = nord.contrast },
		PmenuThumb =			{ fg = nord.fg, bg = nord.accent },
		Question =				{ fg = nord.nord14_gui },
		QuickFixLine =			{ fg = nord.highlight, nord.nord6_gui, style = 'reverse' },
		qfLineNr =				{ fg = nord.highlight, nord.nord6_gui, style = 'reverse' },
		Search =				{ fg = nord.nord1_gui, bg = nord.nord6_gui, style = 'reverse' },
		SpecialKey =			{ fg = nord.nord9_gui },
		SpellBad =				{ fg = nord.nord11_gui, bg = nord.none, style = 'italic,undercurl' },
		SpellCap =				{ fg = nord.nord7_gui, bg = nord.none, style = 'italic,undercurl' },
		SpellLocal =			{ fg = nord.nord8_gui, bg = nord.none, style = 'italic,undercurl' },
		SpellRare =				{ fg = nord.nord9_gui, bg = nord.none, style = 'italic,undercurl' },
		StatusLine =			{ fg = nord.fg, bg = nord.contrast },
		StatusLineNC =  		{ fg = nord.text, bg = nord.disabled },
		StatusLineTerm =		{ fg = nord.fg, bg = nord.contrast },
		StatusLineTermNC =		{ fg = nord.text, bg = nord.disabled },
		TabLineFill =			{ fg = nord.fg },
		TablineSel =			{ fg = nord.accent, bg = nord.bg },
		Tabline =				{ fg = nord.fg },
		Title =					{ fg = nord.nord14_gui, bg = nord.none, style = 'bold' },
		Visual =				{ fg = nord.none, bg = nord.selection },
		VisualNOS =				{ fg = nord.none, bg = nord.selection },
		WarningMsg =			{ fg = nord.nord15_gui },
		WildMenu =				{ fg = nord.nord12_gui, bg = nord.none, style = 'bold' },
		CursorColumn =			{ fg = nord.none, bg = nord.active },
		CursorLine =			{ fg = nord.none, bg = nord.cursorlinefg },
		ToolbarLine =			{ fg = nord.fg, bg = nord.bg_alt },
		ToolbarButton =			{ fg = nord.fg, bg = nord.none, style = 'bold' },
		NormalMode =			{ fg = nord.accent, bg = nord.none, style = 'reverse' },
		InsertMode =			{ fg = nord.nord14_gui, bg = nord.none, style = 'reverse' },
		ReplacelMode =			{ fg = nord.nord11_gui, bg = nord.none, style = 'reverse' },
		VisualMode =			{ fg = nord.nord9_gui, bg = nord.none, style = 'reverse' },
		CommandMode =			{ fg = nord.gray, bg = nord.none, style = 'reverse' },
		Warnings =				{ fg = nord.nord15_gui },

        healthError =           { fg = nord.error },
        healthSuccess =         { fg = nord.nord14_gui },
        healthWarning =         { fg = nord.nord15_gui },

        -- dashboard
        DashboardShortCut =                     { fg = nord.nord7_gui },
        DashboardHeader =                       { fg = nord.nord9_gui },
        DashboardCenter =                       { fg = nord.nord8_gui },
        DashboardFooter =                       { fg = nord.nord14_gui, style = "italic" },

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

	vim.g.terminal_color_0 = nord.nord1_gui
	vim.g.terminal_color_1 = nord.nord11_gui
	vim.g.terminal_color_2 = nord.nord14_gui
	vim.g.terminal_color_3 = nord.nord15_gui
	vim.g.terminal_color_4 = nord.nord7_gui
	vim.g.terminal_color_5 = nord.nord9_gui
	vim.g.terminal_color_6 = nord.nord8_gui
	vim.g.terminal_color_7 = nord.nord6_gui
	vim.g.terminal_color_8 = nord.gray
	vim.g.terminal_color_9 = nord.nord11_gui
	vim.g.terminal_color_10 = nord.nord14_gui
	vim.g.terminal_color_11 = nord.nord15_gui
	vim.g.terminal_color_12 = nord.nord7_gui
	vim.g.terminal_color_13 = nord.nord9_gui
	vim.g.terminal_color_14 = nord.nord8_gui
	vim.g.terminal_color_15 = nord.nord6_gui

end

theme.loadTreeSitter = function ()
    -- TreeSitter highlight groups

    local treesitter = {
        TSAnnotation =              { fg = nord.nord12_gui },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
        TSCharacter=                { fg = nord.nord14_gui },    -- For characters.
        TSConstructor =             { fg = nord.nord9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        TSConstant =                { fg = nord.nord13_gui },    -- For constants
        TSFloat =                   { fg = nord.nord15_gui },    -- For floats
        TSNumber =                  { fg = nord.nord15_gui },    -- For all number
        TSString =                  { fg = nord.nord14_gui },    -- For strings.

	--TSAnnotation =              { fg = nord.nord11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
        TSAttribute =               { fg = nord.nord15_gui },    -- (unstable) TODO: docs
        TSBoolean=                  { fg = nord.nord9_gui },    -- For booleans.
        --TSCharacter=                { fg = nord.nord12_gui },    -- For characters.
        --TSConstructor =             { fg = nord.nord9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        --TSConstant =                { fg = nord.nord15_gui },    -- For constants
        TSConstBuiltin =            { fg = nord.nord7_gui },    -- For constant that are built in the language: `nil` in Lua.
        TSConstMacro =              { fg = nord.nord7_gui },    -- For constants that are defined by macros: `NULL` in C.
        TSError =                   { fg = nord.error },    -- For syntax/parser errors.
        TSException =               { fg = nord.nord15_gui },    -- For exception related keywords.
        TSField =                   { fg = nord.gray }, -- For fields.
        --TSFloat =                   { fg = nord.nord11_gui },    -- For floats.
        TSFuncMacro =               { fg = nord.nord7_gui },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
        TSInclude =                 { fg = nord.nord9_gui },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
        TSLabel =                   { fg = nord.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
        TSNamespace =               { fg = nord.nord4_gui},    -- For identifiers referring to modules and namespaces.
        --TSNone =                    { },    -- TODO: docs
        --TSNumber =                  { fg = nord.nord12_gui },    -- For all numbers
        TSOperator =                { fg = nord.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
        TSParameter =               { fg = nord.nord10_gui }, -- For parameters of a function.
        TSParameterReference=       { fg = nord.nord10_gui },    -- For references to parameters of a function.
        TSProperty =                { fg = nord.nord10_gui }, -- Same as `TSField`.
        TSPunctDelimiter =          { fg = nord.nord8_gui }, -- For delimiters ie: `.`
        TSPunctBracket =            { fg = nord.nord8_gui }, -- For brackets and parens.
        TSPunctSpecial =            { fg = nord.nord8_gui }, -- For special punctutation that does not fall in the catagories before.
        --TSString =                  { fg = nord.nord14_gui },    -- For strings.
        TSStringRegex =             { fg = nord.nord7_gui }, -- For regexes.
        TSStringEscape =            { fg = nord.disabled }, -- For escape characters within a string.
        TSSymbol =                  { fg = nord.nord15_gui },    -- For identifiers referring to symbols or atoms.
        TSType =                    { fg = nord.nord9_gui},    -- For types.
        TSTypeBuiltin =             { fg = nord.nord9_gui},    -- For builtin types.
        TSTag =                     { fg = nord.nord4_gui },    -- Tags like html tag names.
        TSTagDelimiter =            { fg = nord.nord15_gui },    -- Tag delimiter like `<` `>` `/`
        TSText =                    { fg = nord.text },    -- For strings considenord11_gui text in a markup language.
        TSTextReference =           { fg = nord.nord15_gui }, -- FIXME
        TSEmphasis =                { fg = nord.nord10_gui },    -- For text to be represented with emphasis.
        TSUnderline =               { fg = nord.fg, bg = nord.none, style = 'underline' },    -- For text to be represented with an underline.
        TSStrike =                  { },    -- For strikethrough text.
        TSTitle =                   { fg = nord.nord10_gui, bg = nord.none, style = 'bold' },    -- Text that is part of a title.
        TSLiteral =                 { fg = nord.fg },    -- Literal text.
        TSURI =                     { fg = nord.link },    -- Any URI like a link or email.        TSAnnotation =              { fg = nord.nord11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

    }

    treesitter.TSComment=                  { fg = nord.nord3_gui_bright }
    treesitter.TSConditional =             { fg = nord.nord9_gui }   -- For keywords related to conditionnals.
    treesitter.TSKeyword =                 { fg = nord.nord9_gui } -- For keywords that don't fall in previous categories.
    treesitter.TSRepeat =                  { fg = nord.nord9_gui }    -- For keywords related to loops.
    treesitter.TSKeywordFunction =         { fg = nord.nord8_gui }
    treesitter.TSFunction =                { fg = nord.nord8_gui }    -- For fuction (calls and definitions).
    treesitter.TSMethod =                  { fg = nord.nord7_gui }    -- For method calls and definitions.
    treesitter.TSFuncBuiltin =             { fg = nord.nord8_gui }
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
        LspDiagnosticsDefaultWarning =          { fg = nord.nord15_gui}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsSignWarning =             { fg = nord.nord15_gui}, -- used for "Warning" diagnostic signs in sign column
        LspDiagnosticsFloatingWarning =         { fg = nord.nord15_gui}, -- used for "Warning" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextWarning =      { fg = nord.nord15_gui}, -- Virtual text "Warning"
        LspDiagnosticsUnderlineWarning =        { style = 'undercurl', sp = nord.nord15_gui }, -- used to underline "Warning" diagnostics.
        LspDiagnosticsDefaultInformation =      { fg = nord.nord10_gui }, -- used for "Information" diagnostic virtual text
        LspDiagnosticsSignInformation =         { fg = nord.nord10_gui },  -- used for "Information" diagnostic signs in sign column
        LspDiagnosticsFloatingInformation =     { fg = nord.nord10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextInformation =  { fg = nord.nord10_gui }, -- Virtual text "Information"
        LspDiagnosticsUnderlineInformation =    { style = 'undercurl', sp = nord.nord10_gui }, -- used to underline "Information" diagnostics.
        LspDiagnosticsDefaultHint =             { fg = nord.nord9_gui  },  -- used for "Hint" diagnostic virtual text
        LspDiagnosticsSignHint =                { fg = nord.nord9_gui  }, -- used for "Hint" diagnostic signs in sign column
        LspDiagnosticsFloatingHint =            { fg = nord.nord9_gui  }, -- used for "Hint" diagnostic messages in the diagnostics float
        LspDiagnosticsVirtualTextHint =         { fg = nord.nord9_gui  }, -- Virtual text "Hint"
        LspDiagnosticsUnderlineHint =           { style = 'undercurl', sp = nord.nord10_gui }, -- used to underline "Hint" diagnostics.
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
        LspTroubleCount =                       { fg = nord.nord9_gui, bg = nord.active },
        LspTroubleNormal =                      { fg = nord.fg, bg = nord.sidebar },

        -- Diff
        diffAdded =                             { fg = nord.nord14_gui },
        diffRemoved =                           { fg = nord.nord11_gui },
        diffChanged =                           { fg = nord.nord15_gui },
        diffOldFile =                           { fg = nord.yelow },
        diffNewFile =                           { fg = nord.nord12_gui },
        diffFile =                              { fg = nord.nord7_gui },
        diffLine =                              { fg = nord.comments },
        diffIndexLine =                         { fg = nord.nord9_gui },

        -- Neogit
        NeogitBranch =                          { fg = nord.nord10_gui },
        NeogitRemote =                          { fg = nord.nord9_gui },
        NeogitHunkHeader =                      { fg = nord.fg, bg = nord.highlight },
        NeogitHunkHeaderHighlight =             { fg = nord.nord7_gui, bg = nord.contrast },
        NeogitDiffContextHighlight =            { fg = nord.bg_alt, bg = nord.contrast },
        NeogitDiffDeleteHighlight =             { fg = nord.nord11_gui },
        NeogitDiffAddHighlight =                { fg = nord.nord14_gui },

        -- GitGutter
        GitGutterAdd =                          { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitGutterChange =                       { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
        GitGutterDelete =                       { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|

        -- GitSigns
        GitSignsAdd =                           { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsAddNr =                         { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsAddLn =                         { fg = nord.nord14_gui }, -- diff mode: Added line |diff.txt|
        GitSignsChange =                        { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeNr =                      { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsChangeLn =                      { fg = nord.nord15_gui }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete =                        { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteNr =                      { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|
        GitSignsDeleteLn =                      { fg = nord.nord11_gui }, -- diff mode: Deleted line |diff.txt|

        -- Telescope
        TelescopePromptBorder =                 { fg = nord.nord8_gui },
        TelescopeResultsBorder =                { fg = nord.nord9_gui },
        TelescopePreviewBorder =                { fg = nord.nord14_gui },
        TelescopeSelectionCaret =               { fg = nord.nord9_gui },
        TelescopeSelection =                    { fg = nord.nord9_gui },
        TelescopeMatching =                     { fg = nord.nord8_gui },
        TelescopeNormal =                       { fg = nord.fg, bg = nord.float },

        -- NvimTree
        NvimTreeRootFolder =                    { fg = nord.nord7_gui, style = "bold" },
        NvimTreeGitDirty =                      { fg = nord.nord15_gui },
        NvimTreeGitNew =                        { fg = nord.nord14_gui },
        NvimTreeImageFile =                     { fg = nord.nord15_gui },
        NvimTreeExecFile =                      { fg = nord.nord14_gui },
        NvimTreeSpecialFile =                   { fg = nord.nord9_gui , style = "underline" },
        NvimTreeFolderName=                     { fg = nord.nord10_gui },
        NvimTreeEmptyFolderName=                { fg = nord.disabled },
        NvimTreeFolderIcon=                     { fg = nord.accent },
        NvimTreeIndentMarker =                  { fg  = nord.disabled },
        LspDiagnosticsError =                   { fg = nord.error },
        LspDiagnosticsWarning =                 { fg = nord.nord15_gui },
        LspDiagnosticsInformation =             { fg = nord.nord10_gui },
        LspDiagnosticsHint =                    { fg = nord.nord9_gui },

        -- WhichKey
        WhichKey =                              { fg = nord.accent , style = 'bold'},
        WhichKeyGroup =                         { fg = nord.text },
        WhichKeyDesc =                          { fg = nord.nord7_gui, style = 'italic' },
        WhichKeySeperator =                     { fg = nord.fg },
        WhichKeyFloating =                      { bg = nord.float },
        WhichKeyFloat =                         { bg = nord.float },

        -- LspSaga
        DiagnosticError =                       { fg = nord.error },
        DiagnosticWarning =                     { fg = nord.nord15_gui },
        DiagnosticInformation =                 { fg = nord.nord10_gui },
        DiagnosticHint =                        { fg = nord.nord9_gui },
        DiagnosticTruncateLine =                { fg = nord.fg },
        LspFloatWinNormal =                     { bg = nord.contrast },
        LspFloatWinBorder =                     { fg = nord.nord9_gui },
        LspSagaBorderTitle =                    { fg = nord.nord8_gui },
        LspSagaHoverBorder =                    { fg = nord.nord10_gui },
        LspSagaRenameBorder =                   { fg = nord.nord14_gui },
        LspSagaDefPreviewBorder =               { fg = nord.nord14_gui },
        LspSagaCodeActionBorder =               { fg = nord.nord7_gui },
        LspSagaFinderSelection =                { fg = nord.nord14_gui },
        LspSagaCodeActionTitle =                { fg = nord.nord10_gui },
        LspSagaCodeActionContent =              { fg = nord.nord9_gui },
        LspSagaSignatureHelpBorder =            { fg = nord.nord13_gui },
        ReferencesCount =                       { fg = nord.nord9_gui },
        DefinitionCount =                       { fg = nord.nord9_gui },
        DefinitionIcon =                        { fg = nord.nord7_gui },
        ReferencesIcon =                        { fg = nord.nord7_gui },
        TargetWord =                            { fg = nord.nord8_gui },

        -- BufferLine
        BufferLineIndicatorSelected =           { fg = nord.bg },
        BufferLineFill =                        { bg = nord.bg },

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
