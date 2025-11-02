# 🧛 Vampyre Theme

A dark, gothic vampire-themed colorscheme for Neovim that brings the mystique of the night to your editor.

## 🌙 Features

- **Gothic Color Palette**: Deep blacks, blood reds, royal purples, and eerie greens
- **Full Treesitter Support**: Enhanced syntax highlighting for modern code
- **LSP Integration**: Proper diagnostic colors and LSP highlights
- **Plugin Support**: Works great with Telescope, Git signs, and more
- **Carefully Crafted**: Each color chosen to evoke the vampire aesthetic

## 🎨 Color Palette

- **Blood Red** (`#c91f37`) - Keywords and statements
- **Royal Purple** (`#6a0dad`) - Functions and includes
- **Eerie Green** (`#39ff14`) - Strings
- **Gothic Gold** (`#d4af37`) - Warnings and preprocessor
- **Moonlight White** (`#f0f0ff`) - Selected text
- **Deep Black** (`#0a0a0f`) - Background with purple tint

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'ofuriate/vampyre_theme.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme vampyre]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  'ofuriate/vampyre_theme.nvim',
  config = function()
    vim.cmd([[colorscheme vampyre]])
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'ofuriate/vampyre_theme.nvim'
```

Then in your `init.vim` or `init.lua`:

```vim
colorscheme vampyre
```

### Manual Installation

Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/ofuriate/vampyre_theme.nvim ~/.config/nvim/pack/themes/start/vampyre_theme.nvim
```

## 🚀 Usage

Simply set the colorscheme in your Neovim config:

**Lua:**
```lua
vim.cmd([[colorscheme vampyre]])
```

**Vimscript:**
```vim
colorscheme vampyre
```

## 🖼️ Screenshots

> **Note**: For the best experience, pair this theme with a gothic vampire-themed wallpaper or background image of a scary vampire! You can set terminal backgrounds in terminals like Kitty, iTerm2, or WezTerm.

## 🎭 Recommended Setup

For the full vampire aesthetic:
1. Use a terminal that supports background images (Kitty, iTerm2, WezTerm, etc.)
2. Set a gothic vampire castle or scary vampire image as your terminal background
3. Adjust background opacity in your terminal config for the image to show through
4. Use a gothic font like "Fira Code" or "JetBrains Mono"

### Example Kitty Configuration

```conf
# In kitty.conf
background_opacity 0.85
background_image ~/path/to/vampire-background.jpg
background_image_layout scaled
background_tint 0.85
```

### Example WezTerm Configuration

```lua
-- In wezterm.lua
config.window_background_opacity = 0.85
config.window_background_image = '/path/to/vampire-background.jpg'
```

## 🦇 Highlight Groups

The theme includes comprehensive support for:
- Standard Vim syntax groups
- Treesitter syntax groups
- LSP diagnostics
- Git diff colors
- Telescope UI
- Popular plugin integrations

## 📝 License

MIT License - Feel free to use and modify!

## 🌟 Credits

Created with dark magic and a passion for the gothic aesthetic.

---

*"In the dead of night, when the moon casts its pale light, your code shall shine with the beauty of the undead."* 🧛‍♂️
