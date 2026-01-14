# Minimal Vim Configuration for Learning

This is a **zero-plugin** Vim configuration designed specifically for learning Vim fundamentals.

## Philosophy

> "Learn the tool itself before relying on IDE features"

This configuration provides sensible defaults while keeping Vim simple and focused on core functionality. It's perfect for:
- Working through `vimtutor`
- Learning Vim motions and commands
- Understanding how Vim actually works
- Quick edits on remote servers
- Building muscle memory

## What's Included

### Display Features
- ✅ Line numbers (absolute + relative)
- ✅ Syntax highlighting
- ✅ Status line showing cursor position
- ✅ Command display
- ✅ Matching bracket highlighting

### Search Features
- ✅ Incremental search (search as you type)
- ✅ Highlight search results
- ✅ Smart case sensitivity
- ✅ Press `Esc` to clear search highlighting

### Navigation Features
- ✅ 8-line scroll offset (keeps context visible)
- ✅ Better split navigation (`Ctrl+h/j/k/l`)
- ✅ Splits open right/below by default

### Editing Features
- ✅ Auto-indent for programming
- ✅ 4-space tabs (converted to spaces)
- ✅ macOS clipboard integration
- ✅ Visual mode line moving (`J`/`K` to move selection)
- ✅ Keep visual selection when indenting (`<`/`>`)

### Quality of Life
- ✅ No backup/swap files
- ✅ UTF-8 encoding
- ✅ Visual bell (no beeping)
- ✅ 1000 levels of undo
- ✅ Fast performance (lazyredraw)

## What's NOT Included

This is intentionally minimal:
- ❌ No plugins
- ❌ No plugin manager
- ❌ No fancy statusline
- ❌ No file explorer
- ❌ No autocompletion
- ❌ No LSP integration
- ❌ No git integration

**Why?** So you learn Vim itself, not a customized IDE.

## Key Mappings

### Added Conveniences
```vim
<Leader>          Space bar (for future custom mappings)
<Esc>             Clear search highlighting
Ctrl+h/j/k/l      Navigate between window splits
< / > (visual)    Indent and keep selection
J / K (visual)    Move selected lines up/down
```

### Standard Vim Commands You Should Learn
```vim
Movement:
  h j k l         Left, Down, Up, Right
  w b e           Word forward, backward, end
  0 $             Start/end of line
  gg G            Top/bottom of file

Editing:
  i a o O         Insert mode (before, after, new line below/above)
  d               Delete (operator)
  y               Yank/copy (operator)
  p               Paste
  u               Undo
  Ctrl+r          Redo

Operators + Motions:
  dw              Delete word
  d$              Delete to end of line
  yy              Yank line
  dd              Delete line
  ciw             Change inside word

Visual Mode:
  v               Character-wise visual mode
  V               Line-wise visual mode
  Ctrl+v          Block-wise visual mode

Search:
  /pattern        Search forward
  ?pattern        Search backward
  n               Next match
  N               Previous match

Files:
  :w              Save
  :q              Quit
  :wq or :x       Save and quit
  :q!             Quit without saving
```

## Learning Path

### Week 1: Basics
1. **Run vimtutor**: `vimtutor` (30 minutes, essential!)
2. **Practice movement**: Force yourself to use `h j k l` instead of arrow keys
3. **Master insert mode**: `i`, `a`, `o`, `Esc`
4. **Basic editing**: `x`, `dd`, `u`, `Ctrl+r`

### Week 2: Motions & Operators
1. **Word movement**: `w`, `b`, `e`
2. **Line movement**: `0`, `$`, `^`
3. **Delete operator**: `dw`, `dd`, `d$`
4. **Yank/paste**: `yy`, `p`

### Week 3: Advanced Movement
1. **File navigation**: `gg`, `G`, `{line}G`
2. **Search**: `/`, `?`, `n`, `N`
3. **Text objects**: `ciw`, `ci"`, `dap`
4. **Visual mode**: `v`, `V`, `Ctrl+v`

### Week 4: Productivity
1. **Macros**: `q{register}` ... `q`, `@{register}`
2. **Multiple files**: `:e`, `:bnext`, `:bprev`
3. **Splits**: `:split`, `:vsplit`, `Ctrl+w` commands
4. **Ex commands**: `:s/find/replace/g`

## Configuration Details

### Line Numbers
```vim
set number          " Absolute line numbers
set relativenumber  " Relative numbers (great for motions!)
```
**Why relative?** Makes it easy to use counts with motions.
- `5j` moves down 5 lines (you can see the number!)
- `d3k` deletes current line + 3 above

### Indentation
```vim
set tabstop=4       " Tab displays as 4 spaces
set shiftwidth=4    " Indent with 4 spaces
set expandtab       " Use spaces instead of tabs
set autoindent      " Copy indent from previous line
set smartindent     " Smart indenting for code
```

### Clipboard
```vim
set clipboard=unnamed  " Use macOS system clipboard
```
**Means**: `yy` and `dd` work with system clipboard!

### Scrolling
```vim
set scrolloff=8  " Keep 8 lines visible above/below cursor
```
**Benefit**: Never lose context when moving through files.

## Troubleshooting

### Clipboard not working?
On some macOS versions, use:
```vim
set clipboard=unnamed,unnamedplus
```

### Tabs showing as wrong width?
Some files use different tab widths. Override with:
```vim
:set tabstop=2
```

### Colors look wrong?
Your terminal might not support 256 colors. For Ghostty/Warp/iTerm2, it should work fine.

### Arrow keys not working?
They work, but **don't use them!** Force yourself to use `h j k l`.

## When to Graduate to LazyVim

You're ready for Neovim + LazyVim when you can:
- ✅ Navigate files without thinking about `h/j/k/l`
- ✅ Use operators + motions naturally (`dw`, `ci"`, etc.)
- ✅ Work comfortably in visual mode
- ✅ Use search and replace (`:s//`)
- ✅ Understand splits and buffers
- ✅ Edit for 30+ minutes without reaching for the mouse

**Typical timeframe**: 2-3 weeks of daily practice

## Tips for Success

1. **Disable arrow keys** (optional, hardcore mode):
   ```vim
   " Add to .vimrc:
   noremap <Up> <Nop>
   noremap <Down> <Nop>
   noremap <Left> <Nop>
   noremap <Right> <Nop>
   ```

2. **Use vimtutor regularly**: Run it multiple times until movements feel natural

3. **Practice deliberately**: Focus on one new command/motion per day

4. **Avoid plugins**: Don't add plugins until you master vanilla Vim

5. **Read help**: `:help {topic}` is comprehensive and well-written

## Resources

**Built-in**:
- `:help` - Vim's excellent help system
- `:help motion` - Movement commands
- `:help operator` - Editing operators
- `:help text-objects` - Text objects
- `vimtutor` - Interactive tutorial

**Online**:
- [Vim Adventures](https://vim-adventures.com/) - Learn Vim through a game
- [OpenVim](https://www.openvim.com/) - Interactive tutorial
- "Practical Vim" by Drew Neil - Excellent book

## Comparison: This Config vs LazyVim

| Feature | This Config | LazyVim |
|---------|-------------|---------|
| **Plugins** | 0 | 50+ |
| **Learning Curve** | Low | High |
| **Startup Time** | Instant | 20-50ms |
| **Purpose** | Learning Vim | IDE-like editing |
| **File Explorer** | None (use `:e`) | neo-tree |
| **Git Integration** | None | lazygit, gitsigns |
| **LSP** | None | Full support |
| **Completion** | None | nvim-cmp |
| **When to Use** | Learning, servers | Daily development |

## Philosophy Reminder

> This configuration teaches you **Vim**, not **your custom Vim**.

Every setting here is intentional:
- **Simple enough** to understand completely
- **Powerful enough** to be productive
- **Pure enough** to transfer skills to any Vim installation

Learn this first. Build on it later. Master the fundamentals before adding complexity.

## Next Steps

1. **Start now**: Open a file with `vim filename.txt`
2. **Run vimtutor**: Takes 30 minutes, worth 30 hours of fumbling
3. **Practice daily**: 15 minutes of deliberate practice
4. **Be patient**: First week is hard, second week is better, third week feels natural
5. **Graduate when ready**: See `VIM_LEARNING_GUIDE.md` for progression to LazyVim

**You've got this!** Every Vim expert started exactly where you are now. 🚀
