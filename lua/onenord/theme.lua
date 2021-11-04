local onenord = require("onenord.colors")

local function italicize(group)
  group["style"] = "italic"
end

local function remove_background(group)
  group["bg"] = onenord.none
end

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
  local syntax = {
    -- int, long, char, etc.
    Type = { fg = onenord.yellow },
    -- static, register, volatile, etc.
    StorageClass = { fg = onenord.purple },
    -- struct, union, enum, etc.
    Structure = { fg = onenord.purple },
    -- any constant
    Constant = { fg = onenord.blue },
    -- any character constant: 'c', '\n'
    Character = { fg = onenord.green },
    -- a number constant: 5
    Number = { fg = onenord.orange },
    -- a boolean constant: TRUE, false
    Boolean = { fg = onenord.orange },
    -- a floating point constant: 2.3e10
    Float = { fg = onenord.orange },
    -- any statement
    Statement = { fg = onenord.purple },
    -- case, default, etc.
    Label = { fg = onenord.purple },
    -- sizeof", "+", "*", etc.
    Operator = { fg = onenord.purple },
    -- try, catch, throw
    Exception = { fg = onenord.purple },
    -- generic Preprocessor
    PreProc = { fg = onenord.purple },
    -- preprocessor #include
    Include = { fg = onenord.blue },
    -- preprocessor #define
    Define = { fg = onenord.red },
    -- same as Define
    Macro = { fg = onenord.red },
    -- A typedef
    Typedef = { fg = onenord.purple },
    -- preprocessor #if, #else, #endif, etc.
    PreCondit = { fg = onenord.purple },
    -- any special symbol
    Special = { fg = onenord.light_red },
    -- special character in a constant
    SpecialChar = { fg = onenord.light_red },
    -- you can use CTRL-] on this
    Tag = { fg = onenord.green },
    -- character that needs attention like , or .
    Delimiter = { fg = onenord.dark_blue },
    -- special things inside a comment
    SpecialComment = { fg = onenord.light_gray },
    -- debugging statements
    Debug = { fg = onenord.yellow },
    -- text that stands out, HTML links
    Underlined = { fg = onenord.green, style = "underline" },
    -- left blank, hidden
    Ignore = { fg = onenord.cyan, bg = onenord.bg, style = "bold" },
    -- any erroneous construct
    Error = { fg = onenord.error, bg = onenord.none, style = "bold,underline" },
    -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Todo = { fg = onenord.yellow, bg = onenord.none, style = "bold,italic" },
    Comment = { fg = onenord.light_gray }, -- normal comments
    -- normal if, then, else, endif, switch, etc.
    Conditional = { fg = onenord.purple },
    -- normal for, do, while, etc.
    Keyword = { fg = onenord.purple },
    -- normal any other keyword
    Repeat = { fg = onenord.purple },
    -- normal function names
    Function = { fg = onenord.blue },
    -- any variable name
    Identifier = { fg = onenord.fg },
    -- any string
    String = { fg = onenord.green },

    htmlLink = { fg = onenord.green, style = "underline" },
    htmlH1 = { fg = onenord.cyan, style = "bold" },
    htmlH2 = { fg = onenord.red, style = "bold" },
    htmlH3 = { fg = onenord.green, style = "bold" },
    htmlH4 = { fg = onenord.yellow, style = "bold" },
    htmlH5 = { fg = onenord.purple, style = "bold" },

    markdownBlockquote = { fg = onenord.light_gray },
    markdownBold = { fg = onenord.yellow, style = "bold" },
    markdownCode = { fg = onenord.green },
    markdownCodeBlock = { fg = onenord.green },
    markdownCodeDelimiter = { fg = onenord.green },
    markdownH1 = { fg = onenord.dark_blue, style = "bold" },
    markdownH2 = { fg = onenord.blue, style = "bold" },
    markdownH3 = { fg = onenord.cyan, style = "bold" },
    markdownH4 = { fg = onenord.light_green },
    markdownH5 = { fg = onenord.light_green },
    markdownH6 = { fg = onenord.light_green },
    markdownH1Delimiter = { fg = onenord.dark_blue },
    markdownH2Delimiter = { fg = onenord.blue },
    markdownH3Delimiter = { fg = onenord.cyan },
    markdownH4Delimiter = { fg = onenord.light_green },
    markdownH5Delimiter = { fg = onenord.light_green },
    markdownH6Delimiter = { fg = onenord.light_green },
    markdownId = { fg = onenord.yellow },
    markdownIdDeclaration = { fg = onenord.purple },
    markdownIdDelimiter = { fg = onenord.light_gray },
    markdownLinkDelimiter = { fg = onenord.light_gray },
    markdownItalic = { style = "italic" },
    markdownLinkText = { fg = onenord.dark_blue },
    markdownListMarker = { fg = onenord.red },
    markdownOrderedListMarker = { fg = onenord.red },
    markdownRule = { fg = onenord.purple },
    markdownUrl = { fg = onenord.cyan, style = "underline" },
  }

-- Options:

  if vim.g.onenord_italic == true then
  -- Italic comments
    italicize(syntax.Comment)

  -- Italic Keywords
    italicize(syntax.Conditional)
    italicize(syntax.Keyword)
    italicize(syntax.Repeat)

  -- Italic Function names
    italicize(syntax.Function)

    italicize(syntax.Identifier)

    italicize(syntax.String)
  end
  return syntax
end


theme.loadEditor = function ()
    -- Editor highlight groups

  local editor = {
    -- normal text and background color for floating windows
    NormalFloat = { fg = onenord.fg, bg = onenord.active },
    -- floating window border
    FloatBorder = { fg = onenord.blue, bg = onenord.active },
    -- used for the columns set with 'colorcolumn'
    ColorColumn = { fg = onenord.none, bg = onenord.float },
    -- placeholder characters substituted for concealed text (see 'conceallevel')
    Conceal = { bg = onenord.bg },
    -- the character under the cursor
    Cursor = { fg = onenord.fg, bg = onenord.none, style = "reverse" },
    -- like Cursor, but used when in IME mode
    CursorIM = { fg = onenord.fg, bg = onenord.none, style = "reverse" },
    -- directory names (and other special names in listings)
    Directory = { fg = onenord.blue, bg = onenord.none },
    -- diff mode: Added line
    DiffAdd = { fg = onenord.none, bg = onenord.diff_add_bg },
    -- diff mode: Changed line
    DiffChange = { fg = onenord.none, bg = onenord.diff_change_bg },
    -- diff mode: Deleted line
    DiffDelete = { fg = onenord.none, bg = onenord.diff_remove_bg },
    -- diff mode: Changed text within a changed line
    DiffText = { fg = onenord.none, bg = onenord.diff_text_bg },
    -- error messages
    ErrorMsg = { fg = onenord.error },
    -- line used for closed folds
    Folded = { fg = onenord.dark_blue, bg = onenord.none, style = "italic" },
    -- 'foldcolumn'
    FoldColumn = { fg = onenord.light_gray },
    -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    IncSearch = { fg = onenord.yellow, bg = onenord.selection, style = "bold,underline" },
    -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNr = { fg = onenord.light_gray },
    -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    CursorLineNr = { fg = onenord.fg },
    -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    MatchParen = { fg = onenord.yellow, bg = onenord.none, style = "bold" },
    -- 'showmode' message (e.g., "-- INSERT -- ")
    ModeMsg = { fg = onenord.blue, style = "bold" },
    -- |more-prompt|
    MoreMsg = { fg = onenord.blue, style = "bold" },
    -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist
    -- in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line).
    -- See also |hl-EndOfBuffer|.
    NonText = { fg = onenord.gray },
    -- normal item |hl-Pmenu|
    Pmenu = { fg = onenord.fg, bg = onenord.float },
    -- selected item |hl-PmenuSel|
    PmenuSel = { bg = onenord.selection },
    -- scrollbar |hl-PmenuSbar|
    PmenuSbar = { bg = onenord.float },
    -- thumb of the scrollbar  |hl-PmenuThumb|
    PmenuThumb = { bg = onenord.fg },
    -- |hit-enter| prompt and yes/no questions
    Question = { fg = onenord.green },
    -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    QuickFixLine = { bg = onenord.none },
    -- Line numbers for quickfix lists
    qfLineNr = { fg = onenord.purple },
    -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    Search = { fg = onenord.blue, bg = onenord.selection, style = "bold" },
    -- Unprintable characters: text displayed differently from what it really is.
    -- But not 'listchars' whitespace. |hl-Whitespace|
    SpecialKey = { fg = onenord.dark_blue },
    -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellBad = { fg = onenord.red, bg = onenord.none, style = "italic,undercurl" },
    -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellCap = { fg = onenord.yellow, bg = onenord.none, style = "italic,undercurl" },
    -- Word that is recognized by the spellchecker as one that is used in another region.
    -- |spell| Combined with the highlighting used otherwise.
    SpellLocal = { fg = onenord.cyan, bg = onenord.none, style = "italic,undercurl" },
    -- Word that is recognized by the spellchecker as one that is hardly ever used.
    -- |spell| Combined with the highlighting used otherwise.
    SpellRare = { fg = onenord.purple, bg = onenord.none, style = "italic,undercurl" },
    -- status line of current window
    StatusLine = { fg = onenord.fg, bg = onenord.active },
    -- status lines of not-current windows Note: if this is equal to "StatusLine"
    -- Vim will use "^^^" in the status line of the current window.
    StatusLineNC = { fg = onenord.light_gray, bg = onenord.active },
    -- status line of current terminal window
    StatusLineTerm = { fg = onenord.fg, bg = onenord.active },
    -- status lines of not-current terminal windows Note: if this is equal to "StatusLine"
    -- Vim will use "^^^" in the status line of the current window.
    StatusLineTermNC = { fg = onenord.light_gray, bg = onenord.active },
    -- tab pages line, where there are no labels
    TabLineFill = { fg = onenord.light_gray, bg = onenord.active },
    -- tab pages line, active tab page label
    TablineSel = { fg = onenord.fg, bg = onenord.bg },
    Tabline = { fg = onenord.fg, bg = onenord.bg },
    -- titles for output from ":set all", ":autocmd" etc.
    Title = { fg = onenord.green, bg = onenord.none, style = "bold" },
    -- Visual mode selection
    Visual = { fg = onenord.none, bg = onenord.highlight },
    -- Visual mode selection when vim is "Not Owning the Selection".
    VisualNOS = { fg = onenord.none, bg = onenord.highlight },
    -- warning messages
    WarningMsg = { fg = onenord.warn },
    -- "nbsp", "space", "tab" and "trail" in 'listchars'
    Whitespace = { fg = onenord.gray },
    -- current match in 'wildmenu' completion
    WildMenu = { fg = onenord.yellow, bg = onenord.none, style = "bold" },
    -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorColumn = { fg = onenord.none, bg = onenord.float },
    -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLine = { fg = onenord.none, bg = onenord.active },
    -- Normal mode message in the cmdline
    NormalMode = { fg = onenord.cyan, bg = onenord.none, style = "reverse" },
    -- Insert mode message in the cmdline
    InsertMode = { fg = onenord.green, bg = onenord.none, style = "reverse" },
    -- Replace mode message in the cmdline
    ReplacelMode = { fg = onenord.red, bg = onenord.none, style = "reverse" },
    -- Visual mode message in the cmdline
    VisualMode = { fg = onenord.purple, bg = onenord.none, style = "reverse" },
    -- Command mode message in the cmdline
    CommandMode = { fg = onenord.yellow, bg = onenord.none, style = "reverse" },
    Warnings = { fg = onenord.warn },

    healthError = { fg = onenord.error },
    healthSuccess = { fg = onenord.green },
    healthWarning = { fg = onenord.warn },

    -- normal text and background color
    Normal = { fg = onenord.fg, bg = onenord.bg },
    SignColumn = { fg = onenord.fg, bg = onenord.bg },

    -- the column separating vertically split windows
    VertSplit = { fg = onenord.bg },

    EndOfBuffer = { fg = onenord.gray },
  }

  -- Options:

  --Set transparent background
  if vim.g.onenord_disable_background then
    remove_background(editor.Normal)
    remove_background(editor.SignColumn)
  end

  -- Remove window split borders
  if vim.g.onenord_borders then
    editor.VertSplit["fg"] = onenord.highlight
  end

  return editor
end

theme.loadTerminal = function ()

  -- dark
  vim.g.terminal_color_0 = onenord.float
  vim.g.terminal_color_8 = onenord.selection

  -- light
  vim.g.terminal_color_7 = onenord.fg
  vim.g.terminal_color_15 = onenord.fg_light

  -- colors
  vim.g.terminal_color_1 = onenord.red
  vim.g.terminal_color_9 = onenord.red

  vim.g.terminal_color_2 = onenord.green
  vim.g.terminal_color_10 = onenord.green

  vim.g.terminal_color_3 = onenord.yellow
  vim.g.terminal_color_11 = onenord.yellow

  vim.g.terminal_color_4 = onenord.blue
  vim.g.terminal_color_12 = onenord.blue

  vim.g.terminal_color_5 = onenord.purple
  vim.g.terminal_color_13 = onenord.purple

  vim.g.terminal_color_6 = onenord.cyan
  vim.g.terminal_color_14 = onenord.cyan
end

theme.loadTreeSitter = function ()
  -- TreeSitter highlight groups

  local treesitter = {
    -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSAttribute = { fg = onenord.purple },
    -- Boolean literals: `True` and `False` in Python.
    TSBoolean = { fg = onenord.orange },
    -- Character literals: `'a'` in C.
    TSCharacter = { fg = onenord.green },
    -- Line comments and block comments.
    TSComment = { fg = onenord.light_gray },
    -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConditional = { fg = onenord.purple },
    -- Constants identifiers. These might not be semantically constant. E.g. uppercase variables in Python.
    TSConstant = { fg = onenord.cyan },
    -- Built-in constant values: `nil` in Lua.
    TSConstBuiltin = { fg = onenord.orange },
    -- Constants defined by macros: `NULL` in C.
    TSConstMacro = { fg = onenord.red },
    -- Constructor calls and definitions: `{}` in Lua, and Java constructors.
    TSConstructor = { fg = onenord.yellow },
    -- Syntax/parser errors. This might highlight large sections of code while the user is typing
    -- still incomplete code, use a sensible highlight.
    TSError = { fg = onenord.error },
    -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSException = { fg = onenord.purple },
    -- Object and struct fields.
    TSField = { fg = onenord.blue },
    -- Floating-point number literals.
    TSFloat = { fg = onenord.orange },
    -- Function calls and definitions.
    TSFunction = { fg = onenord.blue },
    -- Built-in functions: `print` in Lua.
    TSFuncBuiltin = { fg = onenord.cyan },
    -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSFuncMacro = { fg = onenord.blue },
    -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSInclude = { fg = onenord.blue },
    -- Keywords that don't fit into other categories.
    TSKeyword = { fg = onenord.purple },
    -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordFunction = { fg = onenord.purple },
    -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    TSKeywordOperator = { fg = onenord.purple },
    -- Keywords like `return` and `yield`.
    TSKeywordReturn = { fg = onenord.purple },
    -- GOTO labels: `label:` in C, and `::label::` in Lua.
    TSLabel = { fg = onenord.purple },
    -- Method calls and definitions.
    TSMethod = { fg = onenord.blue },
    -- Identifiers referring to modules and namespaces.
    TSNamespace = { fg = onenord.yellow },
    -- Numeric literals that don't fit into other categories.
    TSNumber = { fg = onenord.orange },
    -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSOperator = { fg = onenord.purple },
    -- Parameters of a function.
    TSParameter = { fg = onenord.red },
    -- References to parameters of a function.
    TSParameterReference = { fg = onenord.red },
    -- Same as `TSField`.
    TSProperty = { fg = onenord.blue },
    -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctDelimiter = { fg = onenord.dark_blue },
    -- Brackets, braces, parentheses, etc.
    TSPunctBracket = { fg = onenord.dark_blue },
    -- Special punctuation that doesn't fit into the previous categories.
    TSPunctSpecial = { fg = onenord.dark_blue },
    -- Keywords related to loops: `for`, `while`, etc.
    TSRepeat = { fg = onenord.purple },
    -- String literals.
    TSString = { fg = onenord.green },
    -- Regular expression literals.
    TSStringRegex = { fg = onenord.orange },
    -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringEscape = { fg = onenord.orange },
    -- Identifiers referring to symbols or atoms.
    TSSymbol = { fg = onenord.cyan },
    -- Tags like HTML tag names.
    TSTag = { fg = onenord.dark_blue },
    -- HTML tag attributes.
    TSTagAttribute = { fg = onenord.blue },
    -- Tag delimiters like `<` `>` `/`.
    TSTagDelimiter = { fg = onenord.dark_blue },
    -- Non-structured text. Like text in a markup language.
    TSText = { fg = onenord.fg },
    -- Text to be represented in bold.
    TSStrong = { style = "bold" },
    -- Text to be represented with emphasis.
    TSEmphasis = { style = "italic" },
    -- Text to be represented with an underline.
    TSUnderline = { style = "underline" },
    -- Text that is part of a title.
    TSTitle = { fg = onenord.blue, style = "bold" },
    -- Literal or verbatim text.
    TSLiteral = { fg = onenord.green },
    -- URIs like hyperlinks or email addresses.
    TSURI = { fg = onenord.blue, style = "underline" },
    -- Math environments like LaTeX's `$ ... $`
    TSMath = { fg = onenord.fg },
    -- Footnotes, text references, citations, etc.
    TSTextReference = { fg = onenord.red },
    -- Text environments of markup languages.
    TSEnvironment = { fg = onenord.fg },
    -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSEnvironmentName = { fg = onenord.fg },
    -- Text representation of an informational note.
    TSNote = { fg = onenord.info, style = "bold" },
    -- Text representation of a warning note.
    TSWarning = { fg = onenord.warn, style = "bold" },
    -- Text representation of a danger note.
    TSDanger = { fg = onenord.error, style = "bold" },
    -- Type (and class) definitions and annotations.
    TSType = { fg = onenord.yellow },
    -- Built-in types: `i32` in Rust.
    TSTypeBuiltin = { fg = onenord.orange },
    -- Variable names that don't fit into other categories.
    TSVariable = { fg = onenord.fg },
    -- Variable names defined by the language: `this` or `self` in Javascript.
    TSVariableBuiltin = { fg = onenord.red },
  }

  italicize(treesitter.TSComment)
  italicize(treesitter.TSString)
  italicize(treesitter.TSConditional)
  italicize(treesitter.TSKeyword)
  italicize(treesitter.TSRepeat)
  italicize(treesitter.TSKeywordFunction)
  italicize(treesitter.TSFunction)
  italicize(treesitter.TSMethod)
  italicize(treesitter.TSFuncBuiltin)
  italicize(treesitter.TSFunction)
  italicize(treesitter.TSMethod)
  italicize(treesitter.TSFuncBuiltin)

  return treesitter

end

theme.loadLSP = function ()
  -- Lsp highlight groups

  local lsp = {

  -- used for "Error" diagnostic virtual text
    LspDiagnosticsDefaultError = { fg = onenord.error },
    -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsSignError = { fg = onenord.error },
    -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingError = { fg = onenord.error },
    -- Virtual text "Error"
    LspDiagnosticsVirtualTextError = { fg = onenord.error },
    -- used to underline "Error" diagnostics.
    LspDiagnosticsUnderlineError = { style = "underline", sp = onenord.error },
    -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsDefaultWarning = { fg = onenord.warn },
    -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = onenord.warn },
    -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingWarning = { fg = onenord.warn },
    -- Virtual text "Warning"
    LspDiagnosticsVirtualTextWarning = { fg = onenord.warn },
    -- used to underline "Warning" diagnostics.
    LspDiagnosticsUnderlineWarning = { style = "underline", sp = onenord.warn },
    -- used for "Information" diagnostic virtual text
    LspDiagnosticsDefaultInformation = { fg = onenord.info },
    -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsSignInformation = { fg = onenord.info },
    -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingInformation = { fg = onenord.info },
    -- Virtual text "Information"
    LspDiagnosticsVirtualTextInformation = { fg = onenord.info },
    -- used to underline "Information" diagnostics.
    LspDiagnosticsUnderlineInformation = { style = "underline", sp = onenord.info },
    -- used for "Hint" diagnostic virtual text
    LspDiagnosticsDefaultHint = { fg = onenord.hint },
    -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsSignHint = { fg = onenord.hint },
    -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsFloatingHint = { fg = onenord.hint },
    -- Virtual text "Hint"
    LspDiagnosticsVirtualTextHint = { fg = onenord.hint },
    -- used to underline "Hint" diagnostics.
    LspDiagnosticsUnderlineHint = { style = "underline", sp = onenord.hint },
    -- used for highlighting "text" references
    LspReferenceText = { fg = onenord.none, style = "underline" },
    -- used for highlighting "read" references
    LspReferenceRead = { fg = onenord.none, style = "underline" },
    -- used for highlighting "write" references
    LspReferenceWrite = { fg = onenord.none, style = "underline" },

    DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
    DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
    DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
    DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
    DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
    DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
    DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
    DiagnosticSignError = { link = "LspDiagnosticsSignError" },
    DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
    DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
    DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
    DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
    DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
    DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
    DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
    DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {


    -- Cmp
    CmpItemAbbr = { fg = onenord.fg },
    CmpItemAbbrDeprecated = { fg = onenord.fg },
    CmpItemAbbrMatch = { fg = onenord.blue, style = "bold" },
    CmpItemAbbrMatchFuzzy = { fg = onenord.blue, underline = true },
    CmpItemKind = { fg = onenord.purple },
    CmpItemMenu = { fg = onenord.light_gray },

    -- Notify
    NotifyERRORBorder = { fg = onenord.error },
    NotifyWARNBorder = { fg = onenord.warn },
    NotifyINFOBorder = { fg = onenord.info },
    NotifyDEBUGBorder = { fg = onenord.light_gray },
    NotifyTRACEBorder = { fg = onenord.hint },
    NotifyERRORIcon = { fg = onenord.error },
    NotifyWARNIcon = { fg = onenord.warn },
    NotifyINFOIcon = { fg = onenord.info },
    NotifyDEBUGIcon = { fg = onenord.light_gray },
    NotifyTRACEIcon = { fg = onenord.hint },
    NotifyERRORTitle = { fg = onenord.error },
    NotifyWARNTitle = { fg = onenord.warn },
    NotifyINFOTitle = { fg = onenord.info },
    NotifyDEBUGTitle = { fg = onenord.light_gray },
    NotifyTRACETitle = { fg = onenord.hint },

    -- Trouble
    TroubleCount = { fg = onenord.purple },
    TroubleNormal = { fg = onenord.fg },
    TroubleText = { fg = onenord.fg },

    -- Diff
    diffAdded = { fg = onenord.diff_add },
    diffRemoved = { fg = onenord.diff_remove },
    diffChanged = { fg = onenord.diff_change },
    diffOldFile = { fg = onenord.yellow },
    diffNewFile = { fg = onenord.orange },
    diffFile = { fg = onenord.blue },
    diffLine = { fg = onenord.light_gray },
    diffIndexLine = { fg = onenord.purple },

    -- Neogit
    NeogitBranch = { fg = onenord.blue },
    NeogitRemote = { fg = onenord.purple },
    NeogitHunkHeader = { fg = onenord.fg, bg = onenord.highlight },
    NeogitHunkHeaderHighlight = { fg = onenord.blue, bg = onenord.highlight },
    NeogitDiffContextHighlight = { bg = onenord.float },
    NeogitDiffDeleteHighlight = { fg = onenord.diff_remove, style = "reverse" },
    NeogitDiffAddHighlight = { fg = onenord.diff_add, style = "reverse" },

    -- GitGutter
    GitGutterAdd = { fg = onenord.diff_add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = onenord.diff_change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = onenord.diff_remove }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = onenord.diff_add }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr = { fg = onenord.diff_add }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn = { fg = onenord.diff_add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = onenord.diff_change }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = onenord.diff_change }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = onenord.diff_change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = onenord.diff_remove }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = onenord.diff_remove }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = onenord.diff_remove }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeNormal = { fg = onenord.fg, bg = onenord.bg },
    TelescopePromptPrefix = { fg = onenord.purple },
    TelescopePromptBorder = { fg = onenord.blue },
    TelescopeResultsBorder = { fg = onenord.blue },
    TelescopePreviewBorder = { fg = onenord.blue },
    TelescopeSelectionCaret = { fg = onenord.cyan },
    TelescopeSelection = { fg = onenord.cyan },
    TelescopeMatching = { fg = onenord.yellow, style = "bold" },

    -- NvimTree
    NvimTreeRootFolder = { fg = onenord.green, style = "bold" },
    NvimTreeFolderName = { fg = onenord.blue },
    NvimTreeFolderIcon = { fg = onenord.dark_blue },
    NvimTreeEmptyFolderName = { fg = onenord.blue },
    NvimTreeOpenedFolderName = { fg = onenord.yellow, style = "italic" },
    NvimTreeIndentMarker = { fg = onenord.blue },
    NvimTreeGitDirty = { fg = onenord.yellow },
    NvimTreeGitNew = { fg = onenord.green },
    NvimTreeGitStaged = { fg = onenord.purple },
    NvimTreeGitDeleted = { fg = onenord.red },
    NvimTreeSpecialFile = { fg = onenord.orange, style = "underline" },
    NvimTreeNormal = { fg = onenord.fg, bg = onenord.active },
    NvimTreeCursorLine = { bg = onenord.float },
    NvimTreeVertSplit = { fg = onenord.active, bg = onenord.active },
    LspDiagnosticsError = { fg = onenord.error },
    LspDiagnosticsWarning = { fg = onenord.warn },
    LspDiagnosticsInformation = { fg = onenord.info },
    LspDiagnosticsHint = { fg = onenord.hint },

    -- WhichKey
    WhichKey = { fg = onenord.purple, style = "bold" },
    WhichKeyGroup = { fg = onenord.cyan },
    WhichKeyDesc = { fg = onenord.blue, style = "italic" },
    WhichKeySeperator = { fg = onenord.green },
    WhichKeyFloat = { bg = onenord.active },

    -- LspSaga
    LspFloatWinNormal = { fg = onenord.fg, bg = onenord.bg },
    LspFloatWinBorder = { fg = onenord.purple },
    DiagnosticError = { fg = onenord.error },
    DiagnosticWarning = { fg = onenord.warn },
    DiagnosticInformation = { fg = onenord.info },
    DiagnosticHint = { fg = onenord.hint },
    LspSagaDiagnosticBorder = { fg = onenord.gray },
    LspSagaDiagnosticHeader = { fg = onenord.blue },
    LspSagaDiagnosticTruncateLine = { fg = onenord.highlight },
    ProviderTruncateLine = { fg = onenord.highlight },
    LspSagaShTruncateLine = { fg = onenord.highlight },
    LspSagaDocTruncateLine = { fg = onenord.highlight },
    LineDiagTruncateLine = { fg = onenord.highlight },
    LspSagaBorderTitle = { fg = onenord.cyan },
    LspSagaHoverBorder = { fg = onenord.blue },
    LspSagaRenameBorder = { fg = onenord.green },
    LspSagaDefPreviewBorder = { fg = onenord.green },
    LspSagaCodeActionTitle = { fg = onenord.blue },
    LspSagaCodeActionContent = { fg = onenord.purple },
    LspSagaCodeActionBorder = { fg = onenord.blue },
    LspSagaCodeActionTruncateLine = { fg = onenord.highlight },
    LspSagaSignatureHelpBorder = { fg = onenord.light_red },
    LspSagaFinderSelection = { fg = onenord.green },
    LspSagaAutoPreview = { fg = onenord.red },
    ReferencesCount = { fg = onenord.purple },
    DefinitionCount = { fg = onenord.purple },
    DefinitionPreviewTitle = { fg = onenord.green },
    DefinitionIcon = { fg = onenord.blue },
    ReferencesIcon = { fg = onenord.blue },
    TargetWord = { fg = onenord.cyan },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = onenord.yellow },
    BufferLineFill = { bg = onenord.bg },

    -- barbar
    BufferCurrent = { fg = onenord.fg, bg = onenord.bg },
    BufferCurrentIndex = { fg = onenord.fg, bg = onenord.bg },
    BufferCurrentMod = { fg = onenord.yellow, bg = onenord.bg, style = "bold" },
    BufferCurrentSign = { fg = onenord.cyan, bg = onenord.bg },
    BufferCurrentTarget = { fg = onenord.red, bg = onenord.bg, style = "bold" },
    BufferVisible = { fg = onenord.fg, bg = onenord.bg },
    BufferVisibleIndex = { fg = onenord.fg, bg = onenord.bg },
    BufferVisibleMod = { fg = onenord.yellow, bg = onenord.bg, style = "bold" },
    BufferVisibleSign = { fg = onenord.light_gray, bg = onenord.bg },
    BufferVisibleTarget = { fg = onenord.red, bg = onenord.bg, style = "bold" },
    BufferInactive = { fg = onenord.light_gray, bg = onenord.active },
    BufferInactiveIndex = { fg = onenord.light_gray, bg = onenord.active },
    BufferInactiveMod = { fg = onenord.yellow, bg = onenord.active },
    BufferInactiveSign = { fg = onenord.light_gray, bg = onenord.active },
    BufferInactiveTarget = { fg = onenord.red, bg = onenord.active, style = "bold" },

    -- Sneak
    Sneak = { fg = onenord.bg, bg = onenord.fg },
    SneakScope = { bg = onenord.selection },

    -- Indent Blankline
    IndentBlanklineChar = { fg = onenord.highlight },
    IndentBlanklineContextChar = { fg = onenord.purple },

    -- Nvim dap
    DapBreakpoint = { fg = onenord.red },
    DapStopped = { fg = onenord.green },

    -- Illuminate
    illuminatedWord = { bg = onenord.highlight },
    illuminatedCurWord = { bg = onenord.highlight },

    -- Hop
    HopNextKey = { fg = onenord.fg_light, style = "bold" },
    HopNextKey1 = { fg = onenord.cyan, style = "bold" },
    HopNextKey2 = { fg = onenord.purple },
    HopUnmatched = { fg = onenord.light_gray },

    -- Fern
    FernBranchText = { fg = onenord.blue },

    -- Lightspeed
    LightspeedLabel = { fg = onenord.pink, style = "bold,underline" },
    LightspeedLabelOverlapped = { fg = onenord.dark_pink, style = "underline" },
    LightspeedLabelDistant = { fg = onenord.cyan, style = "bold,underline" },
    LightspeedLabelDistantOverlapped = { fg = onenord.blue, style = "underline" },
    LightspeedShortcut = { fg = onenord.fg_light, bg = onenord.pink, style = "bold,underline" },
    LightspeedMaskedChar = { fg = onenord.light_purple },
    LightspeedGreyWash = { fg = onenord.gray },
    LightspeedUnlabeledMatch = { fg = onenord.fg_light, style = "bold" },
    LightspeedOneCharMatch = { fg = onenord.yellow, style = "bold,reverse" },
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.onenord_disable_background then
    remove_background(plugins.NvimTreeNormal)
  end

  -- if vim.g.onenord_enable_sidebar_background then
  --   plugins.NvimTreeNormal = { fg = onenord.onenord4_gui, bg = onenord.sidebar }
  -- else
  --   plugins.NvimTreeNormal = { fg = onenord.onenord4_gui, bg = onenord.none }
  -- end

  return plugins

end

return theme
