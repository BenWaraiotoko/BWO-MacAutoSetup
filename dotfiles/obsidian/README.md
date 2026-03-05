# Obsidian Config

Obsidian configuration and plugin settings for the `bwo-second-brain` vault.

## What's stored

- `.obsidian/` — vault-level settings (app, appearance, hotkeys, core/community plugins)
- `.obsidian/plugins/*/manifest.json` — plugin identifiers (used by BRAT or manual install)
- `.obsidian/plugins/*/data.json` — plugin-specific settings

> Compiled plugin files (`main.js`, `styles.css`) are **not** tracked — they are installed by Obsidian on first launch.

## Usage

This config is **not stow-managed** since it belongs inside a vault, not `~`.

To restore on a new machine:

```bash
# 1. Install Obsidian (via Brewfile)
# 2. Open Obsidian and create/open the vault at ~/Documents/bwo-second-brain
# 3. Copy config into vault
cp -r dotfiles/obsidian/.obsidian ~/Documents/bwo-second-brain/

# 4. Reopen Obsidian — it will prompt to install community plugins automatically
```

## Plugins

| Plugin | Purpose |
|--------|---------|
| ai-providers | AI model integration |
| calendar | Daily note calendar sidebar |
| dataview | Query vault as a database |
| janitor | Vault cleanup and maintenance |
| local-gpt | Local LLM via Ollama |
| obsidian-auto-link-title | Fetch titles for pasted URLs |
| obsidian-excalidraw-plugin | Diagrams inside notes |
| obsidian-link-converter | Convert link formats |
| obsidian-linter | Format and lint notes |
| obsidian-reading-time | Estimated read time |
| obsidian-tasks-plugin | Task management |
| omnisearch | Full-text search |
| periodic-notes | Weekly/monthly/yearly notes |
| perplexity-converter | Perplexity AI integration |
| table-editor-obsidian | Advanced table editing |
| templater-obsidian | Advanced templating |
