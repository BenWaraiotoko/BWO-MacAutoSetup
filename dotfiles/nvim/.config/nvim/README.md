# LazyVim Configuration for Beginners

This is a beginner-friendly LazyVim setup that provides a fully-featured Neovim IDE experience.

## 🎓 Learning Path

### Stage 1: Start with Basic Vim (Recommended!)
If you're brand new to Vim, start with the **minimal Vim config** first:
```bash
# Use basic Vim for learning fundamentals
vim file.txt
```

Work through `vimtutor` to learn the basics:
```bash
vimtutor
```

**Master these basics first:**
- Movement: `h`, `j`, `k`, `l`
- Modes: Normal, Insert, Visual
- Basic commands: `i`, `a`, `o`, `O`, `x`, `dd`, `yy`, `p`
- Search: `/`, `n`, `N`
- Save/quit: `:w`, `:q`, `:wq`, `:q!`

### Stage 2: Move to LazyVim
Once comfortable with basic Vim motions (usually after 1-2 weeks), switch to Neovim with LazyVim:
```bash
nvim file.txt
```

## 🚀 First Launch

On first launch, LazyVim will:
1. Install lazy.nvim plugin manager
2. Download and install all plugins (takes 1-2 minutes)
3. Display a welcome screen

**Don't panic!** The initial setup is automatic.

## ⌨️ Essential Keybindings

LazyVim uses `<Space>` as the leader key. Press `<Space>` and wait to see available commands!

### File Navigation
- `<Space>ff` - Find files
- `<Space>fg` - Find text (grep)
- `<Space>fb` - Find buffers
- `<Space>fr` - Recent files
- `<Space>e` - Toggle file explorer

### Window Management
- `<Ctrl-h>` - Move to left window
- `<Ctrl-j>` - Move to down window
- `<Ctrl-k>` - Move to up window
- `<Ctrl-l>` - Move to right window
- `<Space>w` - Window commands

### Code
- `<Space>ca` - Code actions
- `K` - Hover documentation
- `gd` - Go to definition
- `gr` - Go to references
- `<Space>rn` - Rename symbol

### Git
- `<Space>gg` - Open LazyGit
- `<Space>gb` - Git blame line
- `]h` - Next git hunk
- `[h` - Previous git hunk

### Terminal
- `<Ctrl-/>` - Toggle terminal
- `<Space>ft` - Terminal (root dir)

### Help
- `<Space>?` - Show all keybindings
- `<Space>sk` - Search keymaps
- `<Space>sh` - Search help

## 📚 LazyVim Resources

- [LazyVim Documentation](https://lazyvim.github.io/)
- [LazyVim Keymaps](https://lazyvim.github.io/keymaps)
- [LazyVim Plugins](https://lazyvim.github.io/plugins)

## 🎨 Customization

All customization goes in `lua/plugins/` directory. Create new files to add or configure plugins.

Example: `lua/plugins/my-custom-plugins.lua`

## 🆘 Getting Help

1. Press `<Space>` and wait - which-key shows available commands
2. Type `:h <topic>` for help on any topic
3. Use `:Lazy` to manage plugins
4. Use `:Mason` to manage LSP servers, linters, formatters

## 💡 Tips for Beginners

1. **Don't try to learn everything at once!** Start with file navigation and basic editing.
2. **Use which-key**: Press `<Space>` and wait to see what's available.
3. **Learn one new command per day** - consistency beats cramming.
4. **Stick with it for 2 weeks** - the initial learning curve is steep but worth it.
5. **Keep the minimal Vim config** - it's great for quick edits on servers.

## 🔄 Updating

LazyVim checks for plugin updates automatically. To update manually:
```
:Lazy update
```

## 🐛 Troubleshooting

If something breaks:
```bash
# Backup current config
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak

# Re-stow from this repo
cd ~/Projects/MacAutoSetup
stow --target=$HOME --dir=./dotfiles nvim

# Launch nvim - it will reinstall everything
nvim
```
