#!/usr/bin/env bash

# Exit on error, but handle errors gracefully where needed
set -eo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

log_success() { echo -e "${GREEN}✅ $1${NC}"; }
log_warning() { echo -e "${YELLOW}⚠️  $1${NC}"; }
log_error() { echo -e "${RED}❌ $1${NC}"; }
log_info() { echo -e "ℹ️  $1"; }

# Install Xcode Command Line Tools if not already installed
if ! xcode-select -p &>/dev/null; then
  echo "Installing Xcode Command Line Tools..."
  xcode-select --install
  echo "Waiting for Xcode Command Line Tools installation..."
  until xcode-select -p &>/dev/null; do
    sleep 5
  done
  log_success "Xcode Command Line Tools installed"
else
  log_success "Xcode Command Line Tools already installed"
fi

# Install Homebrew if not already installed
if ! command -v brew &>/dev/null; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
  log_success "Homebrew installed"
fi

# Always ensure Homebrew is in PATH for this session
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Homebrew before installing packages
echo "Updating Homebrew..."
brew update

# Install applications via Brewfile
if [[ -f ./Brewfile ]]; then
  echo "Installing applications from Brewfile..."
  echo "(Already installed packages will be skipped)"

  # Use --no-lock to avoid lockfile issues, continue on errors
  if ! brew bundle --file=./Brewfile --no-lock; then
    log_warning "Some Brewfile packages failed to install"
    log_info "This is often due to: Mac App Store sign-in required, or packages already installed differently"
    log_info "You can re-run this script safely - it will skip already installed packages"
  else
    log_success "Brewfile packages installed"
  fi
else
  log_error "Brewfile not found in current directory"
  exit 1
fi

# Install Oh My Zsh if not already installed
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  echo "Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  echo "Removing default .zshrc so stow can manage it..."
  rm -f ~/.zshrc
  log_success "Oh My Zsh installed"
else
  log_success "Oh My Zsh already installed"
fi

# Install Powerlevel10k theme for Oh My Zsh
if [[ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k" ]]; then
  echo "Installing Powerlevel10k theme..."
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
  log_success "Powerlevel10k installed"
else
  log_success "Powerlevel10k already installed"
fi

# Ensure pipx is available and in PATH
if command -v pipx &>/dev/null; then
  # Ensure pipx binaries are in PATH
  eval "$(pipx ensurepath 2>/dev/null)" || true
  export PATH="$HOME/.local/bin:$PATH"
fi

# Install SuperClaude Framework
if command -v superclaude &>/dev/null; then
  log_success "SuperClaude already installed, checking for updates..."
  pipx upgrade superclaude 2>/dev/null || true
elif command -v pipx &>/dev/null; then
  echo "Installing SuperClaude Framework..."
  if pipx install superclaude; then
    # Add pipx bin to PATH for this session
    export PATH="$HOME/.local/bin:$PATH"

    if command -v superclaude &>/dev/null; then
      echo "Running SuperClaude installation..."
      superclaude install
      echo "Running SuperClaude doctor to verify installation..."
      superclaude doctor
      log_success "SuperClaude installed"
    else
      log_warning "SuperClaude installed but not in PATH yet"
      log_info "Run 'pipx ensurepath' and restart your terminal, then run 'superclaude install'"
    fi
  else
    log_warning "Failed to install SuperClaude"
  fi
else
  log_warning "pipx not available - skipping SuperClaude installation"
  log_info "After brew bundle completes, run: pipx install superclaude && superclaude install"
fi

# Use GNU Stow to symlink dotfiles
echo "Setting up dotfiles with GNU Stow..."
if command -v stow &>/dev/null; then
  stow --target="$HOME" --dir=./dotfiles zsh vim nvim aerospace ghostty warp superclaude
  log_success "Dotfiles linked with stow"
else
  log_warning "stow not found - skipping dotfiles setup"
  log_info "Run this script again after brew bundle completes"
fi

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
