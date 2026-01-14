# BWO-MacAutoSetup

A macOS development environment bootstrap system that automates the installation and configuration of a modern, keyboard-driven development workflow. This project sets up a tiling window manager (Aerospace), powerful shell environment (Zsh with Oh-My-Zsh), and essential development tools through automated scripts.

## 🙏 Acknowledgments

This project is based on [NLaundry/MacAutoSetup](https://github.com/NLaundry/MacAutoSetup). Special thanks to **@NLaundry** for creating the original foundation that made this customized setup possible. The core bootstrap architecture and dotfile management approach are adapted from his excellent work.

## ✨ Features

- **Two-Tier Bootstrap**: Automated setup for fresh macOS installs (no Git required) and existing systems
- **Tiling Window Manager**: Aerospace with keyboard-driven i3-inspired keybindings
- **Modern Shell**: Oh-My-Zsh with Powerlevel10k theme for a beautiful, informative prompt
- **Terminal Excellence**: Ghostty and Warp terminals with optimized configurations
- **Development Tools**: Comprehensive CLI utilities, programming languages, and GUI applications
- **Dotfile Management**: GNU Stow for clean, symlink-based configuration management
- **Editor Setup**: LazyVim (Neovim) for full IDE experience, plus minimal Vim for learning
- **AI Enhancement**: SuperClaude Framework for enhanced Claude Code integration
- **Package Manager**: Homebrew with declarative `Brewfile` for reproducible installs

## 🚀 Quick Start

### Option 1: Fresh macOS Install (No Git)
```bash
bash <(curl -fsSL https://raw.githubusercontent.com/BenWaraiotoko/BWO-MacAutoSetup/main/bootstrap-nogit.sh)
```

This bootstrap script will:
1. Install Xcode Command Line Tools (includes Git)
2. Install Homebrew
3. Clone this repository to `~/Projects/MacAutoSetup`
4. Run the main [`bootstrap.sh`](bootstrap.sh) script

### Option 2: Existing System with Git
```bash
git clone https://github.com/BenWaraiotoko/BWO-MacAutoSetup.git ~/Projects/BWO-MacAutoSetup
cd ~/Projects/BWO-MacAutoSetup
./bootstrap.sh
```

## 📁 Project Structure

```
MacAutoSetup/
├── bootstrap-nogit.sh          # Fresh macOS bootstrap (installs Git first)
├── bootstrap.sh                # Main setup orchestration
├── Brewfile                    # All dependencies (CLI tools, apps, fonts)
├── dotfiles/                   # GNU Stow packages
│   ├── zsh/                    # Oh-My-Zsh config with Powerlevel10k
│   ├── nvim/                   # LazyVim configuration
│   ├── vim/                    # Minimal Vim config for learning
│   ├── ghostty/                # Ghostty terminal configuration
│   ├── aerospace/              # Tiling window manager config
│   ├── warp/                   # Warp terminal themes
│   └── superclaude/            # SuperClaude Framework config
└── docs/
    ├── VIM_LEARNING_GUIDE.md   # Comprehensive Vim/Neovim guide
    └── ZSH_PLUGINS.md          # Complete plugin reference
```

## 🛠 What Gets Installed

### CLI Tools & Languages
- **Core Utilities**: git, fzf, ripgrep, bat, htop, lazygit, lazysql, tmux, stow, neovim
- **Languages**: python, pipx, node, nvm
- **Cloud & DevOps**: awscli, kubectl, tailscale
- **GNU Tools**: coreutils, gnu-sed, findutils, gawk (preferred over BSD)
- **Development**: gh (GitHub CLI), delta (git diff), jq, yq, mas (App Store CLI)

### GUI Applications
- **Terminals**: Ghostty, Warp
- **Development**: Visual Studio Code, Claude Code, Sublime Text, Postman, Ollama
- **Productivity**: Raycast, Notion, Spotify
- **Utilities**: Aerospace, Shottr, ForkLift, NetNewsWire, WiFiman
- **Security**: Proton VPN, Proton Drive, Proton Mail, Proton Pass
- **Container Runtime**: OrbStack (lightweight Docker alternative)
- **Communication**: Discord

### Mac App Store Apps (via `mas`)
- Perplexity: Ask Anything
- Supernote Partner
- Calendars – agenda et rappels
- Toggl Track: Hours & Time Log

> **Note**: You must be signed into the Mac App Store for `mas` to install these apps.

### Fonts
- JetBrains Mono Nerd Font (with icons for terminal and editors)

## 🔧 Key Components

### Shell Environment (Oh-My-Zsh)
- **Framework**: Oh-My-Zsh for plugin management and community themes
- **Theme**: Powerlevel10k for a fast, informative, and customizable prompt
- **Configuration**: Managed via GNU Stow in [`dotfiles/zsh/`](dotfiles/zsh/)

See [`docs/ZSH_PLUGINS.md`](docs/ZSH_PLUGINS.md) for plugin documentation.

### Window Management (Aerospace)
i3-inspired tiling window manager with keyboard-first navigation:
- `Alt + j/k/l/;` - Navigate between windows
- `Alt + Shift + j/k/l/;` - Move windows
- `Alt + 1-6` - Switch workspaces
- `Alt + t` - Launch Ghostty terminal
- `Alt + r` - Enter resize mode

Configuration: [`dotfiles/aerospace/.config/`](dotfiles/aerospace/.config/)

### Editor Setup
**LazyVim (Neovim)**: Full-featured IDE with LSP, fuzzy finding, Git integration
- Location: [`dotfiles/nvim/.config/nvim/`](dotfiles/nvim/.config/nvim/)
- First launch automatically installs plugins
- Press `Space` to open which-key command palette

**Minimal Vim**: Zero-plugin configuration perfect for learning fundamentals
- Location: [`dotfiles/vim/.vimrc`](dotfiles/vim/.vimrc)
- Ideal for working through `vimtutor`

See [`docs/VIM_LEARNING_GUIDE.md`](docs/VIM_LEARNING_GUIDE.md) for learning path.

### SuperClaude Framework
AI-enhanced development with Claude Code integration:
- **30+ Slash Commands**: `/sc:analyze`, `/sc:implement`, `/sc:improve`, and more
- **16 Specialized Personas**: Domain-specific AI expertise
- **MCP Integration**: Enhanced capabilities with external servers
- **Configuration**: [`dotfiles/superclaude/.claude/`](dotfiles/superclaude/.claude/)
- **CLI**: `superclaude --help` for available commands

## 📚 Usage Examples

### Managing Dotfiles with GNU Stow
```bash
# Link specific packages to $HOME
stow --target=$HOME --dir=./dotfiles zsh nvim aerospace

# Remove symlinks (uninstall)
stow --target=$HOME --dir=./dotfiles --delete zsh

# Re-link after changes (update)
stow --target=$HOME --dir=./dotfiles --restow zsh
```

### Shell Customization
```bash
# Reload shell configuration
source ~/.zshrc

# Customize Powerlevel10k prompt
p10k configure

# Add custom aliases
echo 'alias myalias="my command"' >> ~/.oh-my-zsh/custom/aliases.zsh
source ~/.zshrc
```

### Managing Dependencies
```bash
# Install/update from Brewfile
brew bundle --file=./Brewfile

# Check what's installed vs Brewfile
brew bundle check --file=./Brewfile

# Clean up packages not in Brewfile
brew bundle cleanup --file=./Brewfile

# Search Mac App Store
mas search "App Name"
```

## 🎓 Learning Path

### Vim/Neovim Progression
1. **Stage 1**: Start with basic vim
   - Run `vimtutor` to learn fundamental motions
   - Use `vim` (not `nvim`) to practice without plugins
   - Focus on: hjkl, i/a/o, d/y/p, :w/:q

2. **Stage 2**: Graduate to LazyVim
   - Launch `nvim` (first launch installs plugins automatically)
   - Press `Space` and wait for which-key to show available commands
   - Explore LSP features, fuzzy finding, Git integration

See full guide: [`docs/VIM_LEARNING_GUIDE.md`](docs/VIM_LEARNING_GUIDE.md)

### Shell Enhancement
1. Start with standard Oh-My-Zsh installation
2. Explore installed plugins gradually
3. Customize prompt with `p10k configure`
4. Add personal aliases and functions

## 🔍 Troubleshooting

### Bootstrap Issues

**Homebrew installation fails**:
```bash
# Uninstall and retry
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
# Re-run bootstrap
./bootstrap.sh
```

**Stow conflicts with existing files**:
```bash
# Check for conflicts (dry run)
stow -n --target=$HOME --dir=./dotfiles zsh

# Backup existing files
mv ~/.zshrc ~/.zshrc.backup

# Retry stow
stow --target=$HOME --dir=./dotfiles zsh
```

**Shell not updating**:
```bash
# Verify default shell
echo $SHELL

# Change to zsh if needed
chsh -s $(which zsh)

# Restart terminal
```

### Validation Commands
```bash
# Check Brewfile status
brew bundle check --file=./Brewfile

# Verify dotfiles are linked
ls -la ~ | grep "\->"

# Test shell loads correctly
zsh -c 'echo $PATH'
```

## 🏛 Architecture Philosophy

### Design Principles
- **Community Defaults**: Use battle-tested configurations (LazyVim, Oh-My-Zsh) over custom
- **GNU Tools**: Prefer GNU versions over BSD for consistency with Linux
- **Modular Design**: Stow packages allow selective installation
- **Declarative**: Brewfile as single source of truth for dependencies
- **Minimal Maintenance**: Rely on well-maintained upstream projects

### Configuration Strategy
- **Separation**: Keep dotfiles separate from bootstrap logic
- **Version Control**: Track configurations, not build artifacts
- **Upgradability**: Easy to pull upstream updates
- **Portability**: Works on any macOS system

## 🚦 Post-Installation Steps

After running the bootstrap script:

1. **Sign into Mac App Store** - Required for `mas` to install apps
2. **Restart terminal** - Or run `source ~/.zshrc`
3. **Configure Powerlevel10k** - Run `p10k configure` to customize prompt
4. **Launch Neovim** - Run `nvim` to trigger plugin installation
5. **Restart Claude Code** - To access SuperClaude commands (type `/sc:`)
6. **Start with vimtutor** - If new to Vim: `vimtutor` in terminal

## 🤝 Contributing

This is a personal configuration tailored to my workflow, but you're encouraged to fork this repository and adapt it to your own needs—just as I did with [NLaundry/MacAutoSetup](https://github.com/NLaundry/MacAutoSetup).

### Fork & Customize
1. Fork this repository
2. Modify the [`Brewfile`](Brewfile) with your preferred applications
3. Adjust dotfile configurations in [`dotfiles/`](dotfiles/)
4. Update [`bootstrap.sh`](bootstrap.sh) if needed
5. Make it your own!

### Contributing Back
If you have improvements that could benefit others:
1. Create a feature branch
2. Test changes on a fresh macOS install (or VM)
3. Submit a pull request with clear description

Please maintain compatibility with macOS and respect the dotfile structure.

## 📄 License

This project is released under the MIT License, following the open-source spirit of sharing and customization. Feel free to use, modify, and distribute as you see fit.

## 🔗 Related Projects

- **Original Project**: [NLaundry/MacAutoSetup](https://github.com/NLaundry/MacAutoSetup) - The foundation this project builds upon
- **LazyVim**: [LazyVim/LazyVim](https://github.com/LazyVim/LazyVim) - Neovim configuration
- **Oh-My-Zsh**: [ohmyzsh/ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) - Zsh framework
- **Powerlevel10k**: [romkatv/powerlevel10k](https://github.com/romkatv/powerlevel10k) - Zsh theme
- **Aerospace**: [nikitabobko/AeroSpace](https://github.com/nikitabobko/AeroSpace) - Tiling window manager
- **SuperClaude**: AI enhancement framework for Claude Code
- **GNU Stow**: [GNU Stow](https://www.gnu.org/software/stow/) - Symlink farm manager

---

**Built for macOS** | **Keyboard-Driven Workflow** | **Terminal-First Development**
# BWO-MacAutoSetup
