-- Vampyre Theme for Neovim
-- A dark, gothic vampire-themed colorscheme

local M = {}

-- Vampire-themed color palette
local colors = {
  -- Background colors inspired by gothic castles and night
  bg = "#0a0a0f",           -- Deep black with slight purple tint
  bg_alt = "#12121a",       -- Slightly lighter background
  bg_highlight = "#1a1a2e", -- For highlighted backgrounds
  
  -- Foreground colors
  fg = "#e8e8f0",           -- Soft white for text
  fg_alt = "#b8b8c8",       -- Dimmed foreground
  fg_dim = "#888895",       -- Very dim text
  
  -- Vampire red tones (blood-inspired)
  blood_red = "#c91f37",    -- Bright blood red
  dark_red = "#8b1a2f",     -- Dark dried blood
  crimson = "#dc143c",      -- Vivid crimson
  
  -- Purple tones (royal vampire colors)
  royal_purple = "#6a0dad", -- Deep royal purple
  dark_purple = "#4b0082",  -- Dark indigo
  pale_purple = "#9d7bd8",  -- Pale lavender
  
  -- Accent colors
  moon_white = "#f0f0ff",   -- Moonlight white
  mist_gray = "#4a4a5e",    -- Misty gray
  shadow_gray = "#2a2a3e",  -- Shadow gray
  
  -- Special colors
  fang_white = "#fffafa",   -- Ivory white (for fangs!)
  gold = "#d4af37",         -- Gothic gold
  blood_orange = "#ff4500", -- Warning/error color
  eerie_green = "#39ff14",  -- Eerie neon green
  
  -- Syntax colors
  cyan = "#56b6c2",
  blue = "#61afef",
  violet = "#8b5cf6",
  teal = "#008080",
}

-- Helper function to set highlights
local function highlight(group, opts)
  local cmd = "highlight " .. group
  if opts.fg then cmd = cmd .. " guifg=" .. opts.fg end
  if opts.bg then cmd = cmd .. " guibg=" .. opts.bg end
  if opts.gui then cmd = cmd .. " gui=" .. opts.gui end
  if opts.sp then cmd = cmd .. " guisp=" .. opts.sp end
  vim.cmd(cmd)
end

function M.setup()
  -- Editor highlights
  highlight("Normal", { fg = colors.fg, bg = colors.bg })
  highlight("NormalFloat", { fg = colors.fg, bg = colors.bg_alt })
  highlight("NormalNC", { fg = colors.fg, bg = colors.bg })
  highlight("LineNr", { fg = colors.mist_gray, bg = colors.bg })
  highlight("CursorLineNr", { fg = colors.crimson, bg = colors.bg, gui = "bold" })
  highlight("CursorLine", { bg = colors.bg_highlight })
  highlight("ColorColumn", { bg = colors.bg_highlight })
  highlight("SignColumn", { fg = colors.fg_dim, bg = colors.bg })
  highlight("VertSplit", { fg = colors.shadow_gray, bg = colors.bg })
  highlight("Visual", { bg = colors.dark_purple })
  highlight("VisualNOS", { bg = colors.dark_purple })
  highlight("Search", { fg = colors.bg, bg = colors.gold })
  highlight("IncSearch", { fg = colors.bg, bg = colors.crimson })
  highlight("CurSearch", { fg = colors.bg, bg = colors.blood_orange })
  highlight("MatchParen", { fg = colors.crimson, gui = "bold,underline" })
  highlight("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
  highlight("PmenuSel", { fg = colors.moon_white, bg = colors.royal_purple })
  highlight("PmenuSbar", { bg = colors.shadow_gray })
  highlight("PmenuThumb", { bg = colors.mist_gray })
  highlight("StatusLine", { fg = colors.fg, bg = colors.shadow_gray })
  highlight("StatusLineNC", { fg = colors.fg_dim, bg = colors.bg_alt })
  highlight("TabLine", { fg = colors.fg_dim, bg = colors.bg_alt })
  highlight("TabLineFill", { bg = colors.bg })
  highlight("TabLineSel", { fg = colors.moon_white, bg = colors.royal_purple })
  highlight("Folded", { fg = colors.pale_purple, bg = colors.bg_highlight })
  highlight("FoldColumn", { fg = colors.pale_purple, bg = colors.bg })
  
  -- Syntax highlighting
  highlight("Comment", { fg = colors.mist_gray, gui = "italic" })
  highlight("Constant", { fg = colors.crimson })
  highlight("String", { fg = colors.eerie_green })
  highlight("Character", { fg = colors.pale_purple })
  highlight("Number", { fg = colors.blood_orange })
  highlight("Boolean", { fg = colors.blood_red })
  highlight("Float", { fg = colors.blood_orange })
  highlight("Identifier", { fg = colors.pale_purple })
  highlight("Function", { fg = colors.royal_purple, gui = "bold" })
  highlight("Statement", { fg = colors.blood_red, gui = "bold" })
  highlight("Conditional", { fg = colors.blood_red, gui = "bold" })
  highlight("Repeat", { fg = colors.blood_red, gui = "bold" })
  highlight("Label", { fg = colors.crimson })
  highlight("Operator", { fg = colors.fg })
  highlight("Keyword", { fg = colors.blood_red, gui = "bold" })
  highlight("Exception", { fg = colors.blood_orange })
  highlight("PreProc", { fg = colors.gold })
  highlight("Include", { fg = colors.royal_purple })
  highlight("Define", { fg = colors.royal_purple })
  highlight("Macro", { fg = colors.gold })
  highlight("PreCondit", { fg = colors.gold })
  highlight("Type", { fg = colors.violet })
  highlight("StorageClass", { fg = colors.blood_red })
  highlight("Structure", { fg = colors.violet })
  highlight("Typedef", { fg = colors.violet })
  highlight("Special", { fg = colors.cyan })
  highlight("SpecialChar", { fg = colors.blood_orange })
  highlight("Tag", { fg = colors.crimson })
  highlight("Delimiter", { fg = colors.fg_alt })
  highlight("SpecialComment", { fg = colors.pale_purple, gui = "italic" })
  highlight("Debug", { fg = colors.blood_orange })
  highlight("Underlined", { fg = colors.blue, gui = "underline" })
  highlight("Ignore", { fg = colors.fg_dim })
  highlight("Error", { fg = colors.fang_white, bg = colors.dark_red })
  highlight("Todo", { fg = colors.bg, bg = colors.gold, gui = "bold" })
  
  -- Diagnostics
  highlight("DiagnosticError", { fg = colors.blood_orange })
  highlight("DiagnosticWarn", { fg = colors.gold })
  highlight("DiagnosticInfo", { fg = colors.cyan })
  highlight("DiagnosticHint", { fg = colors.pale_purple })
  highlight("DiagnosticUnderlineError", { sp = colors.blood_orange, gui = "underline" })
  highlight("DiagnosticUnderlineWarn", { sp = colors.gold, gui = "underline" })
  highlight("DiagnosticUnderlineInfo", { sp = colors.cyan, gui = "underline" })
  highlight("DiagnosticUnderlineHint", { sp = colors.pale_purple, gui = "underline" })
  
  -- Git signs
  highlight("DiffAdd", { fg = colors.eerie_green, bg = colors.bg })
  highlight("DiffChange", { fg = colors.gold, bg = colors.bg })
  highlight("DiffDelete", { fg = colors.blood_red, bg = colors.bg })
  highlight("DiffText", { fg = colors.blue, bg = colors.bg_highlight })
  
  -- Treesitter
  highlight("@variable", { fg = colors.fg })
  highlight("@variable.builtin", { fg = colors.blood_red })
  highlight("@function", { fg = colors.royal_purple, gui = "bold" })
  highlight("@function.builtin", { fg = colors.violet })
  highlight("@function.macro", { fg = colors.gold })
  highlight("@parameter", { fg = colors.pale_purple })
  highlight("@keyword", { fg = colors.blood_red, gui = "bold" })
  highlight("@keyword.function", { fg = colors.blood_red, gui = "bold" })
  highlight("@keyword.operator", { fg = colors.blood_red })
  highlight("@keyword.return", { fg = colors.crimson, gui = "bold" })
  highlight("@conditional", { fg = colors.blood_red, gui = "bold" })
  highlight("@repeat", { fg = colors.blood_red, gui = "bold" })
  highlight("@string", { fg = colors.eerie_green })
  highlight("@string.escape", { fg = colors.blood_orange })
  highlight("@character", { fg = colors.pale_purple })
  highlight("@number", { fg = colors.blood_orange })
  highlight("@boolean", { fg = colors.blood_red })
  highlight("@float", { fg = colors.blood_orange })
  highlight("@constant", { fg = colors.crimson })
  highlight("@constant.builtin", { fg = colors.crimson })
  highlight("@type", { fg = colors.violet })
  highlight("@type.builtin", { fg = colors.violet })
  highlight("@attribute", { fg = colors.gold })
  highlight("@property", { fg = colors.cyan })
  highlight("@constructor", { fg = colors.violet })
  highlight("@operator", { fg = colors.fg })
  highlight("@punctuation.bracket", { fg = colors.fg_alt })
  highlight("@punctuation.delimiter", { fg = colors.fg_alt })
  highlight("@tag", { fg = colors.crimson })
  highlight("@tag.attribute", { fg = colors.pale_purple })
  highlight("@tag.delimiter", { fg = colors.fg_alt })
  
  -- LSP
  highlight("LspReferenceText", { bg = colors.bg_highlight })
  highlight("LspReferenceRead", { bg = colors.bg_highlight })
  highlight("LspReferenceWrite", { bg = colors.bg_highlight })
  
  -- Telescope
  highlight("TelescopeBorder", { fg = colors.royal_purple, bg = colors.bg })
  highlight("TelescopePromptBorder", { fg = colors.crimson, bg = colors.bg })
  highlight("TelescopeResultsBorder", { fg = colors.royal_purple, bg = colors.bg })
  highlight("TelescopePreviewBorder", { fg = colors.royal_purple, bg = colors.bg })
  highlight("TelescopeSelection", { fg = colors.moon_white, bg = colors.dark_purple })
  highlight("TelescopeMatching", { fg = colors.gold, gui = "bold" })
end

-- Initialize the theme
M.setup()

return M
