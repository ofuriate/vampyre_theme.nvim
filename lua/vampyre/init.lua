-- Vampyre Theme for Neovim
-- A dark, gothic vampire-themed colorscheme

local M = {}

-- Vampire-themed color palette (AGGRESSIVE EDITION)
local colors = {
  -- Background colors - pure darkness
  bg = "#000000",           -- Pure black (the void)
  bg_alt = "#0d0d15",       -- Slightly lighter background
  bg_highlight = "#1a0a1a", -- Dark crimson tint
  
  -- Foreground colors - stark contrast
  fg = "#f5f5ff",           -- Bright white for text
  fg_alt = "#c8c8d8",       -- Dimmed foreground
  fg_dim = "#707080",       -- Very dim text
  
  -- Vampire red tones (SCARLET BLOOD)
  blood_red = "#ff2400",    -- Scarlet red
  dark_red = "#8b0000",     -- Dark scarlet
  crimson = "#dc143c",      -- Deep scarlet crimson
  
  -- Purple tones (ROYAL DARKNESS)
  royal_purple = "#8b00ff", -- Bright royal purple
  dark_purple = "#3d0066",  -- Deep dark purple
  pale_purple = "#b388ff",  -- Bright lavender
  
  -- Accent colors
  moon_white = "#ffffff",   -- Pure moonlight white
  mist_gray = "#3a3a50",    -- Misty gray
  shadow_gray = "#1a1a2a",  -- Deep shadow gray
  
  -- Special colors
  fang_white = "#ffffff",   -- Pure white (for fangs!)
  gold = "#ffd700",         -- Bright gothic gold
  blood_orange = "#ff2200", -- Intense warning/error color
  eerie_green = "#00ff41",  -- Bright eerie green
  
  -- Syntax colors - more vibrant
  cyan = "#00e5ff",
  blue = "#40c4ff",
  violet = "#a855f7",
  teal = "#00bfa5",
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
  highlight("CursorLineNr", { fg = colors.crimson, bg = colors.bg, gui = "bold,italic" })
  highlight("CursorLine", { bg = colors.bg_highlight })
  highlight("ColorColumn", { bg = colors.bg_highlight })
  highlight("SignColumn", { fg = colors.fg_dim, bg = colors.bg })
  highlight("VertSplit", { fg = colors.shadow_gray, bg = colors.bg })
  highlight("Visual", { fg = colors.fang_white, bg = colors.dark_purple, gui = "bold" })
  highlight("VisualNOS", { fg = colors.fang_white, bg = colors.dark_purple, gui = "bold" })
  highlight("Search", { fg = colors.bg, bg = colors.gold })
  highlight("IncSearch", { fg = colors.bg, bg = colors.crimson })
  highlight("CurSearch", { fg = colors.bg, bg = colors.blood_orange })
  highlight("MatchParen", { fg = colors.blood_orange, bg = colors.dark_purple, gui = "bold,underline" })
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
  highlight("Comment", { fg = colors.mist_gray, gui = "italic,bold" })
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
  highlight("Operator", { fg = colors.crimson, gui = "bold" })
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
  highlight("@operator", { fg = colors.crimson, gui = "bold" })
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
