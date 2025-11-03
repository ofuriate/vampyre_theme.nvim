-- Vampyre Theme for Neovim
-- A dark, gothic vampire-themed colorscheme

local M = {}

-- 🧛 SCARY VAMPIRE THEME - Pure darkness with blood accents
local colors = {
  -- Background - Pure void darkness
  bg = "#000000",           -- Pure black abyss
  bg_alt = "#0a0000",       -- Barely visible dark red
  bg_highlight = "#1a0000", -- Subtle blood highlight
  
  -- Blood red - The essence of vampires
  blood_red = "#cc0000",    -- Fresh blood red (main accent)
  blood_dark = "#8b0000",   -- Dried blood
  blood_bright = "#ff0000", -- Arterial spray
  blood_drip = "#b22222",   -- Dripping blood
  
  -- Bone white - Vampire fangs and moonlight
  bone = "#e8e8d0",         -- Aged bone white
  fang = "#ffffff",         -- Pure fang white
  moon = "#d4d4c8",         -- Moonlit pale
  
  -- Shadow purples - Gothic darkness
  shadow = "#1c0a1e",       -- Deep shadow purple
  twilight = "#4a1850",     -- Twilight purple
  midnight = "#2d1838",     -- Midnight hour
  
  -- Corpse grays - Undead flesh tones
  corpse = "#6b6b6b",       -- Corpse gray
  tomb = "#3a3a3a",         -- Tomb stone
  decay = "#4d4d4d",        -- Decaying flesh
  
  -- Warning/Error - Blood orange
  warning = "#ff6600",      -- Burning torch
  danger = "#ff3300",       -- Immediate threat
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
  -- Editor highlights - Pure darkness
  highlight("Normal", { fg = colors.bone, bg = colors.bg })
  highlight("NormalFloat", { fg = colors.bone, bg = colors.bg_alt })
  highlight("NormalNC", { fg = colors.moon, bg = colors.bg })
  highlight("LineNr", { fg = colors.tomb, bg = colors.bg })
  highlight("CursorLineNr", { fg = colors.blood_red, bg = colors.bg, gui = "bold" })
  highlight("CursorLine", { bg = colors.bg_highlight })
  highlight("ColorColumn", { bg = colors.shadow })
  highlight("SignColumn", { fg = colors.corpse, bg = colors.bg })
  highlight("VertSplit", { fg = colors.tomb, bg = colors.bg })
  highlight("Visual", { fg = colors.fang, bg = colors.blood_red, gui = "bold" })
  highlight("VisualNOS", { fg = colors.fang, bg = colors.blood_dark })
  highlight("Search", { fg = colors.bg, bg = colors.blood_red, gui = "bold" })
  highlight("IncSearch", { fg = colors.bg, bg = colors.blood_bright, gui = "bold" })
  highlight("CurSearch", { fg = colors.bg, bg = colors.danger, gui = "bold" })
  highlight("MatchParen", { fg = colors.fang, bg = colors.twilight, gui = "bold,underline" })
  highlight("Pmenu", { fg = colors.bone, bg = colors.bg_alt })
  highlight("PmenuSel", { fg = colors.fang, bg = colors.blood_red, gui = "bold" })
  highlight("PmenuSbar", { bg = colors.shadow })
  highlight("PmenuThumb", { bg = colors.twilight })
  highlight("StatusLine", { fg = colors.blood_red, bg = colors.bg_alt, gui = "bold" })
  highlight("StatusLineNC", { fg = colors.corpse, bg = colors.bg_alt })
  highlight("TabLine", { fg = colors.corpse, bg = colors.bg_alt })
  highlight("TabLineFill", { bg = colors.bg })
  highlight("TabLineSel", { fg = colors.fang, bg = colors.blood_red, gui = "bold" })
  highlight("Folded", { fg = colors.twilight, bg = colors.bg_highlight })
  highlight("FoldColumn", { fg = colors.midnight, bg = colors.bg })
  
  -- Syntax highlighting - Scary vampire aesthetic
  highlight("Comment", { fg = colors.corpse, gui = "italic" })
  highlight("Constant", { fg = colors.blood_drip })
  highlight("String", { fg = colors.twilight })
  highlight("Character", { fg = colors.midnight })
  highlight("Number", { fg = colors.blood_red, gui = "bold" })
  highlight("Boolean", { fg = colors.blood_bright, gui = "bold" })
  highlight("Float", { fg = colors.blood_red })
  highlight("Identifier", { fg = colors.bone })
  highlight("Function", { fg = colors.blood_red, gui = "bold" })
  highlight("Statement", { fg = colors.blood_bright, gui = "bold" })
  highlight("Conditional", { fg = colors.blood_red, gui = "bold" })
  highlight("Repeat", { fg = colors.blood_red, gui = "bold" })
  highlight("Label", { fg = colors.blood_drip })
  highlight("Operator", { fg = colors.blood_red })
  highlight("Keyword", { fg = colors.blood_bright, gui = "bold" })
  highlight("Exception", { fg = colors.danger, gui = "bold" })
  highlight("PreProc", { fg = colors.twilight })
  highlight("Include", { fg = colors.midnight, gui = "bold" })
  highlight("Define", { fg = colors.twilight })
  highlight("Macro", { fg = colors.midnight })
  highlight("PreCondit", { fg = colors.twilight })
  highlight("Type", { fg = colors.moon, gui = "bold" })
  highlight("StorageClass", { fg = colors.blood_dark })
  highlight("Structure", { fg = colors.moon })
  highlight("Typedef", { fg = colors.moon })
  highlight("Special", { fg = colors.blood_drip })
  highlight("SpecialChar", { fg = colors.blood_bright })
  highlight("Tag", { fg = colors.blood_red })
  highlight("Delimiter", { fg = colors.decay })
  highlight("SpecialComment", { fg = colors.twilight, gui = "italic,bold" })
  highlight("Debug", { fg = colors.warning })
  highlight("Underlined", { fg = colors.blood_red, gui = "underline" })
  highlight("Ignore", { fg = colors.tomb })
  highlight("Error", { fg = colors.fang, bg = colors.danger, gui = "bold" })
  highlight("Todo", { fg = colors.bg, bg = colors.blood_red, gui = "bold" })
  
  -- Diagnostics - Blood warnings
  highlight("DiagnosticError", { fg = colors.danger, gui = "bold" })
  highlight("DiagnosticWarn", { fg = colors.warning })
  highlight("DiagnosticInfo", { fg = colors.twilight })
  highlight("DiagnosticHint", { fg = colors.midnight })
  highlight("DiagnosticUnderlineError", { sp = colors.danger, gui = "undercurl" })
  highlight("DiagnosticUnderlineWarn", { sp = colors.warning, gui = "undercurl" })
  highlight("DiagnosticUnderlineInfo", { sp = colors.twilight, gui = "undercurl" })
  highlight("DiagnosticUnderlineHint", { sp = colors.midnight, gui = "undercurl" })
  
  -- Git signs - Blood trail
  highlight("DiffAdd", { fg = colors.blood_red, bg = colors.bg })
  highlight("DiffChange", { fg = colors.twilight, bg = colors.bg })
  highlight("DiffDelete", { fg = colors.danger, bg = colors.bg })
  highlight("DiffText", { fg = colors.blood_bright, bg = colors.bg_highlight })
  
  -- Treesitter - Gothic darkness
  highlight("@variable", { fg = colors.bone })
  highlight("@variable.builtin", { fg = colors.blood_bright, gui = "bold" })
  highlight("@function", { fg = colors.blood_red, gui = "bold" })
  highlight("@function.builtin", { fg = colors.blood_drip, gui = "bold" })
  highlight("@function.macro", { fg = colors.midnight })
  highlight("@parameter", { fg = colors.moon })
  highlight("@keyword", { fg = colors.blood_bright, gui = "bold" })
  highlight("@keyword.function", { fg = colors.blood_red, gui = "bold" })
  highlight("@keyword.operator", { fg = colors.blood_red })
  highlight("@keyword.return", { fg = colors.blood_bright, gui = "bold" })
  highlight("@conditional", { fg = colors.blood_red, gui = "bold" })
  highlight("@repeat", { fg = colors.blood_red, gui = "bold" })
  highlight("@string", { fg = colors.twilight })
  highlight("@string.escape", { fg = colors.midnight, gui = "bold" })
  highlight("@character", { fg = colors.midnight })
  highlight("@number", { fg = colors.blood_red, gui = "bold" })
  highlight("@boolean", { fg = colors.blood_bright, gui = "bold" })
  highlight("@float", { fg = colors.blood_red })
  highlight("@constant", { fg = colors.blood_drip })
  highlight("@constant.builtin", { fg = colors.blood_drip, gui = "bold" })
  highlight("@type", { fg = colors.moon, gui = "bold" })
  highlight("@type.builtin", { fg = colors.moon })
  highlight("@attribute", { fg = colors.midnight })
  highlight("@property", { fg = colors.bone })
  highlight("@constructor", { fg = colors.blood_red, gui = "bold" })
  highlight("@operator", { fg = colors.blood_red })
  highlight("@punctuation.bracket", { fg = colors.decay })
  highlight("@punctuation.delimiter", { fg = colors.decay })
  highlight("@tag", { fg = colors.blood_red, gui = "bold" })
  highlight("@tag.attribute", { fg = colors.twilight })
  highlight("@tag.delimiter", { fg = colors.decay })
  
  -- LSP
  highlight("LspReferenceText", { bg = colors.bg_highlight })
  highlight("LspReferenceRead", { bg = colors.bg_highlight })
  highlight("LspReferenceWrite", { bg = colors.bg_highlight })
  
  -- Telescope - Blood moon search
  highlight("TelescopeBorder", { fg = colors.blood_red, bg = colors.bg })
  highlight("TelescopePromptBorder", { fg = colors.blood_bright, bg = colors.bg })
  highlight("TelescopeResultsBorder", { fg = colors.blood_red, bg = colors.bg })
  highlight("TelescopePreviewBorder", { fg = colors.twilight, bg = colors.bg })
  highlight("TelescopeSelection", { fg = colors.fang, bg = colors.blood_red, gui = "bold" })
  highlight("TelescopeMatching", { fg = colors.blood_bright, gui = "bold" })
end

-- Initialize the theme
M.setup()

return M
