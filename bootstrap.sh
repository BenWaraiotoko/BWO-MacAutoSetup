#!/usr/bin/env bash

set -euo pipefail

# Install Xcode Command Line Tools if not already installed
if ! xcode-select -p &>/dev/null; then
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
fi

# Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install applications via Brewfile
if [[ -f ./Brewfile ]]; then
  echo "Installing applications from Brewfile..."
  brew bundle --file=./Brewfile
else
  echo "Warning: Brewfile not found in current directory"
fi

# Install Oh My Zsh if not already installed
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  echo "Removing default .zshrc so stow can manage it..."
  rm -f ~/.zshrc
fi

# Install Powerlevel10k theme for Oh My Zsh
if [[ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]]; then
  echo "Installing Powerlevel10k theme..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

# Install SuperClaude Framework
if ! command -v superclaude &>/dev/null; then
  echo "Installing SuperClaude Framework..."
  pipx install superclaude
  echo "Running SuperClaude installation..."
  superclaude install
  echo "Running SuperClaude doctor to verify installation..."
  superclaude doctor
else
  echo "SuperClaude already installed, checking for updates..."
  pipx upgrade superclaude || true
fi

# Re-source Homebrew env just in case
eval "$(/opt/homebrew/bin/brew shellenv)"

# Use GNU Stow to symlink dotfiles
echo "Setting up dotfiles with GNU Stow..."
stow --target="$HOME" --dir=./dotfiles zsh vim nvim aerospace ghostty warp superclaude

# Note about Neovim setup
echo ""
echo "✅ Setup complete!"
echo ""
echo "📝 Next steps:"
echo "1. Sign into Mac App Store if you want mas apps to install"
echo "2. Restart your terminal or run: source ~/.zshrc"
echo "3. Restart Claude Code to access SuperClaude commands (type '/sc:' to see available)"
echo "4. Powerlevel10k: Run 'p10k configure' if you want to customize your prompt"
echo "5. If you're new to Vim, start with basic vim first: vimtutor"
echo "6. When ready for LazyVim: launch 'nvim' (first launch installs plugins)"
echo ""
echo "🎓 Vim Learning Path:"
echo "   Stage 1: Use 'vim' for basic editing + run 'vimtutor'"
echo "   Stage 2: Use 'nvim' for full IDE experience (after learning basics)"
echo ""
echo "⚡ SuperClaude Framework:"
echo "   - 30 slash commands available (type '/sc:' in Claude Code)"
echo "   - Run 'superclaude --help' for CLI commands"
echo "   - Optional MCP servers: 'superclaude mcp --list'"
echo ""

# Optionally restart the shell
exec zsh -l
