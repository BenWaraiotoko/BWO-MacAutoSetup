# Ghostty Terminal Configuration

Modern, fast terminal emulator configuration with Catppuccin Mocha theme.

## Features

### Shell Integration
- **Default Shell**: zsh with Oh-My-Zsh
- **Prompt**: Powerlevel10k (configured in ~/.p10k.zsh)
- **Shell Integration**: Native Ghostty + zsh integration

### Theme: Catppuccin Mocha
Consistent with Neovim and Warp terminal configurations.

**Colors**:
- Background: `#1e1e2e` (Mocha base)
- Foreground: `#cdd6f4` (Mocha text)
- Cursor: `#f5e0dc` (Rosewater)
- Selection: `#585b70` (Surface 2)

Full 256-color palette with Catppuccin Mocha colors for terminal applications.

### Font Configuration
- **Font Family**: JetBrainsMono Nerd Font
- **Size**: 16pt
- **Variants**: Regular, Bold, Italic, Bold Italic
- **Icons**: Nerd Font icons for Powerlevel10k

### Window Settings
- Padding: 8px horizontal and vertical
- Window decorations enabled
- Native macOS window controls

### Performance
- Mouse hiding while typing enabled
- Optimized rendering for fast terminal operations

### Clipboard
- Read and write access allowed
- Seamless copy/paste with system clipboard

## Theme Preview

The Catppuccin Mocha theme provides:
- **Soothing pastel colors** - Easy on the eyes for long coding sessions
- **Excellent contrast** - Clear readability
- **Consistent theming** - Matches Neovim and Warp
- **Full color support** - 256 colors for rich terminal applications

## Customization

Edit `~/.config/ghostty/config` (symlinked from this directory via Stow).

### Common Customizations

**Change Font Size**:
```
font-size = 14  # or any size you prefer
```

**Adjust Window Padding**:
```
window-padding-x = 12
window-padding-y = 12
```

**Different Font**:
```
font-family = Hack Nerd Font
# or
font-family = FiraCode Nerd Font
```

**Disable Shell Integration**:
```
shell-integration = none
```

## Ghostty Documentation

For more configuration options, see:
- [Ghostty Official Docs](https://ghostty.org/docs/config)
- [Catppuccin for Ghostty](https://github.com/catppuccin/ghostty)

## Why Ghostty?

Ghostty is a modern, GPU-accelerated terminal emulator that:
- **Fast** - Written in Zig, optimized for performance
- **Native** - True macOS integration
- **Modern** - Supports all modern terminal features
- **Configurable** - Simple configuration format

## Related Configurations

- **Shell**: `dotfiles/zsh/.zshrc` (Oh-My-Zsh configuration)
- **Prompt**: `dotfiles/zsh/.p10k.zsh` (Powerlevel10k customization)
- **Neovim**: `dotfiles/nvim/` (LazyVim with Catppuccin Mocha)
- **Warp**: `dotfiles/warp/.warp/themes/` (Alternative terminal with Catppuccin)

## Switching Between Terminals

You have both Ghostty and Warp configured with Catppuccin Mocha:
- **Ghostty** - Fast, lightweight, native macOS
- **Warp** - AI-powered, modern features, blocks-based UI

Both use the same shell configuration (Oh-My-Zsh + Powerlevel10k) and theme.
