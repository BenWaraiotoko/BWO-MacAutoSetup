# Oh-My-Zsh Plugins Reference

Complete guide to the 24 Oh-My-Zsh plugins configured in your `.zshrc`, all matched to tools in your Brewfile.

## 📦 Installed Plugins Overview

### Version Control (2 plugins)
- **git** - Git aliases and functions
- **gh** - GitHub CLI completions

### Development Tools (3 plugins)
- **docker** - Docker/OrbStack aliases and completions
- **kubectl** - Kubernetes CLI completions
- **aws** - AWS CLI completions

### Language Support (4 plugins)
- **python** - Python aliases and virtualenv helpers
- **pip** - Pip package manager completions
- **node** - Node.js useful aliases
- **nvm** - Node Version Manager integration

### Command Line Tools (3 plugins)
- **fzf** - Fuzzy finder keybindings
- **tmux** - Tmux aliases and completions
- **ripgrep** - Ripgrep integration

### Editor Support (2 plugins)
- **vscode** - VS Code helper functions
- **vi-mode** - Vi key bindings in shell

### System Tools (2 plugins)
- **brew** - Homebrew aliases and completions
- **macos** - macOS-specific functions

### Quality of Life (8 plugins)
- **aliases** - Browse and search aliases
- **colored-man-pages** - Colorful man pages
- **command-not-found** - Package suggestions
- **copybuffer** - Copy command to clipboard
- **copyfile** - Copy file contents
- **copypath** - Copy current path
- **dirhistory** - Directory navigation history
- **extract** - Universal archive extraction
- **sudo** - Quick sudo prefix
- **web-search** - Search web from terminal

---

## 🔍 Detailed Plugin Reference

### Version Control

#### `git`
**What it does**: Extensive Git aliases and helper functions

**Key Aliases**:
```bash
gst                    # git status
ga                     # git add
gaa                    # git add --all
gcmsg "message"        # git commit -m "message"
gp                     # git push
gl                     # git pull
gco                    # git checkout
gcb "branch"           # git checkout -b "branch"
gd                     # git diff
glg                    # git log --graph
grh                    # git reset --hard
grhh                   # git reset --hard HEAD
```

**Full list**: Run `alias | grep git` to see all 100+ Git aliases

#### `gh`
**What it does**: GitHub CLI completions

**Usage**:
```bash
gh pr <tab>            # Shows: list, create, view, checkout, etc.
gh issue <tab>         # Shows: list, create, view, close, etc.
gh repo <tab>          # Shows: clone, create, view, fork, etc.
```

**Requires**: `gh` from Brewfile (GitHub CLI)

---

### Development Tools

#### `docker`
**What it does**: Docker/OrbStack aliases and completions

**Key Aliases**:
```bash
dps                    # docker ps
dpa                    # docker ps -a
di                     # docker images
drm                    # docker rm
drmi                   # docker rmi
dex                    # docker exec -it
dlog                   # docker logs -f
dcup                   # docker-compose up
dcdown                 # docker-compose down
dclogs                 # docker-compose logs -f
```

**Tab Completion**:
```bash
docker run <tab>       # Shows images
docker exec <tab>      # Shows running containers
```

**Works with**: OrbStack (Docker Desktop alternative)

#### `kubectl`
**What it does**: Kubernetes CLI completions and aliases

**Key Aliases**:
```bash
k                      # kubectl
kg                     # kubectl get
kgpo                   # kubectl get pods
kd                     # kubectl describe
kdel                   # kubectl delete
kl                     # kubectl logs
kex                    # kubectl exec -it
kaf                    # kubectl apply -f
kdf                    # kubectl delete -f
```

**Tab Completion**:
```bash
kubectl get <tab>      # Shows: pods, services, deployments, etc.
kubectl get pods <tab> # Shows actual pod names
```

#### `aws`
**What it does**: AWS CLI completions

**Tab Completion**:
```bash
aws <tab>              # Shows all AWS services
aws s3 <tab>           # Shows s3 commands
aws ec2 <tab>          # Shows ec2 commands
```

**Requires**: `awscli` from Brewfile

---

### Language Support

#### `python`
**What it does**: Python development helpers

**Functions**:
```bash
pyfind                 # Find Python files
pygrep <pattern>       # Grep in Python files
```

**Virtualenv Integration**:
- Shows active virtualenv in prompt
- Works with venv, virtualenv, pyenv

#### `pip`
**What it does**: Pip package manager completions

**Tab Completion**:
```bash
pip install <tab>      # Shows available packages
pip uninstall <tab>    # Shows installed packages
```

#### `node`
**What it does**: Node.js aliases

**Key Aliases**:
```bash
npmg                   # npm install -g
npmS                   # npm install --save
npmD                   # npm install --save-dev
npmi                   # npm install
npmu                   # npm uninstall
npms                   # npm start
npmt                   # npm test
npmr                   # npm run
```

#### `nvm`
**What it does**: Node Version Manager integration

**Features**:
- Auto-loads nvm
- Provides completions for nvm commands
- Faster nvm initialization

**Usage**:
```bash
nvm <tab>              # Shows: install, use, list, etc.
nvm install <tab>      # Shows available Node versions
```

---

### Command Line Tools

#### `fzf`
**What it does**: Fuzzy finder keybindings and completions

**Keybindings**:
```bash
Ctrl+T                 # Find files in current directory
Ctrl+R                 # Search command history
Alt+C                  # Change to subdirectory
```

**Usage**:
```bash
vim **<tab>            # Fuzzy find files to open
cd **<tab>             # Fuzzy find directory to cd into
kill -9 **<tab>        # Fuzzy find process to kill
```

**Requires**: `fzf` from Brewfile

#### `tmux`
**What it does**: Tmux aliases and completions

**Key Aliases**:
```bash
ta                     # tmux attach
tad                    # tmux attach -d
ts                     # tmux new-session
tl                     # tmux list-sessions
tksv                   # tmux kill-server
tkss                   # tmux kill-session
```

#### `ripgrep`
**What it does**: Ripgrep integration with completions

**Tab Completion**:
```bash
rg <tab>               # Shows ripgrep options
```

**Requires**: `ripgrep` from Brewfile

---

### Editor Support

#### `vscode`
**What it does**: VS Code helper functions

**Key Aliases**:
```bash
vsc                    # Open VS Code
vsca .                 # Open current directory in VS Code
vscd <dir>             # Open directory in VS Code
vscn                   # Open new VS Code window
```

**Usage**:
```bash
vsc file.txt           # Open file in VS Code
vsca                   # Open current folder in VS Code
```

#### `vi-mode`
**What it does**: Vi key bindings in zsh

**Features**:
- Press `Esc` to enter normal mode
- Use `hjkl` for navigation
- Vi commands: `dw`, `dd`, `yy`, `p`, etc.
- Visual mode with `v`
- Shows mode indicator in prompt

**Toggle**: Remove from plugins array to disable

**Keybindings**:
- `Esc` - Normal mode
- `i` or `a` - Insert mode
- `v` - Visual mode
- `/` - Search
- `n` - Next search result

---

### System Tools

#### `brew`
**What it does**: Homebrew aliases and completions

**Key Aliases**:
```bash
bubo                   # brew update && brew outdated
bubc                   # brew upgrade && brew cleanup
bubu                   # brew update && brew upgrade && brew cleanup
bcubo                  # brew cu --all --yes --cleanup
```

**Tab Completion**:
```bash
brew install <tab>     # Shows available formulae
brew uninstall <tab>   # Shows installed formulae
```

#### `macos`
**What it does**: macOS-specific functions

**Key Functions**:
```bash
man-preview <command>  # Open man page in Preview
quick-look <file>      # Quick Look a file
pfd                    # Print Finder directory
cdf                    # cd to Finder directory
showfiles              # Show hidden files in Finder
hidefiles              # Hide hidden files in Finder
```

**Usage**:
```bash
man-preview git        # View git man page in Preview
quick-look image.png   # Quick Look the image
cdf                    # cd to current Finder directory
```

---

### Quality of Life

#### `aliases`
**What it does**: Browse and search aliases

**Commands**:
```bash
acs <keyword>          # Search aliases containing keyword
```

**Example**:
```bash
acs git                # Shows all git-related aliases
acs docker             # Shows all docker-related aliases
```

#### `colored-man-pages`
**What it does**: Colorful syntax highlighting in man pages

**Features**:
- Automatic colorization of man pages
- Easier to read documentation
- No configuration needed

**Example**:
```bash
man git                # Man page with colors!
```

#### `command-not-found`
**What it does**: Suggests package to install when command not found

**Example**:
```bash
$ htop
zsh: command not found: htop
The program 'htop' is currently not installed. You can install it by typing:
  brew install htop
```

#### `copybuffer`
**What it does**: Copy current command line to clipboard

**Keybinding**:
```bash
Ctrl+O                 # Copy current command to clipboard
```

**Use case**: Copy long command before running it

#### `copyfile`
**What it does**: Copy file contents to clipboard

**Usage**:
```bash
copyfile file.txt      # Copy file.txt contents to clipboard
```

**Example**:
```bash
copyfile ~/.ssh/id_rsa.pub  # Copy SSH public key
```

#### `copypath`
**What it does**: Copy current directory path or file path to clipboard

**Usage**:
```bash
copypath               # Copy current directory path
copypath file.txt      # Copy absolute path of file.txt
```

#### `dirhistory`
**What it does**: Navigate directory history with keyboard shortcuts

**Keybindings**:
```bash
Alt+Left               # Go to previous directory
Alt+Right              # Go to next directory
Alt+Up                 # Go to parent directory
```

**Use case**: Quick navigation through recently visited directories

#### `extract`
**What it does**: Universal archive extraction command

**Usage**:
```bash
x archive.zip          # Extract zip
x archive.tar.gz       # Extract tar.gz
x archive.rar          # Extract rar
x archive.7z           # Extract 7z
```

**Supports**: .tar, .tar.gz, .tar.bz2, .zip, .rar, .7z, .gz, .bz2, .xz, .lzma, .Z

#### `sudo`
**What it does**: Add sudo to command by pressing ESC twice

**Usage**:
```bash
apt install package    # Forgot sudo?
<Esc><Esc>            # Now: sudo apt install package
```

**Keybinding**: Press `Esc` twice in quick succession

#### `web-search`
**What it does**: Search the web from terminal

**Usage**:
```bash
google "search query"
ddg "search query"     # DuckDuckGo
bing "search query"
yahoo "search query"
github "repository"
stackoverflow "question"
```

**Example**:
```bash
google "vim tutorial"
stackoverflow "python async await"
github "neovim"
```

---

## 🎛️ Customization

### Disable vi-mode
If vi-mode interferes with your workflow, remove it:
```bash
# In .zshrc, remove 'vi-mode' from plugins array
plugins=(
  git gh docker kubectl aws
  python pip node nvm
  # ... rest of plugins
)
```

### Add More Plugins
Browse available plugins:
```bash
ls $ZSH/plugins/       # List all available plugins
```

Popular additional plugins:
- `z` - Jump to frequently used directories
- `zsh-autosuggestions` - Fish-like autosuggestions (install separately)
- `zsh-syntax-highlighting` - Syntax highlighting (install separately)
- `history-substring-search` - Better history search

### Plugin-Specific Configuration

**fzf Options**:
```bash
# Add to .zshrc after plugins load
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
```

**vi-mode Prompt Indicator**:
```bash
# Add to .zshrc
VI_MODE_SET_CURSOR=true  # Change cursor based on mode
```

---

## 🚀 Performance Tips

### Check Startup Time
```bash
# Benchmark zsh startup
time zsh -i -c exit
```

**Target**: < 0.5 seconds

### Optimize if Slow
If shell startup is slow (> 1 second):

1. **Disable heavy plugins** temporarily to identify culprit
2. **Lazy load nvm**: Replace nvm plugin with:
   ```bash
   # In .zshrc, remove nvm from plugins
   # Add manual lazy loading:
   export NVM_DIR="$HOME/.nvm"
   alias nvm='unalias nvm; [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"; nvm $@'
   ```

3. **Profile startup**:
   ```bash
   # Add to top of .zshrc:
   zmodload zsh/zprof

   # Add to bottom of .zshrc:
   zprof
   ```

---

## 📚 Resources

- [Oh-My-Zsh Plugin List](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
- [Oh-My-Zsh Documentation](https://github.com/ohmyzsh/ohmyzsh)
- Plugin source code: `~/.oh-my-zsh/plugins/`

---

## ✅ Quick Reference

### Most Useful Aliases
```bash
# Git
gst, ga, gcmsg, gp, gl, gco, gd

# Docker
dps, di, dex, dcup, dcdown

# Kubernetes
k, kg, kgpo, kl, kex

# Node/npm
npmg, npmi, npms, npmt

# Files
x <archive>            # Extract
copyfile <file>        # Copy contents
copypath              # Copy path

# Navigation
Alt+Left/Right        # Directory history
Ctrl+T                # Fuzzy find files
Ctrl+R                # Search history

# Utilities
<Esc><Esc>            # Add sudo
google "query"        # Web search
man-preview <cmd>     # Pretty man pages
```

---

