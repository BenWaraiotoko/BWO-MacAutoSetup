# Tools Reference

All tools installed by this project via `brew bundle`, organized by category (same order as the [`Brewfile`](../Brewfile)).

---

## CLI Tools

| Tool | Command | Description |
|------|---------|-------------|
| [mas](https://github.com/mas-cli/mas) | `mas` | Mac App Store CLI — install and update App Store apps from the terminal |
| [Git](https://git-scm.com) | `git` | Version control system |
| [GitHub CLI](https://cli.github.com) | `gh` | GitHub from the terminal — PRs, issues, repos, actions |
| [delta](https://github.com/dandavison/delta) | `delta` | Enhanced `git diff` with syntax highlighting and side-by-side view |
| [fzf](https://github.com/junegunn/fzf) | `fzf` | Fuzzy finder for files, history, and anything piped to it |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | `rg` | Fast recursive search tool, respects `.gitignore` |
| [fd](https://github.com/sharkdp/fd) | `fd` | Simple, fast alternative to `find` |
| [bat](https://github.com/sharkdp/bat) | `bat` | `cat` replacement with syntax highlighting and line numbers |
| [eza](https://github.com/eza-community/eza) | `eza` | Modern `ls` replacement with color coding, icons, and git integration |
| [tree](https://formulae.brew.sh/formula/tree) | `tree` | Display directories as trees |
| [jq](https://jqlang.github.io/jq/) | `jq` | Command-line JSON processor and formatter |
| [yq](https://github.com/mikefarah/yq) | `yq` | YAML/JSON/XML processor, like `jq` but for YAML |
| [GNU Stow](https://www.gnu.org/software/stow/) | `stow` | Symlink manager used to deploy dotfiles from this repo |
| [Wget](https://www.gnu.org/software/wget/) | `wget` | Internet file retriever |
| [rsync](https://rsync.samba.org) | `rsync` | Fast incremental file transfer |
| [Pandoc](https://pandoc.org) | `pandoc` | Convert between markup formats (Markdown, HTML, DOCX, PDF…) |
| [ShellCheck](https://www.shellcheck.net) | `shellcheck` | Static analysis and lint tool for shell scripts |
| [FFmpeg](https://ffmpeg.org) | `ffmpeg` | Record, convert, and stream audio and video |
| [Chafa](https://github.com/hpjansson/chafa) | `chafa` | Render images and GIFs directly in the terminal |
| [dosfstools](https://github.com/dosfstools/dosfstools) | `mkfs.fat`, `fsck.fat` | Create and check FAT file systems |

**eza aliases** (set in `.zshrc`):
```zsh
ls   # eza --icons
ll   # eza -la --icons --git
lt   # eza --tree --level=2 --icons
```

---

## Terminal Tools & TUIs

| Tool | Command | Description |
|------|---------|-------------|
| [Neovim](https://neovim.io) | `nvim` | Hyperextensible Vim-based text editor (configured with LazyVim) |
| [tmux](https://github.com/tmux/tmux) | `tmux` | Terminal multiplexer — split panes, persistent sessions |
| [htop](https://htop.dev) | `htop` | Interactive process viewer and system monitor |
| [Btop](https://github.com/aristocratos/btop) | `btop` | Real-time system monitor — CPU, memory, disk, network, processes |
| [lazygit](https://github.com/jesseduffield/lazygit) | `lazygit` | Terminal UI for Git — stage, commit, branch, and diff visually |
| [lazysql](https://github.com/jorgerojas26/lazysql) | `lazysql` | Terminal UI for SQL databases (MySQL, PostgreSQL, SQLite) |
| [Glow](https://github.com/charmbracelet/glow) | `glow` | Render Markdown in the terminal |
| [csvlens](https://github.com/YS-L/csvlens) | `csvlens` | Interactive CSV viewer — scrollable, searchable, column-aligned |
| [Mole](https://formulae.brew.sh/formula/mole) | `mole` | Deep clean and optimize your Mac |
| [tuios](https://formulae.brew.sh/formula/tuios) | `tuios` | Terminal UI OS — window-based terminal multiplexer |

---

## GNU Utilities

| Tool | Command | Description |
|------|---------|-------------|
| [coreutils](https://www.gnu.org/software/coreutils/) | `gls`, `gcp`, etc. | GNU versions of macOS core utilities |
| [gnu-sed](https://www.gnu.org/software/sed/) | `gsed` | GNU `sed` with extended features not in macOS's BSD sed |
| [findutils](https://www.gnu.org/software/findutils/) | `gfind`, `gxargs` | GNU `find` and `xargs` |
| [gawk](https://www.gnu.org/software/gawk/) | `gawk` | GNU `awk` text processor |

---

## Languages & Package Managers

| Tool | Command | Description |
|------|---------|-------------|
| [Python](https://www.python.org) | `python3` | Python runtime |
| [pipx](https://pipx.pypa.io) | `pipx` | Install Python CLI tools in isolated environments |
| [uv](https://docs.astral.sh/uv/) | `uv` | Extremely fast Python package and project manager |
| [Poetry](https://python-poetry.org) | `poetry` | Python dependency management and packaging |
| [Node.js](https://nodejs.org) | `node` | JavaScript runtime |
| [nvm](https://github.com/nvm-sh/nvm) | `nvm` | Node Version Manager — switch Node versions per project |
| [Lua](https://www.lua.org) | `lua` | Lightweight scripting language |

---

## Dev & Infra

| Tool | Command / Type | Description |
|------|----------------|-------------|
| [AWS CLI](https://aws.amazon.com/cli/) | `aws` | Official Amazon Web Services command-line interface |
| [kubectl](https://kubernetes.io/docs/reference/kubectl/) | `kubectl` | Kubernetes CLI for managing clusters and workloads |
| [Hugo](https://gohugo.io) | `hugo` | Static site generator |
| [PowerShell](https://github.com/PowerShell/PowerShell) | `pwsh` | Cross-platform shell and scripting language |
| [XcodeGen](https://github.com/yonaskolb/XcodeGen) | `xcodegen` | Generate Xcode projects from a spec file |
| [Ansible](https://www.ansible.com) | `ansible` | Configuration automation and infrastructure as code |
| [OrbStack](https://orbstack.dev) | App | Fast, lightweight Docker and Linux VM runtime (replaces Docker Desktop) |
| [Postman](https://www.postman.com) | App | API development and testing platform |
| [Termius](https://termius.com) | App | SSH client |
| [Royal TSX](https://www.royalapps.com/ts/mac/features) | App | Remote connection manager (RDP, SSH, VNC) |

---

## AI

| Tool | Command / Type | Description |
|------|----------------|-------------|
| [LLM Fit](https://github.com/AlexsJones/llmfit) | `llmfit` | Analyzes your hardware and ranks which local AI models you can run |
| [Models CLI](https://github.com/arimxyer/models) | `models` | TUI comparing 2000+ AI models across providers (pricing, context, benchmarks) |
| [rtk](https://formulae.brew.sh/formula/rtk) | `rtk` | CLI proxy that minimizes LLM token consumption |
| [OpenCode](https://opencode.ai) | `opencode` | AI coding agent for the terminal (via the `anomalyco/tap` tap) |
| [Claude](https://claude.ai) | App | Anthropic's AI assistant desktop app |
| [Claude Code](https://claude.ai/code) | `claude` | AI coding agent in the terminal |
| [Ollama](https://ollama.com) | App | Run local LLMs (Llama, Mistral, Gemma, etc.) |
| [FluidVoice](https://formulae.brew.sh/cask/fluidvoice) | App | Offline voice-to-text dictation with AI enhancement |
| SuperClaude | `superclaude` | Framework for Claude Code — installed by `bootstrap.sh` via `pipx`, not by the Brewfile |

---

## Media Encoders

| Tool | Description |
|------|-------------|
| [x264](https://formulae.brew.sh/formula/x264) | H.264/AVC encoder |
| [x265](https://formulae.brew.sh/formula/x265) | H.265/HEVC encoder |
| [xvid](https://formulae.brew.sh/formula/xvid) | MPEG-4 video codec |

---

## Security & Network

| Tool | Command / Type | Description |
|------|----------------|-------------|
| [1Password](https://1password.com) | App | Password manager |
| [1Password CLI](https://developer.1password.com/docs/cli/) | `op` | Command-line interface for 1Password |
| [Proton VPN](https://protonvpn.com) | App | Privacy-focused VPN |
| [Nmap](https://nmap.org) | `nmap` | Network discovery and port scanner |

---

## Editors & Terminals

| App | Description |
|-----|-------------|
| [Ghostty](https://ghostty.org) | Fast, native terminal emulator |
| [Zed](https://zed.dev) | High-performance multiplayer code editor |
| [Visual Studio Code](https://code.visualstudio.com) | Code editor |
| [Sublime Text](https://www.sublimetext.com) | Lightweight code and text editor |

---

## Productivity

| App | Description |
|-----|-------------|
| [Raycast](https://www.raycast.com) | Spotlight replacement with extensions, scripts, and AI |
| [Rectangle](https://rectangleapp.com) | Move and resize windows with keyboard shortcuts or snap areas |
| [Notion](https://www.notion.so) | Note-taking and project management |
| [Obsidian](https://obsidian.md) | Markdown knowledge base on top of a local folder |
| [NetNewsWire](https://netnewswire.com) | RSS/Atom feed reader |
| [draw.io](https://www.drawio.com) | Diagram editor |

---

## Communication & Media

| App | Description |
|-----|-------------|
| [Discord](https://discord.com) | Chat and voice platform |
| [Spotify](https://www.spotify.com) | Music streaming |
| [VLC](https://www.videolan.org/vlc/) | Multimedia player |
| [Proton Mail](https://proton.me/mail) | Encrypted email client |

---

## Storage & Sync

| App | Description |
|-----|-------------|
| [Proton Drive](https://proton.me/drive) | Encrypted cloud storage |
| [FreeFileSync](https://freefilesync.org) | Folder comparison and synchronization (backups) |

---

## Maker & Hardware

| App | Description |
|-----|-------------|
| [Arduino IDE](https://www.arduino.cc/en/software) | IDE for Arduino microcontrollers |
| [Autodesk Fusion](https://www.autodesk.com/products/fusion-360/) | 3D CAD, CAM, and parametric modeling |

---

## System Utilities

| App | Description |
|-----|-------------|
| [AppCleaner](https://freemacsoft.net/appcleaner/) | Uninstall apps along with their leftover files |
| [balenaEtcher](https://etcher.balena.io) | Flash OS images to SD cards and USB drives |
| [Taphouse](https://formulae.brew.sh/cask/taphouse) | Native GUI for Homebrew package management |
| [Vorssaint](https://formulae.brew.sh/cask/vorssaint) | Menu bar toolkit: keep-awake, system monitor, volume mixer |

---

## Fonts

| Font | Description |
|------|-------------|
| [Fira Code](https://github.com/tonsky/FiraCode) | Monospace font with programming ligatures, used by Zed |
| [JetBrains Mono](https://www.jetbrains.com/lp/mono/) | Monospace font for code |
| [JetBrains Mono Nerd Font](https://www.nerdfonts.com) | JetBrains Mono patched with icons for terminal and editors |
| [Meslo LG Nerd Font](https://www.nerdfonts.com) | Font recommended by Powerlevel10k |

---

## Mac App Store Apps

| App | Description |
|-----|-------------|
| [Developer](https://apps.apple.com/app/id640199958) | Apple's app for WWDC sessions, videos, and developer news |
| [Xcode](https://developer.apple.com/xcode/) | Apple's IDE for iOS and macOS development |
| [Supernote Partner](https://supernote.com) | Companion app for Supernote e-ink tablets |
| [Toggl Track](https://toggl.com/track/) | Time tracking for projects and tasks |
| [Telegram](https://telegram.org) | Messaging app |
| [WireGuard](https://www.wireguard.com) | WireGuard VPN client |
| [Home Assistant](https://www.home-assistant.io) | Companion app for Home Assistant (home automation) |

---

## VS Code Extensions

Installed by `brew bundle` through the `vscode` entries of the Brewfile.

| Area | Extensions |
|------|------------|
| Themes & icons | `catppuccin.catppuccin-vsc`, `daltonmenezes.aura-theme`, `novadust.novadust`, `qufiwefefwoyn.kanagawa`, `pkief.material-icon-theme` |
| AI assistants | `anthropic.claude-code`, `google.geminicodeassist`, `google.gemini-cli-vscode-ide-companion`, `kilocode.kilo-code` |
| GitHub | `github.vscode-pull-request-github`, `github.vscode-github-actions`, `github.remotehub` |
| Remote development | `ms-vscode-remote.vscode-remote-extensionpack`, `ms-vscode-remote.remote-ssh`, `ms-vscode-remote.remote-ssh-edit`, `ms-vscode-remote.remote-containers`, `ms-vscode-remote.remote-wsl`, `ms-vscode.remote-explorer`, `ms-vscode.remote-repositories`, `ms-vscode.remote-server`, `tailscale.vscode-tailscale` |
| Containers & cloud | `ms-azuretools.vscode-containers`, `ms-azuretools.vscode-docker`, `ms-azuretools.vscode-azureresourcegroups`, `ms-dotnettools.vscode-dotnet-runtime` |
| Python & Jupyter | `meta.pyrefly`, `tushortz.python-extended-snippets`, `google.colab`, `ms-toolsai.jupyter`, `ms-toolsai.jupyter-hub`, `ms-toolsai.jupyter-keymap`, `ms-toolsai.jupyter-renderers`, `ms-toolsai.vscode-jupyter-cell-tags`, `ms-toolsai.vscode-jupyter-slideshow` |
| C/C++ & embedded | `ms-vscode.cpptools`, `ms-vscode.cpptools-extension-pack`, `ms-vscode.cpptools-themes`, `ms-vscode.cpp-devtools`, `ms-vscode.cmake-tools`, `ms-vscode.makefile-tools`, `platformio.platformio-ide`, `lvgl.lvgl-project-creator-vscode` |
| SQL | `ms-mssql.mssql`, `ms-mssql.sql-database-projects-vscode`, `ms-mssql.sql-bindings-vscode`, `ms-mssql.data-workspace-vscode`, `mtxr.sqltools`, `adpyke.vscode-sql-formatter` |
| Languages & formats | `budparr.language-hugo-vscode`, `tamasfe.even-better-toml`, `mechatroner.rainbow-csv`, `petli-full.json-to-yaml-and-more`, `bierner.markdown-mermaid`, `ms-vscode.powershell` |
| Other | `figma.figma-vscode-extension`, `ms-vscode.test-adapter-converter` |

---

## npm Global Packages

| Package | Description |
|---------|-------------|
| `@21st-dev/magic` | MCP server for UI component generation (Magic) |
| `@executeautomation/playwright-mcp-server` | Playwright MCP server (ExecuteAutomation) |
| `@playwright/mcp` | Official Playwright MCP server (Microsoft) |
| `@modelcontextprotocol/server-filesystem` | MCP server for file system access |
| `@modelcontextprotocol/server-github` | MCP server for GitHub |
| `@modelcontextprotocol/server-brave-search` | MCP server for Brave Search |
| `@suekou/mcp-notion-server` | MCP server for Notion |
| `@google/gemini-cli` | Gemini CLI — Google's AI agent in the terminal |
| `ts-node` | Run TypeScript directly in Node.js |
| `filefive` | SFTP/FTP/S3 client with a two-panel file manager |

---

## uv Tools

| Tool | Description |
|------|-------------|
| `mistral-vibe` | Mistral Vibe — command-line coding agent by Mistral AI |
