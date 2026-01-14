# SuperClaude Framework Configuration

This directory contains the SuperClaude Framework configuration files that enhance Claude Code with specialized commands, personas, and development methodologies.

## What is SuperClaude?

SuperClaude is a meta-programming configuration framework that transforms Claude Code into a structured development platform through:
- **30 Slash Commands** - Planning, development, testing, documentation, git workflows, and more
- **16 Specialized Personas** - PM, Deep Research, Security Engineer, Frontend Architect, etc.
- **7 Behavioral Modes** - Brainstorming, Business Panel, Deep Research, Token-Efficiency
- **8 MCP Server Integrations** - Tavily, Context7, Sequential, Magic, Playwright, and more

## Files in This Directory

### Core Framework Files
- `CLAUDE.md` - Entry point that references all other framework components
- `COMMANDS.md` - Command execution framework and slash command definitions
- `FLAGS.md` - Flag system reference for controlling behavior
- `PRINCIPLES.md` - Core development principles and philosophies
- `RULES.md` - Actionable operational rules
- `PERSONAS.md` - Specialized persona system reference
- `MCP.md` - MCP server integration and orchestration
- `MODES.md` - Operational modes reference
- `ORCHESTRATOR.md` - Intelligent routing and decision system

### Directories
- `commands/` - Slash command implementation files
- `hooks/` - Claude Code hooks integration

### Metadata
- `.superclaude-metadata.json` - SuperClaude installation metadata
- `mcp_config.json` - MCP server configuration (if present)

## Installation

SuperClaude is automatically installed by the bootstrap script via:
```bash
pipx install superclaude
superclaude install
```

## Usage

After installation and restarting Claude Code:

### Slash Commands
Type `/sc:` in Claude Code to see available commands:
- `/sc:analyze` - Multi-dimensional code analysis
- `/sc:implement` - Feature and code implementation
- `/sc:improve` - Evidence-based code enhancement
- `/sc:build` - Project builder with framework detection
- `/sc:test` - Testing workflows
- `/sc:git` - Git workflow assistant
- And 24 more commands...

### CLI Commands
```bash
# Check installation
superclaude --version
superclaude doctor

# Manage MCP servers
superclaude mcp --list
superclaude mcp --servers tavily context7

# Get help
superclaude --help
```

## MCP Server Integration

SuperClaude works with these MCP servers for enhanced capabilities:

- **Context7** - Library documentation and API references
- **Sequential** - Multi-step reasoning and complex analysis
- **Magic** - UI component generation
- **Playwright** - Browser automation and E2E testing
- **Tavily** - Web search integration
- **Serena** - Additional capabilities

Install MCP servers:
```bash
superclaude mcp --list
superclaude mcp --servers context7 sequential magic
```

## Framework Components

### Personas
Specialized AI behavior patterns for different domains:
- `architect` - Systems design specialist
- `frontend` - UX and accessibility advocate
- `backend` - Reliability engineer
- `security` - Threat modeler
- `performance` - Optimization specialist
- And 11 more...

### Flags
Control behavior with flags:
- `--think`, `--think-hard`, `--ultrathink` - Analysis depth
- `--uc` - Ultra-compressed mode (30-50% token reduction)
- `--seq`, `--c7`, `--magic`, `--play` - Enable specific MCP servers
- `--persona-{name}` - Activate specific persona
- And many more...

### Modes
Special operational modes:
- Task Management Mode - Structured workflow execution
- Introspection Mode - Transparency into thinking processes
- Token Efficiency Mode - Optimized communication

## Customization

These files are managed by SuperClaude and should not be edited directly. To customize:

1. Use the SuperClaude CLI for configuration
2. Add project-specific configurations to project `.claude/` directories
3. Use flags and commands to control behavior

## Updating

SuperClaude is automatically updated during bootstrap. Manual update:
```bash
pipx upgrade superclaude
superclaude install
```

## Resources

- [SuperClaude GitHub](https://github.com/SuperClaude-Org/SuperClaude_Framework)
- [SuperClaude Documentation](https://superclaude.org/)
- [PyPI Package](https://pypi.org/project/superclaude/)
- [ClaudeLog Guide](https://claudelog.com/claude-code-mcps/super-claude/)

## Note

These configuration files are symlinked from `dotfiles/superclaude/.claude/` to `~/.claude/` using GNU Stow. This allows version control of your SuperClaude configuration while maintaining the standard installation location.
