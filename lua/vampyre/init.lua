-- Vampyre Theme for Neovim
-- A dark, gothic vampire-themed colorscheme

local M = {}

-- Vampire-themed color palette (BLOOD RED, SCARLET & GOLD ONLY)
local colors = {
  -- Background colors - deep blood red tones
  bg = "#200000",           -- Deep blood red background (more visible)
  bg_alt = "#2a0000",       -- Slightly lighter blood red
  bg_highlight = "#3a0505", -- Highlighted blood tint
  
  -- Foreground colors - gold and white for contrast
  fg = "#ffd700",           -- Gold for main text
  fg_alt = "#d4af37",       -- Darker gold
  fg_dim = "#8b0000",       -- Dark blood red for dim text
  
  -- Blood red tones
  blood_red = "#8b0000",    -- Dark blood red
  bright_blood = "#ff0000", -- Bright blood red
  scarlet = "#ff2400",      -- Scarlet
  crimson = "#dc143c",      -- Crimson scarlet
  
  -- Gold tones
  gold = "#ffd700",         -- Bright gold
  dark_gold = "#b8860b",    -- Dark goldenrod
  pale_gold = "#ffdf00",    -- Golden yellow
  
  -- Accent colors (blood red tones only)
  moon_white = "#ffd700",   -- Gold for highlights
  mist_gray = "#4a0000",    -- Dark blood mist
  shadow_gray = "#250000",  -- Blood shadow
  
  -- Special colors
  fang_white = "#ffffff",   -- Pure white
  blood_orange = "#ff4500", -- Blood orange for errors
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
  highlight("Visual", { fg = colors.fang_white, bg = colors.blood_red, gui = "bold" })
  highlight("VisualNOS", { fg = colors.fang_white, bg = colors.blood_red, gui = "bold" })
  highlight("Search", { fg = colors.bg, bg = colors.gold })
  highlight("IncSearch", { fg = colors.bg, bg = colors.crimson })
  highlight("CurSearch", { fg = colors.bg, bg = colors.blood_orange })
  highlight("MatchParen", { fg = colors.gold, bg = colors.blood_red, gui = "bold,underline" })
  highlight("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
  highlight("PmenuSel", { fg = colors.moon_white, bg = colors.blood_red })
  highlight("PmenuSbar", { bg = colors.shadow_gray })
  highlight("PmenuThumb", { bg = colors.mist_gray })
  highlight("StatusLine", { fg = colors.fg, bg = colors.shadow_gray })
  highlight("StatusLineNC", { fg = colors.fg_dim, bg = colors.bg_alt })
  highlight("TabLine", { fg = colors.fg_dim, bg = colors.bg_alt })
  highlight("TabLineFill", { bg = colors.bg })
  highlight("TabLineSel", { fg = colors.moon_white, bg = colors.blood_red })
  highlight("Folded", { fg = colors.gold, bg = colors.bg_highlight })
  highlight("FoldColumn", { fg = colors.gold, bg = colors.bg })
  
  -- Syntax highlighting (BLOOD RED, SCARLET, GOLD ONLY)
  highlight("Comment", { fg = colors.mist_gray, gui = "italic" })
  highlight("Constant", { fg = colors.crimson })
  highlight("String", { fg = colors.gold })
  highlight("Character", { fg = colors.pale_gold })
  highlight("Number", { fg = colors.scarlet })
  highlight("Boolean", { fg = colors.bright_blood })
  highlight("Float", { fg = colors.scarlet })
  highlight("Identifier", { fg = colors.gold })
  highlight("Function", { fg = colors.dark_gold, gui = "bold" })
  highlight("Statement", { fg = colors.bright_blood, gui = "bold" })
  highlight("Conditional", { fg = colors.bright_blood, gui = "bold" })
  highlight("Repeat", { fg = colors.bright_blood, gui = "bold" })
  highlight("Label", { fg = colors.crimson })
  highlight("Operator", { fg = colors.scarlet, gui = "bold" })
  highlight("Keyword", { fg = colors.bright_blood, gui = "bold" })
  highlight("Exception", { fg = colors.scarlet })
  highlight("PreProc", { fg = colors.gold })
  highlight("Include", { fg = colors.crimson })
  highlight("Define", { fg = colors.gold })
  highlight("Macro", { fg = colors.dark_gold })
  highlight("PreCondit", { fg = colors.gold })
  highlight("Type", { fg = colors.gold, gui = "bold" })
  highlight("StorageClass", { fg = colors.blood_red })
  highlight("Structure", { fg = colors.gold })
  highlight("Typedef", { fg = colors.dark_gold })
  highlight("Special", { fg = colors.crimson })
  highlight("SpecialChar", { fg = colors.scarlet })
  highlight("Tag", { fg = colors.crimson })
  highlight("Delimiter", { fg = colors.fg_alt })
  highlight("SpecialComment", { fg = colors.gold, gui = "italic" })
  highlight("Debug", { fg = colors.scarlet })
  highlight("Underlined", { fg = colors.gold, gui = "underline" })
  highlight("Ignore", { fg = colors.fg_dim })
  highlight("Error", { fg = colors.fang_white, bg = colors.blood_red })
  highlight("Todo", { fg = colors.bg, bg = colors.gold, gui = "bold" })
  
  -- Diagnostics
  highlight("DiagnosticError", { fg = colors.scarlet })
  highlight("DiagnosticWarn", { fg = colors.gold })
  highlight("DiagnosticInfo", { fg = colors.dark_gold })
  highlight("DiagnosticHint", { fg = colors.pale_gold })
  highlight("DiagnosticUnderlineError", { sp = colors.scarlet, gui = "underline" })
  highlight("DiagnosticUnderlineWarn", { sp = colors.gold, gui = "underline" })
  highlight("DiagnosticUnderlineInfo", { sp = colors.dark_gold, gui = "underline" })
  highlight("DiagnosticUnderlineHint", { sp = colors.pale_gold, gui = "underline" })
  
  -- Git signs
  highlight("DiffAdd", { fg = colors.gold, bg = colors.bg })
  highlight("DiffChange", { fg = colors.pale_gold, bg = colors.bg })
  highlight("DiffDelete", { fg = colors.scarlet, bg = colors.bg })
  highlight("DiffText", { fg = colors.gold, bg = colors.bg_highlight })
  
  -- Treesitter (BLOOD RED, SCARLET, GOLD ONLY)
  highlight("@variable", { fg = colors.fg })
  highlight("@variable.builtin", { fg = colors.bright_blood })
  highlight("@function", { fg = colors.dark_gold, gui = "bold" })
  highlight("@function.builtin", { fg = colors.gold })
  highlight("@function.macro", { fg = colors.pale_gold })
  highlight("@parameter", { fg = colors.gold })
  highlight("@keyword", { fg = colors.bright_blood, gui = "bold" })
  highlight("@keyword.function", { fg = colors.bright_blood, gui = "bold" })
  highlight("@keyword.operator", { fg = colors.scarlet })
  highlight("@keyword.return", { fg = colors.crimson, gui = "bold" })
  highlight("@conditional", { fg = colors.bright_blood, gui = "bold" })
  highlight("@repeat", { fg = colors.bright_blood, gui = "bold" })
  highlight("@string", { fg = colors.gold })
  highlight("@string.escape", { fg = colors.pale_gold })
  highlight("@character", { fg = colors.pale_gold })
  highlight("@number", { fg = colors.scarlet })
  highlight("@boolean", { fg = colors.bright_blood })
  highlight("@float", { fg = colors.scarlet })
  highlight("@constant", { fg = colors.crimson })
  highlight("@constant.builtin", { fg = colors.crimson })
  highlight("@type", { fg = colors.gold, gui = "bold" })
  highlight("@type.builtin", { fg = colors.dark_gold })
  highlight("@attribute", { fg = colors.pale_gold })
  highlight("@property", { fg = colors.gold })
  highlight("@constructor", { fg = colors.dark_gold })
  highlight("@operator", { fg = colors.scarlet, gui = "bold" })
  highlight("@punctuation.bracket", { fg = colors.fg_alt })
  highlight("@punctuation.delimiter", { fg = colors.fg_alt })
  highlight("@tag", { fg = colors.crimson })
  highlight("@tag.attribute", { fg = colors.gold })
  highlight("@tag.delimiter", { fg = colors.fg_alt })
  
  -- LSP
  highlight("LspReferenceText", { bg = colors.bg_highlight })
  highlight("LspReferenceRead", { bg = colors.bg_highlight })
  highlight("LspReferenceWrite", { bg = colors.bg_highlight })
  
  -- Telescope
  highlight("TelescopeBorder", { fg = colors.gold, bg = colors.bg })
  highlight("TelescopePromptBorder", { fg = colors.crimson, bg = colors.bg })
  highlight("TelescopeResultsBorder", { fg = colors.gold, bg = colors.bg })
  highlight("TelescopePreviewBorder", { fg = colors.dark_gold, bg = colors.bg })
  highlight("TelescopeSelection", { fg = colors.moon_white, bg = colors.blood_red })
  highlight("TelescopeMatching", { fg = colors.scarlet, gui = "bold" })
end

-- Initialize the theme
M.setup()

return M
