# 🍎 BWO-MacAutoSetup

> A brand-new Mac, one command, a cup of coffee ☕… and by the time you're back, everything is installed.

![macOS](https://img.shields.io/badge/macOS-Apple%20Silicon-000000?logo=apple&logoColor=white)
![Homebrew](https://img.shields.io/badge/Homebrew-Brewfile-FBB040?logo=homebrew&logoColor=black)
![Zsh](https://img.shields.io/badge/Zsh-Oh%20My%20Zsh%20%2B%20Powerlevel10k-1A2C34?logo=zsh&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

You know that lonely feeling in front of a freshly reinstalled Mac? Empty Dock, plain gray Terminal, and that mental list of a hundred apps to reinstall one by one… forgetting half of them, obviously. (Yes, this comes from experience. There's literally a commit in this repo called "I forgot firefox 😱".)

That's exactly why I built **BWO-MacAutoSetup**. The idea is simple: you run one script, and it turns a blank macOS into a fully tuned dev machine. Homebrew, a solid batch of command-line tools, everyday apps, a Zsh that actually looks good, Neovim, Ghostty, Claude Code… and all my config neatly organized with GNU Stow.

And here's the cool part: everything is **declarative**. A single file, the [`Brewfile`](Brewfile), describes everything that gets installed. Want to add an app? One line. Want to drop one? One line. And you can rerun the script as many times as you like: anything already installed is simply skipped.

---

## 🚀 Installation

### Option 1: a brand-new Mac (no Git needed)

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/BenWaraiotoko/BWO-MacAutoSetup/main/bootstrap-nogit.sh)
```

This little script takes care of everything:
1. Installs the **Xcode Command Line Tools** (which include Git)
2. Installs **Homebrew**
3. Clones this repo into `~/Projects/BWO-MacAutoSetup`
4. Hands over to the real conductor: [`bootstrap.sh`](bootstrap.sh)

### Option 2: you already have Git

```bash
git clone https://github.com/BenWaraiotoko/BWO-MacAutoSetup.git ~/Projects/BWO-MacAutoSetup
cd ~/Projects/BWO-MacAutoSetup
./bootstrap.sh
```

### 🎬 What happens next

While you sip your coffee, `bootstrap.sh`:

1. 🍺 updates Homebrew and installs the whole `Brewfile` (`brew bundle`)
2. 🐚 installs **Oh My Zsh** and the **Powerlevel10k** theme
3. 🤖 installs the **SuperClaude** framework with `pipx`
4. 🔗 links the dotfiles with **GNU Stow**: `zsh`, `vim`, `nvim`, `ghostty`, `superclaude`, `sublime-text` and `zed`
5. 🧠 restores the **Obsidian** config into the `~/Documents/bwo-second-brain` vault (if it exists)
6. 🎨 installs the **Catppuccin** theme for Sublime Text
7. 🗂 sets up **Finder** properly: hidden files and extensions visible, path and status bars, column view

> ⚠️ **Heads up**: before linking the dotfiles, the script **deletes your existing configs** (`~/.zshrc`, `~/.vimrc`, `~/.config/nvim`, `~/.config/ghostty`, `~/.config/zed`, `~/.claude`, Sublime Text preferences). On a fresh Mac, no problem. On your daily driver, make a backup first. Just saying. 😇

---

## 🧰 What gets installed

Here's the menu. The detailed list, with a link and a description for every tool, lives in [`docs/TOOLS.md`](docs/TOOLS.md).

### Command line

| | |
|---|---|
| 🛠 **The essentials** | git, gh, git-delta, fzf, ripgrep, fd, bat, eza, tree, jq, yq, stow, wget, rsync, mas, dosfstools |
| 🖥 **In the terminal** | neovim, tmux, htop, btop, lazygit, lazysql, glow, csvlens, chafa, mole, tuios |
| 🐍 **Languages** | python, pipx, uv, poetry, node, nvm, lua |
| 🐃 **GNU** | coreutils, gnu-sed, findutils, gawk (because macOS's BSD sed, well…) |
| ☁️ **Dev & infra** | awscli, kubectl, ansible, hugo, powershell, xcodegen, shellcheck, pandoc, nmap |
| 🎬 **Video** | ffmpeg, x264, x265, xvid |
| 🤖 **AI** | llmfit, models, rtk, opencode |

### Apps

| | |
|---|---|
| ⌨️ **Terminal & editors** | Ghostty, Zed, Visual Studio Code, Sublime Text |
| 🤖 **AI** | Claude, Claude Code, Ollama, FluidVoice |
| 🧪 **Dev** | OrbStack (way lighter than Docker Desktop), Postman, Termius, Royal TSX |
| ⚡ **Productivity** | Raycast, Rectangle, Notion, Obsidian, NetNewsWire, draw.io |
| 🔐 **Security** | 1Password (and its CLI), Proton VPN |
| 🎧 **Communication & media** | Discord, Spotify, VLC, Proton Mail |
| ☁️ **Storage** | Proton Drive, FreeFileSync |
| 🔧 **Maker & hardware** | Arduino IDE, Autodesk Fusion |
| 🧹 **Utilities** | AppCleaner, balenaEtcher, Taphouse, Vorssaint |
| 🍏 **Mac App Store** | Developer, Xcode, Supernote Partner, Toggl Track, Telegram, WireGuard, Home Assistant |
| 🔤 **Fonts** | Fira Code, JetBrains Mono, JetBrains Mono Nerd Font, Meslo LG Nerd Font |

> 💡 For Mac App Store apps, you need to be signed into the App Store, otherwise `mas` can't install anything.

### And as a bonus

- **56 VS Code extensions**: themes, Jupyter, remote development, C/C++, SQL, GitHub, AI assistants…
- **Global npm packages**: a whole bunch of MCP servers (Playwright, filesystem, GitHub, Notion, Brave Search, Magic), Gemini CLI, ts-node and filefive
- **A uv tool**: mistral-vibe

---

## ✨ The little things that make life better

### 🐚 A shell done right
Oh My Zsh with the **Powerlevel10k** theme, for a prompt that's fast, pretty, and just chatty enough. The plugins match the installed tools (git, gh, docker, kubectl, aws, python, node, nvm, fzf…) and are all documented in [`docs/ZSH_PLUGINS.md`](docs/ZSH_PLUGINS.md).

Bonus: `ls` is replaced by **eza**, with icons and Git status:

```zsh
ls   # eza --icons
ll   # eza -la --icons --git
lt   # eza --tree --level=2 --icons
```

### 🎨 Catppuccin everywhere
The same **Catppuccin** theme in Ghostty, Neovim and Sublime Text (and even for Zed's icons). Your eyes will thank you after a late-night coding session.

### 📝 Neovim for the grown-ups, Vim for learning
- **LazyVim** ([`dotfiles/nvim/`](dotfiles/nvim/.config/nvim/)): a real IDE with LSP, fuzzy finding and Git integration. Plugins install themselves on first launch. Press `Space` and let which-key guide you.
- **Minimal Vim** ([`dotfiles/vim/.vimrc`](dotfiles/vim/.vimrc)): zero plugins, perfect for practicing with `vimtutor`.

New to all this? I wrote a guide to go from one to the other smoothly: [`docs/VIM_LEARNING_GUIDE.md`](docs/VIM_LEARNING_GUIDE.md).

### 🪟 Tidy windows with Rectangle
With the default shortcuts (the "Recommended" set):
- `Ctrl + Option + ←/→`: left / right half
- `Ctrl + Option + Return`: maximize
- `Ctrl + Option + C`: center

Shortcuts are set in Rectangle's preferences (they're not managed by this repo).

### 🤖 SuperClaude to supercharge Claude Code
The **SuperClaude** framework adds a ton of commands to Claude Code (`/sc:analyze`, `/sc:implement`, `/sc:improve`…), specialized personas, and MCP server integration. The config lives in [`dotfiles/superclaude/.claude/`](dotfiles/superclaude/.claude/), and `superclaude --help` tells you the rest.

---

## 📁 How it's organized

```
BWO-MacAutoSetup/
├── bootstrap-nogit.sh          # For a brand-new Mac (installs Git first)
├── bootstrap.sh                # The conductor
├── Brewfile                    # The shopping list (CLI, apps, fonts, extensions)
├── dotfiles/                   # GNU Stow packages
│   ├── zsh/                    # Oh My Zsh + Powerlevel10k
│   ├── nvim/                   # LazyVim
│   ├── vim/                    # Minimal Vim for learning
│   ├── ghostty/                # Ghostty terminal
│   ├── zed/                    # Zed editor
│   ├── sublime-text/           # Sublime Text preferences
│   ├── obsidian/               # Obsidian vault config (copied, not managed by Stow)
│   └── superclaude/            # SuperClaude config
└── docs/
    ├── TOOLS.md                # Every installed tool
    ├── VIM_LEARNING_GUIDE.md   # The Vim / Neovim guide
    └── ZSH_PLUGINS.md          # The Zsh plugins
```

---

## 🛠 Day-to-day

### Managing dotfiles with Stow

```bash
# Link packages into $HOME
stow --target=$HOME --dir=./dotfiles zsh nvim ghostty

# Remove the links (uninstall)
stow --target=$HOME --dir=./dotfiles --delete zsh

# Relink after a change
stow --target=$HOME --dir=./dotfiles --restow zsh
```

### Managing apps with the Brewfile

```bash
# Install / update from the Brewfile
brew bundle --file=./Brewfile

# Check what's missing compared to the Brewfile
brew bundle check --file=./Brewfile

# Uninstall everything that's not in the Brewfile (careful, this one bites!)
brew bundle cleanup --file=./Brewfile

# Find the ID of a Mac App Store app
mas search "App Name"
```

### Customizing the shell

```bash
source ~/.zshrc     # reload the config
p10k configure      # redo your Powerlevel10k prompt
```

---

## ✅ After installation

1. **Sign into the Mac App Store**, otherwise `mas` can't install anything
2. **Restart your terminal** (or run `source ~/.zshrc`)
3. **Customize your prompt** with `p10k configure`
4. **Launch `nvim`** once so it installs its plugins
5. **Restart Claude Code** to get the SuperClaude commands (type `/sc:`)
6. **New to Vim?** Start with `vimtutor`, you'll thank me later

---

## 🆘 Something's off?

**Homebrew installation fails**:
```bash
# Uninstall Homebrew…
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
# …then run it again
./bootstrap.sh
```

**Stow complains about existing files**:
```bash
stow -n --target=$HOME --dir=./dotfiles zsh   # dry run, to see the conflicts
mv ~/.zshrc ~/.zshrc.backup                   # move the old file out of the way
stow --target=$HOME --dir=./dotfiles zsh      # and try again
```

**The shell doesn't change**:
```bash
echo $SHELL            # check the default shell
chsh -s $(which zsh)   # switch to zsh if needed, then restart the terminal
```

**Check that everything is in place**:
```bash
brew bundle check --file=./Brewfile   # is the whole Brewfile installed?
ls -la ~ | grep "\->"                 # are the dotfiles linked?
zsh -c 'echo $PATH'                   # does the shell load correctly?
```

---

## 🧭 The philosophy

- **Proven defaults first**: LazyVim and Oh My Zsh rather than a homemade config nobody can maintain
- **GNU tools** over their BSD counterparts, to keep the same habits as on Linux
- **Modular**: each Stow package installs independently of the others
- **Declarative**: the `Brewfile` is the single source of truth
- **Low maintenance**: rely on well-maintained projects and let them do the heavy lifting

---

## 🍴 Fork it!

This is my personal setup, tailored to the way I work. But nothing stops you from forking it and bending it to your liking, exactly like I did with NLaundry's:

1. Fork the repo
2. Edit the [`Brewfile`](Brewfile) with your favorite apps
3. Tweak the configs in [`dotfiles/`](dotfiles/)
4. Adjust [`bootstrap.sh`](bootstrap.sh) if needed
5. And there you go, it's yours!

Got an improvement that could help others? Create a branch, test it on a clean macOS install (or in a VM), and send a pull request with a clear description.

---

## 🙏 Thanks

This project is based on [NLaundry/MacAutoSetup](https://github.com/NLaundry/MacAutoSetup). Huge thanks to **@NLaundry** for the foundations: the bootstrap architecture and the dotfile management come from his excellent work.

And thanks as well to the projects without which none of this would run:
- [LazyVim](https://github.com/LazyVim/LazyVim): the Neovim config
- [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh): the Zsh framework
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k): the Zsh theme
- [GNU Stow](https://www.gnu.org/software/stow/): the symlink farm manager
- SuperClaude: the framework that supercharges Claude Code

## 📄 License

MIT. Use it, tweak it, share it, that's what it's for.

---

Anyway, if you're tired of sacrificing an entire weekend every time you reinstall your Mac, you know what to do. 😎

**Built for macOS** · **Keyboard first** · **Terminal all the way**
