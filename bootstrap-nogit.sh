#!/usr/bin/env bash

# Bootstrap script for fresh Macs without the repo cloned yet
# Run with: curl -fsSL https://raw.githubusercontent.com/BenWaraiotoko/BWO-MacAutoSetup/main/bootstrap-nogit.sh | bash

set -eo pipefail

REPO_URL="https://github.com/BenWaraiotoko/BWO-MacAutoSetup.git"
CLONE_DIR="$HOME/Projects/BWO-MacAutoSetup"

echo "⏳ Bootstrapping BWO-MacAutoSetup..."

# Step 1: Install Xcode Command Line Tools (includes Git)
if ! xcode-select -p &> /dev/null; then
  echo "🔧 Installing Xcode Command Line Tools (required for Git)..."
  xcode-select --install

  echo "⏳ Waiting for Xcode Command Line Tools installation..."
  echo "   (Click 'Install' in the popup if you see one)"
  until xcode-select -p &> /dev/null; do
    sleep 5
  done
  echo "✅ Xcode Command Line Tools installed"
else
  echo "✅ Xcode Command Line Tools already installed"
fi

# Step 2: Install Homebrew
if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  echo "✅ Homebrew installed"
else
  echo "✅ Homebrew already installed"
fi

# Always ensure Homebrew is in PATH for this session
eval "$(/opt/homebrew/bin/brew shellenv)"

# Step 3: Clone the repo if it hasn't been cloned yet
if [ ! -d "$CLONE_DIR" ]; then
  echo "📥 Cloning MacAutoSetup into $CLONE_DIR..."
  mkdir -p "$(dirname "$CLONE_DIR")"
  git clone "$REPO_URL" "$CLONE_DIR"
  echo "✅ Repository cloned"
else
  echo "📁 Directory $CLONE_DIR already exists"
  echo "   Pulling latest changes..."
  if ! (cd "$CLONE_DIR" && git pull origin main); then
    echo "⚠️  git pull failed — continuing with existing local copy"
  fi
fi

# Step 4: Run main bootstrap script
cd "$CLONE_DIR"
echo ""
echo "🚀 Running main bootstrap script..."
echo "   (You can re-run this safely - already installed items will be skipped)"
echo ""
exec ./bootstrap.sh
