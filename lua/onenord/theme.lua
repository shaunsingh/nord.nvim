local onenord = require("onenord.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
  local syntax = {
    Type =           { fg = onenord.onenord9_gui }, -- int, long, char, etc.
    StorageClass =   { fg = onenord.onenord9_gui }, -- static, register, volatile, etc.
    Structure =      { fg = onenord.onenord9_gui }, -- struct, union, enum, etc.
    Constant =       { fg = onenord.onenord4_gui }, -- any constant
    Character =      { fg = onenord.onenord14_gui }, -- any character constant: 'c', '\n'
    Number =         { fg = onenord.onenord15_gui }, -- a number constant: 5
    Boolean =        { fg = onenord.onenord9_gui }, -- a boolean constant: TRUE, false
    Float =          { fg = onenord.onenord15_gui }, -- a floating point constant: 2.3e10
    Statement =      { fg = onenord.onenord9_gui }, -- any statement
    Label =          { fg = onenord.onenord9_gui }, -- case, default, etc.
    Operator =       { fg = onenord.onenord9_gui }, -- sizeof", "+", "*", etc.
    Exception =      { fg = onenord.onenord9_gui }, -- try, catch, throw
    PreProc =        { fg = onenord.onenord9_gui }, -- generic Preprocessor
    Include =        { fg = onenord.onenord9_gui }, -- preprocessor #include
    Define =         { fg = onenord.onenord9_gui }, -- preprocessor #define
    Macro =          { fg = onenord.onenord9_gui }, -- same as Define
    Typedef =        { fg = onenord.onenord9_gui }, -- A typedef
    PreCondit =      { fg = onenord.onenord13_gui }, -- preprocessor #if, #else, #endif, etc.
    Special =        { fg = onenord.onenord4_gui }, -- any special symbol
    SpecialChar =    { fg = onenord.onenord13_gui }, -- special character in a constant
    Tag =            { fg = onenord.onenord4_gui }, -- you can use CTRL-] on this
    Delimiter =      { fg = onenord.onenord6_gui }, -- character that needs attention like , or .
    SpecialComment = { fg = onenord.onenord8_gui }, -- special things inside a comment
    Debug =          { fg = onenord.onenord11_gui }, -- debugging statements
    Underlined =     { fg = onenord.onenord14_gui, bg = onenord.none, style = 'underline' }, -- text that stands out, HTML links
    Ignore =         { fg = onenord.onenord1_gui }, -- left blank, hidden
    Error =          { fg = onenord.onenord11_gui, bg = onenord.none, style = 'bold,underline' }, -- any erroneous construct
    Todo =           { fg = onenord.onenord13_gui, bg = onenord.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Conceal =        { fg = onenord.none, bg = onenord.onenord0_gui },


    htmlLink = { fg = onenord.onenord14_gui, style = "underline" },
    htmlH1 =   { fg = onenord.onenord8_gui, style = "bold" },
    htmlH2 =   { fg = onenord.onenord11_gui, style = "bold" },
    htmlH3 =   { fg = onenord.onenord14_gui, style = "bold" },
    htmlH4 =   { fg = onenord.onenord15_gui, style = "bold" },
    htmlH5 =   { fg = onenord.onenord9_gui, style = "bold" },
    markdownH1 = { fg = onenord.onenord8_gui, style = "bold" },
    markdownH2 = { fg = onenord.onenord11_gui, style = "bold" },
    markdownH3 = { fg = onenord.onenord14_gui, style = "bold" },
    markdownH1Delimiter = { fg = onenord.onenord8_gui },
    markdownH2Delimiter = { fg = onenord.onenord11_gui },
    markdownH3Delimiter = { fg = onenord.onenord14_gui },
  }

  	-- Italic comments
	if vim.g.onenord_italic == true then
		syntax.Conditional =		{ fg = onenord.onenord9_gui, bg = onenord.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = onenord.onenord9_gui, bg = onenord.none, style = 'italic' } -- italic for, do, while, etc.
		syntax.Repeat =				{ fg = onenord.onenord9_gui, bg = onenord.none, style = 'italic' } -- italic any other keyword
		syntax.Comment =		{ fg = onenord.onenord3_gui_bright, bg = onenord.none, style = 'italic' } -- italic comments
		syntax.Function =		{ fg = onenord.onenord8_gui, bg = onenord.none, style = 'italic' } -- italic funtion names
		syntax.Identifier =		{ fg = onenord.onenord9_gui, bg = onenord.none, style = 'italic' }; -- any variable name
    syntax.String = { fg = onenord.onenord14_gui, bg = onenord.none, style= 'italic' } -- any string
	else
		syntax.Comment =		{fg = onenord.onenord3_gui_bright} -- normal comments
		syntax.Conditional =		{ fg = onenord.onenord9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = onenord.onenord9_gui } -- normal for, do, while, etc.
		syntax.Repeat =				{ fg = onenord.onenord9_gui } -- normal any other keyword
		syntax.Function =		{ fg = onenord.onenord8_gui} -- normal function names
		syntax.Identifier =		{ fg = onenord.onenord9_gui}; -- any variable name
    syntax.String = { fg = onenord.onenord14_gui } -- any string
	end

  return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

  local editor = {
    NormalFloat =      { fg = onenord.onenord4_gui, bg = onenord.float }, -- normal text and background color
    ColorColumn =      { fg = onenord.none, bg = onenord.onenord1_gui }, --  used for the columns set with 'colorcolumn'
    Conceal =          { fg = onenord.onenord1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor =           { fg = onenord.onenord4_gui, bg = onenord.none, style = 'reverse' }, -- the character under the cursor
    CursorIM =         { fg = onenord.onenord5_gui, bg = onenord.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
    Directory =        { fg = onenord.onenord7_gui, bg = onenord.none }, -- directory names (and other special names in listings)
    DiffAdd =          { fg = onenord.onenord14_gui, bg = onenord.none, style = 'reverse' }, -- diff mode: Added line
    DiffChange =       { fg = onenord.onenord12_gui, bg = onenord.none, style = 'reverse' }, --  diff mode: Changed line
    DiffDelete =       { fg = onenord.onenord11_gui, bg = onenord.none, style = 'reverse' }, -- diff mode: Deleted line
    DiffText =         { fg = onenord.onenord15_gui, bg = onenord.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
    EndOfBuffer =      { fg = onenord.onenord1_gui },
    ErrorMsg =         { fg = onenord.none },
    Folded =           { fg = onenord.onenord_3_gui_bright, onenord.none, style = 'italic' },
    FoldColumn =       { fg = onenord.onenord7_gui },
    IncSearch =        { fg = onenord.onenord6_gui, bg = onenord.onenord10_gui },
    LineNr =           { fg = onenord.onenord3_gui_bright },
    CursorLineNr =     { fg = onenord.onenord4_gui },
    MatchParen =       { fg = onenord.onenord15_gui, bg = onenord.none, style = 'bold' },
    ModeMsg =          { fg = onenord.onenord4_gui },
    MoreMsg =          { fg = onenord.onenord4_gui },
    NonText =          { fg = onenord.onenord1_gui },
    Pmenu =            { fg = onenord.onenord4_gui, bg = onenord.onenord2_gui },
    PmenuSel =         { fg = onenord.onenord4_gui, bg = onenord.onenord10_gui },
    PmenuSbar =        { fg = onenord.onenord4_gui, bg = onenord.onenord2_gui },
    PmenuThumb =       { fg = onenord.onenord4_gui, bg = onenord.onenord4_gui },
    Question =         { fg = onenord.onenord14_gui },
    QuickFixLine =     { fg = onenord.onenord4_gui, onenord.onenord6_gui, style = 'reverse' },
    qfLineNr =         { fg = onenord.onenord4_gui, onenord.onenord6_gui, style = 'reverse' },
    Search =           { fg = onenord.onenord1_gui, bg = onenord.onenord6_gui, style = 'reverse' },
    SpecialKey =       { fg = onenord.onenord9_gui },
    SpellBad =         { fg = onenord.onenord11_gui, bg = onenord.none, style = 'italic,undercurl' },
    SpellCap =         { fg = onenord.onenord7_gui, bg = onenord.none, style = 'italic,undercurl' },
    SpellLocal =       { fg = onenord.onenord8_gui, bg = onenord.none, style = 'italic,undercurl' },
    SpellRare =        { fg = onenord.onenord9_gui, bg = onenord.none, style = 'italic,undercurl' },
    StatusLine =       { fg = onenord.onenord4_gui, bg = onenord.onenord2_gui },
    StatusLineNC =     { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui },
    StatusLineTerm =   { fg = onenord.onenord4_gui, bg = onenord.onenord2_gui },
    StatusLineTermNC = { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui },
    TabLineFill =      { fg = onenord.onenord4_gui },
    TablineSel =       { fg = onenord.onenord8_gui, bg = onenord.onenord3_gui },
    Tabline =          { fg = onenord.onenord4_gui },
    Title =            { fg = onenord.onenord14_gui, bg = onenord.none, style = 'bold' },
    Visual =           { fg = onenord.none, bg = onenord.onenord1_gui },
    VisualNOS =        { fg = onenord.none, bg = onenord.onenord1_gui },
    WarningMsg =       { fg = onenord.onenord15_gui },
    WildMenu =         { fg = onenord.onenord12_gui, bg = onenord.none, style = 'bold' },
    CursorColumn =     { fg = onenord.none, bg = onenord.cursorlinefg },
    CursorLine =       { fg = onenord.none, bg = onenord.cursorlinefg },
    ToolbarLine =      { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui },
    ToolbarButton =    { fg = onenord.onenord4_gui, bg = onenord.none, style = 'bold' },
    NormalMode =       { fg = onenord.onenord4_gui, bg = onenord.none, style = 'reverse' },
    InsertMode =       { fg = onenord.onenord14_gui, bg = onenord.none, style = 'reverse' },
    ReplacelMode =     { fg = onenord.onenord11_gui, bg = onenord.none, style = 'reverse' },
    VisualMode =       { fg = onenord.onenord9_gui, bg = onenord.none, style = 'reverse' },
    CommandMode =      { fg = onenord.onenord4_gui, bg = onenord.none, style = 'reverse' },
    Warnings =         { fg = onenord.onenord15_gui },

    healthError =   { fg = onenord.onenord11_gui },
    healthSuccess = { fg = onenord.onenord14_gui },
    healthWarning = { fg = onenord.onenord15_gui },

    -- dashboard
    DashboardShortCut = { fg = onenord.onenord7_gui },
    DashboardHeader =   { fg = onenord.onenord9_gui },
    DashboardCenter =   { fg = onenord.onenord8_gui },
    DashboardFooter =   { fg = onenord.onenord14_gui, style = "italic" },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = onenord.onenord0_gui },
    BufferLineFill =              { bg = onenord.onenord0_gui },
  }

  -- Options:

  --Set transparent background
  if vim.g.onenord_disable_background then
    editor.Normal =     { fg = onenord.onenord4_gui, bg = onenord.none } -- normal text and background color
    editor.SignColumn = { fg = onenord.onenord4_gui, bg = onenord.none }
  else
    editor.Normal =     { fg = onenord.onenord4_gui, bg = onenord.onenord0_gui } -- normal text and background color
    editor.SignColumn = { fg = onenord.onenord4_gui, bg = onenord.onenord0_gui }
  end

  -- Remove window split borders
  if vim.g.onenord_borders then
    editor.VertSplit = { fg = onenord.onenord2_gui }
  else
    editor.VertSplit = { fg = onenord.onenord0_gui }
  end

  return editor
end

theme.loadTerminal = function ()

  vim.g.terminal_color_0 = onenord.onenord1_gui
  vim.g.terminal_color_1 = onenord.onenord11_gui
  vim.g.terminal_color_2 = onenord.onenord14_gui
  vim.g.terminal_color_3 = onenord.onenord13_gui
  vim.g.terminal_color_4 = onenord.onenord9_gui
  vim.g.terminal_color_5 = onenord.onenord15_gui
  vim.g.terminal_color_6 = onenord.onenord8_gui
  vim.g.terminal_color_7 = onenord.onenord5_gui
  vim.g.terminal_color_8 = onenord.onenord3_gui
  vim.g.terminal_color_9 = onenord.onenord11_gui
  vim.g.terminal_color_10 = onenord.onenord14_gui
  vim.g.terminal_color_11 = onenord.onenord13_gui
  vim.g.terminal_color_12 = onenord.onenord9_gui
  vim.g.terminal_color_13 = onenord.onenord15_gui
  vim.g.terminal_color_14 = onenord.onenord7_gui
  vim.g.terminal_color_15 = onenord.onenord6_gui

end

theme.loadTreeSitter = function ()
  -- TreeSitter highlight groups

  local treesitter = {
    TSAnnotation =        { fg = onenord.onenord12_gui },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
    TSCharacter=          { fg = onenord.onenord14_gui },    -- For characters.
    TSConstructor =       { fg = onenord.onenord9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
    TSConstant =          { fg = onenord.onenord13_gui },    -- For constants
    TSFloat =             { fg = onenord.onenord15_gui },    -- For floats
    TSNumber =            { fg = onenord.onenord15_gui },    -- For all number
    TSString =            { fg = onenord.onenord14_gui },    -- For strings.

    TSAttribute =         { fg = onenord.onenord15_gui },    -- (unstable) TODO: docs
    TSBoolean=            { fg = onenord.onenord9_gui },    -- For booleans.
    TSConstBuiltin =      { fg = onenord.onenord7_gui },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro =        { fg = onenord.onenord7_gui },    -- For constants that are defined by macros: `NULL` in C.
    TSError =             { fg = onenord.onenord11_gui },    -- For syntax/parser errors.
    TSException =         { fg = onenord.onenord15_gui },    -- For exception related keywords.
    TSField =             { fg = onenord.onenord4_gui }, -- For fields.
    TSFuncMacro =         { fg = onenord.onenord7_gui },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude =           { fg = onenord.onenord9_gui },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel =             { fg = onenord.onenord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
    TSNamespace =         { fg = onenord.onenord4_gui},    -- For identifiers referring to modules and namespaces.
    TSOperator =          { fg = onenord.onenord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter =         { fg = onenord.onenord10_gui }, -- For parameters of a function.
    TSParameterReference= { fg = onenord.onenord10_gui },    -- For references to parameters of a function.
    TSProperty =          { fg = onenord.onenord10_gui }, -- Same as `TSField`.
    TSPunctDelimiter =    { fg = onenord.onenord8_gui }, -- For delimiters ie: `.`
    TSPunctBracket =      { fg = onenord.onenord8_gui }, -- For brackets and parens.
    TSPunctSpecial =      { fg = onenord.onenord8_gui }, -- For special punctutation that does not fall in the catagories before.
    TSStringRegex =       { fg = onenord.onenord7_gui }, -- For regexes.
    TSStringEscape =      { fg = onenord.onenord15_gui }, -- For escape characters within a string.
    TSSymbol =            { fg = onenord.onenord15_gui },    -- For identifiers referring to symbols or atoms.
    TSType =              { fg = onenord.onenord9_gui},    -- For types.
    TSTypeBuiltin =       { fg = onenord.onenord9_gui},    -- For builtin types.
    TSTag =               { fg = onenord.onenord4_gui },    -- Tags like html tag names.
    TSTagDelimiter =      { fg = onenord.onenord15_gui },    -- Tag delimiter like `<` `>` `/`
    TSText =              { fg = onenord.onenord4_gui },    -- For strings consideonenord11_gui text in a markup language.
    TSTextReference =     { fg = onenord.onenord15_gui }, -- FIXME
    TSEmphasis =          { fg = onenord.onenord10_gui },    -- For text to be represented with emphasis.
    TSUnderline =         { fg = onenord.onenord4_gui, bg = onenord.none, style = 'underline' },    -- For text to be represented with an underline.
    TSTitle =             { fg = onenord.onenord10_gui, bg = onenord.none, style = 'bold' },    -- Text that is part of a title.
    TSLiteral =           { fg = onenord.onenord4_gui },    -- Literal text.
    TSURI =               { fg = onenord.onenord14_gui },    -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = onenord.onenord11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

  }

  treesitter.TSComment=          { fg = onenord.onenord3_gui_bright }
  treesitter.TSConditional =     { fg = onenord.onenord9_gui }   -- For keywords related to conditionnals.
  treesitter.TSKeyword =         { fg = onenord.onenord9_gui } -- For keywords that don't fall in previous categories.
  treesitter.TSRepeat =          { fg = onenord.onenord9_gui }    -- For keywords related to loops.
  treesitter.TSKeywordFunction = { fg = onenord.onenord8_gui }
  treesitter.TSFunction =        { fg = onenord.onenord8_gui }    -- For fuction (calls and definitions).
  treesitter.TSMethod =          { fg = onenord.onenord7_gui }    -- For method calls and definitions.
  treesitter.TSFuncBuiltin =     { fg = onenord.onenord8_gui }
  treesitter.TSVariable =        { fg = onenord.onenord4_gui }-- Any variable name that does not have another highlight.
  treesitter.TSVariableBuiltin = { fg = onenord.onenord4_gui }

  return treesitter

end

theme.loadLSP = function ()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError =           { fg = onenord.onenord11_gui }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError =              { fg = onenord.onenord11_gui }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError =          { fg = onenord.onenord11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError =       { fg = onenord.onenord11_gui }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError =         { style = 'undercurl', sp = onenord.onenord11_gui }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning =         { fg = onenord.onenord15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning =            { fg = onenord.onenord15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning =        { fg = onenord.onenord15_gui}, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning =     { fg = onenord.onenord15_gui}, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning =       { style = 'undercurl', sp = onenord.onenord15_gui }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation =     { fg = onenord.onenord10_gui }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation =        { fg = onenord.onenord10_gui },  -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation =    { fg = onenord.onenord10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = onenord.onenord10_gui }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation =   { style = 'undercurl', sp = onenord.onenord10_gui }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint =            { fg = onenord.onenord9_gui  },  -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint =               { fg = onenord.onenord9_gui  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint =           { fg = onenord.onenord9_gui  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint =        { fg = onenord.onenord9_gui  }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint =          { style = 'undercurl', sp = onenord.onenord10_gui }, -- used to underline "Hint" diagnostics.
    LspReferenceText =                     { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui }, -- used for highlighting "text" references
    LspReferenceRead =                     { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui }, -- used for highlighting "read" references
    LspReferenceWrite =                    { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui }, -- used for highlighting "write" references

    DiagnosticVirtualTextWarn  = { link = "LspDiagnosticsVirtualTextWarning" },
    DiagnosticUnderlineWarn    = { link = "LspDiagnosticsUnderlineWarning" },
    DiagnosticFloatingWarn     = { link = "LspDiagnosticsFloatingWarning" },
    DiagnosticSignWarn         = { link = "LspDiagnosticsSignWarning" },
    DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
    DiagnosticUnderlineError   = { link = "LspDiagnosticsUnderlineError" },
    DiagnosticFloatingError    = { link = "LspDiagnosticsFloatingError" },
    DiagnosticSignError        = { link = "LspDiagnosticsSignError" },
    DiagnosticVirtualTextInfo  = { link = "LspDiagnosticsVirtualTextInformation" },
    DiagnosticUnderlineInfo    = { link = "LspDiagnosticsUnderlineInformation" },
    DiagnosticFloatingInfo     = { link = "LspDiagnosticsFloatingInformation" },
    DiagnosticSignInfo         = { link = "LspDiagnosticsSignInformation" },
    DiagnosticVirtualTextHint  = { link = "LspDiagnosticsVirtualTextHint" },
    DiagnosticUnderlineHint    = { link = "LspDiagnosticsUnderlineHint" },
    DiagnosticFloatingHint     = { link = "LspDiagnosticsFloatingHint" },
    DiagnosticSignHint         = { link = "LspDiagnosticsSignHint" },

  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- LspTrouble
    LspTroubleText =   { fg = onenord.onenord4_gui },
    LspTroubleCount =  { fg = onenord.onenord9_gui, bg = onenord.onenord10_gui },
    LspTroubleNormal = { fg = onenord.onenord4_gui, bg = onenord.sidebar },

    -- Diff
    diffAdded =     { fg = onenord.onenord14_gui },
    diffRemoved =   { fg = onenord.onenord11_gui },
    diffChanged =   { fg = onenord.onenord15_gui },
    diffOldFile =   { fg = onenord.yelow },
    diffNewFile =   { fg = onenord.onenord12_gui },
    diffFile =      { fg = onenord.onenord7_gui },
    diffLine =      { fg = onenord.onenord3_gui },
    diffIndexLine = { fg = onenord.onenord9_gui },

    -- Neogit
    NeogitBranch =               { fg = onenord.onenord10_gui },
    NeogitRemote =               { fg = onenord.onenord9_gui },
    NeogitHunkHeader =           { fg = onenord.onenord8_gui },
    NeogitHunkHeaderHighlight =  { fg = onenord.onenord8_gui, bg = onenord.onenord1_gui },
    NeogitDiffContextHighlight = { bg = onenord.onenord1_gui },
    NeogitDiffDeleteHighlight =  { fg = onenord.onenord11_gui, style='reverse' },
    NeogitDiffAddHighlight =     { fg = onenord.onenord14_gui, style='reverse' },

    -- GitGutter
    GitGutterAdd =    { fg = onenord.onenord14_gui }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = onenord.onenord15_gui }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = onenord.onenord11_gui }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd =      { fg = onenord.onenord14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr =    { fg = onenord.onenord14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn =    { fg = onenord.onenord14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsChange =   { fg = onenord.onenord15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = onenord.onenord15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = onenord.onenord15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete =   { fg = onenord.onenord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = onenord.onenord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = onenord.onenord11_gui }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopePromptBorder =   { fg = onenord.onenord8_gui },
    TelescopeResultsBorder =  { fg = onenord.onenord9_gui },
    TelescopePreviewBorder =  { fg = onenord.onenord14_gui },
    TelescopeSelectionCaret = { fg = onenord.onenord9_gui },
    TelescopeSelection =      { fg = onenord.onenord9_gui },
    TelescopeMatching =       { fg = onenord.onenord8_gui },

    -- NvimTree
    NvimTreeRootFolder =        { fg = onenord.onenord7_gui, style = "bold" },
    NvimTreeGitDirty =          { fg = onenord.onenord15_gui },
    NvimTreeGitNew =            { fg = onenord.onenord14_gui },
    NvimTreeImageFile =         { fg = onenord.onenord15_gui },
    NvimTreeExecFile =          { fg = onenord.onenord14_gui },
    NvimTreeSpecialFile =       { fg = onenord.onenord9_gui , style = "underline" },
    NvimTreeFolderName=         { fg = onenord.onenord10_gui },
    NvimTreeEmptyFolderName=    { fg = onenord.onenord1_gui },
    NvimTreeFolderIcon=         { fg = onenord.onenord4_gui },
    NvimTreeIndentMarker =      { fg  = onenord.onenord1_gui },
    LspDiagnosticsError =       { fg = onenord.onenord11_gui },
    LspDiagnosticsWarning =     { fg = onenord.onenord15_gui },
    LspDiagnosticsInformation = { fg = onenord.onenord10_gui },
    LspDiagnosticsHint =        { fg = onenord.onenord9_gui },

    -- WhichKey
    WhichKey =          { fg = onenord.onenord4_gui , style = 'bold'},
    WhichKeyGroup =     { fg = onenord.onenord4_gui },
    WhichKeyDesc =      { fg = onenord.onenord7_gui, style = 'italic' },
    WhichKeySeperator = { fg = onenord.onenord4_gui },
    WhichKeyFloating =  { bg = onenord.float },
    WhichKeyFloat =     { bg = onenord.float },

    -- LspSaga
    DiagnosticError =            { fg = onenord.onenord11_gui },
    DiagnosticWarning =          { fg = onenord.onenord15_gui },
    DiagnosticInformation =      { fg = onenord.onenord10_gui },
    DiagnosticHint =             { fg = onenord.onenord9_gui },
    DiagnosticTruncateLine =     { fg = onenord.onenord4_gui },
    LspFloatWinNormal =          { bg = onenord.onenord2_gui },
    LspFloatWinBorder =          { fg = onenord.onenord9_gui },
    LspSagaBorderTitle =         { fg = onenord.onenord8_gui },
    LspSagaHoverBorder =         { fg = onenord.onenord10_gui },
    LspSagaRenameBorder =        { fg = onenord.onenord14_gui },
    LspSagaDefPreviewBorder =    { fg = onenord.onenord14_gui },
    LspSagaCodeActionBorder =    { fg = onenord.onenord7_gui },
    LspSagaFinderSelection =     { fg = onenord.onenord14_gui },
    LspSagaCodeActionTitle =     { fg = onenord.onenord10_gui },
    LspSagaCodeActionContent =   { fg = onenord.onenord9_gui },
    LspSagaSignatureHelpBorder = { fg = onenord.onenord13_gui },
    ReferencesCount =            { fg = onenord.onenord9_gui },
    DefinitionCount =            { fg = onenord.onenord9_gui },
    DefinitionIcon =             { fg = onenord.onenord7_gui },
    ReferencesIcon =             { fg = onenord.onenord7_gui },
    TargetWord =                 { fg = onenord.onenord8_gui },

        -- Sneak
    Sneak =      { fg = onenord.onenord0_gui, bg = onenord.onenord4_gui },
    SneakScope = { bg = onenord.onenord1_gui },
		
    -- Cmp
    CmpItemKind =	{ fg = onenord.onenord15_gui },
    CmpItemAbbrMatch =	{ fg = onenord.onenord5_gui, style = 'bold' },
    CmpItemAbbrMatchFuzzy = { fg = onenord.onenord5_gui, style = 'bold' },
    CmpItemAbbr =	{ fg = onenord.onenord4_gui},
    CmpItemMenu =       { fg = onenord.onenord14_gui },
		
    -- Indent Blankline
    IndentBlanklineChar =        { fg = onenord.onenord3_gui },
    IndentBlanklineContextChar = { fg = onenord.onenord10_gui },

    -- Illuminate
    illuminatedWord =    { bg = onenord.onenord3_gui },
    illuminatedCurWord = { bg = onenord.onenord3_gui },

    -- nvim-dap
    DapBreakpoint = { fg = onenord.onenord14_gui},
    DapStopped =    { fg = onenord.onenord15_gui},

    -- Hop
    HopNextKey =   { fg = onenord.onenord4_gui, style = 'bold' },
    HopNextKey1 =  { fg = onenord.onenord8_gui, style = 'bold' },
    HopNextKey2 =  { fg = onenord.onenord4_gui},
    HopUnmatched = { fg = onenord.onenord3_gui },

    -- Fern
    FernBranchText = { fg = onenord.onenord3_gui_bright},

    -- nvim-ts-rainbow
    rainbowcol1 = { fg = onenord.onenord15_gui },
    rainbowcol2 = { fg = onenord.onenord13_gui },
    rainbowcol3 = { fg = onenord.onenord11_gui },
    rainbowcol4 = { fg = onenord.onenord7_gui },
    rainbowcol5 = { fg = onenord.onenord8_gui },
    rainbowcol6 = { fg = onenord.onenord15_gui },
    rainbowcol7 = { fg = onenord.onenord13_gui },

    -- lightspeed
    LightspeedLabel = { fg = onenord.onenord8_gui, style = "bold" },
    LightspeedLabelOverlapped = { fg = onenord.onenord8_gui, style = "bold,underline" },
    LightspeedLabelDistant = { fg = onenord.onenord15_gui, style = "bold" },
    LightspeedLabelDistantOverlapped = { fg = onenord.onenord15_gui, style = "bold,underline" },
    LightspeedShortcut = { fg = onenord.onenord10_gui, style = "bold" },
    LightspeedShortcutOverlapped = { fg = onenord.onenord10_gui, style = "bold,underline" },
    LightspeedMaskedChar = { fg = onenord.onenord4_gui, bg = onenord.onenord2_gui, style = "bold" },
    LightspeedGreyWash = { fg = onenord.onenord3_gui_bright },
    LightspeedUnlabeledMatch = { fg = onenord.onenord4_gui, bg = onenord.onenord1_gui },
    LightspeedOneCharMatch = { fg = onenord.onenord8_gui, style = "bold,reverse" },
    LightspeedUniqueChar = { style = "bold,underline" },
    -- LightspeedPendingOpArea = { style = "strikethrough" },
    -- LightspeedPendingChangeOpArea = { style = "strikethrough" },
    -- LightspeedCursor = { fg = onenord.onenord7_gui, style = "underline,reverse" },
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.onenord_disable_background then
    plugins.NvimTreeNormal = { fg = onenord.onenord4_gui, bg = onenord.none }
  else
    plugins.NvimTreeNormal = { fg = onenord.onenord4_gui, bg = onenord.sidebar }
  end

  if vim.g.onenord_enable_sidebar_background then
    plugins.NvimTreeNormal = { fg = onenord.onenord4_gui, bg = onenord.sidebar }
  else
    plugins.NvimTreeNormal = { fg = onenord.onenord4_gui, bg = onenord.none }
  end

  return plugins

end

return theme
