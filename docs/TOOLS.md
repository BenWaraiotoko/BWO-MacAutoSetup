# Tools Reference

All tools installed by this project via `brew bundle`, organized by category.

---

## CLI Tools

| Tool | Command | Description |
|------|---------|-------------|
| [mas](https://github.com/mas-cli/mas) | `mas` | Mac App Store CLI — install and update App Store apps from the terminal |
| [Git](https://git-scm.com) | `git` | Version control system |
| [fzf](https://github.com/junegunn/fzf) | `fzf` | Fuzzy finder for files, history, and anything piped to it |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | `rg` | Fast recursive search tool, respects `.gitignore` |
| [bat](https://github.com/sharkdp/bat) | `bat` | `cat` replacement with syntax highlighting and line numbers |
| [htop](https://htop.dev) | `htop` | Interactive process viewer and system monitor |
| [lazygit](https://github.com/jesseduffield/lazygit) | `lazygit` | Terminal UI for Git — stage, commit, branch, and diff visually |
| [lazysql](https://github.com/jorgerojas26/lazysql) | `lazysql` | Terminal UI for SQL databases (MySQL, PostgreSQL, SQLite) |
| [AWS CLI](https://aws.amazon.com/cli/) | `aws` | Official Amazon Web Services command-line interface |
| [jq](https://jqlang.github.io/jq/) | `jq` | Command-line JSON processor and formatter |
| [yq](https://github.com/mikefarah/yq) | `yq` | YAML/JSON/XML processor, like `jq` but for YAML |
| [GitHub CLI](https://cli.github.com) | `gh` | GitHub from the terminal — PRs, issues, repos, actions |
| [delta](https://github.com/dandavison/delta) | `delta` | Enhanced `git diff` with syntax highlighting and side-by-side view |
| [tmux](https://github.com/tmux/tmux) | `tmux` | Terminal multiplexer — split panes, persistent sessions |
| [GNU Stow](https://www.gnu.org/software/stow/) | `stow` | Symlink manager used to deploy dotfiles from this repo |
| [Neovim](https://neovim.io) | `nvim` | Hyperextensible Vim-based text editor (configured with LazyVim) |
| [kubectl](https://kubernetes.io/docs/reference/kubectl/) | `kubectl` | Kubernetes CLI for managing clusters and workloads |
| [Tailscale](https://tailscale.com) | `tailscale` | Secure mesh VPN for homelab and remote access |

---

## Terminal Tools & Viewers

| Tool | Command | Description |
|------|---------|-------------|
| [Glow](https://github.com/charmbracelet/glow) | `glow` | Render Markdown beautifully in the terminal; great for CLAUDE.md and plan files |
| [LLM Fit](https://github.com/AlexsJones/llmfit) | `llmfit` | Analyzes your hardware and ranks which local AI models you can run |
| [Models CLI](https://github.com/arimxyer/models) | `models` | TUI dashboard comparing 2000+ AI models across 85+ providers (pricing, context, benchmarks) |
| [Taproom](https://github.com/hpjansson/taproom) | `taproom` | Interactive TUI for browsing and managing Homebrew packages |
| [Ranger](https://github.com/ranger/ranger) | `ranger` | VIM-inspired terminal file manager with multi-pane directory view |
| [Btop](https://github.com/aristocratos/btop) | `btop` | Gorgeous real-time system monitor — CPU, memory, disk, network, processes |
| [Chafa](https://github.com/hpjansson/chafa) | `chafa` | Render images and GIFs directly in the terminal |
| [csvlens](https://github.com/YS-L/csvlens) | `csvlens` | Interactive CSV viewer — scrollable, searchable, column-aligned |
| [eza](https://github.com/eza-community/eza) | `eza` | Modern `ls` replacement with color coding, icons, and git integration |

**eza aliases** (set in `.zshrc`):
```zsh
ls   # eza --icons
ll   # eza -la --icons --git
lt   # eza --tree --level=2 --icons
```

---

## Languages & Package Managers

| Tool | Command | Description |
|------|---------|-------------|
| [Python](https://www.python.org) | `python3` | Python runtime |
| [pipx](https://pipx.pypa.io) | `pipx` | Install Python CLI tools in isolated environments |
| [Node.js](https://nodejs.org) | `node` | JavaScript runtime |
| [nvm](https://github.com/nvm-sh/nvm) | `nvm` | Node Version Manager — switch Node versions per project |

---

## GNU Utilities

| Tool | Command | Description |
|------|---------|-------------|
| [coreutils](https://www.gnu.org/software/coreutils/) | `gls`, `gcp`, etc. | GNU versions of macOS core utilities |
| [gnu-sed](https://www.gnu.org/software/sed/) | `gsed` | GNU `sed` with extended features not in macOS's BSD sed |
| [findutils](https://www.gnu.org/software/findutils/) | `gfind`, `gxargs` | GNU `find` and `xargs` |
| [gawk](https://www.gnu.org/software/gawk/) | `gawk` | GNU `awk` text processor |

---

## GUI Applications

| App | Description |
|-----|-------------|
| [Visual Studio Code](https://code.visualstudio.com) | Code editor |
| [Raycast](https://www.raycast.com) | Spotlight replacement with extensions, scripts, and AI |
| [OrbStack](https://orbstack.dev) | Fast, lightweight Docker and Linux VM runtime (replaces Docker Desktop) |
| [Ghostty](https://ghostty.org) | Fast, native terminal emulator |
| [AeroSpace](https://github.com/nikitabobko/AeroSpace) | Tiling window manager for macOS |
| [Discord](https://discord.com) | Chat and voice platform |
| [Firefox](https://www.mozilla.org/firefox/) | Web browser |
| [Shottr](https://shottr.cc) | Screenshot tool with annotation and OCR |
| [Notion](https://www.notion.so) | Note-taking and project management |
| [Spotify](https://www.spotify.com) | Music streaming |
| [ProtonVPN](https://protonvpn.com) | Privacy-focused VPN |
| [Proton Drive](https://proton.me/drive) | Encrypted cloud storage |
| [Proton Mail](https://proton.me/mail) | Encrypted email client |
| [Proton Pass](https://proton.me/pass) | Password manager |
| [ForkLift](https://binarynights.com) | Dual-pane file manager and FTP/SFTP client |
| [NetNewsWire](https://netnewswire.com) | RSS/Atom feed reader |
| [Ollama](https://ollama.com) | Run local LLMs (Llama, Mistral, Gemma, etc.) |
| [Warp](https://www.warp.dev) | AI-powered terminal |
| [WifiMan](https://www.ubnt.com/wifiman/) | Wi-Fi network analyzer |
| [Sublime Text](https://www.sublimetext.com) | Lightweight code and text editor |
| [Claude](https://claude.ai) | Anthropic's AI assistant desktop app |
| [Claude Code](https://claude.ai/code) | AI coding agent in the terminal |
| [Postman](https://www.postman.com) | API development and testing platform |

---

## Fonts

| Font | Description |
|------|-------------|
| [JetBrains Mono Nerd Font](https://www.nerdfonts.com) | Monospace font patched with icons for use in terminal and editors |

---

## Mac App Store Apps

| App | Description |
|-----|-------------|
| [Perplexity: Ask Anything](https://www.perplexity.ai) | AI-powered search and Q&A |
| [Supernote Partner](https://supernote.com) | Companion app for Supernote e-ink tablets |
| [Calendars](https://apps.apple.com/app/id608834326) | Calendar and reminder manager |
| [Toggl Track](https://toggl.com/track/) | Time tracking for projects and tasks |
