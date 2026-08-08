# The Elements of Style - Claude Skill

William Strunk Jr.'s *The Elements of Style* (1918) as a reference skill for clear, precise writing. Works with Claude Code (as a plugin) and with Claude Desktop, Cowork, and claude.ai (as an uploaded skill).

## Installation

### Claude Code (CLI and Desktop Code tab)

```
/plugin marketplace add kevinmcmahon/the-elements-of-style
/plugin install elements-of-style
```

### Claude Desktop / Cowork / claude.ai

Cowork and claude.ai don't read Claude Code plugin marketplaces; they use skills uploaded to your account.

1. Build the skill zip (or grab it from a GitHub release):

   ```
   ./scripts/package-skill.sh
   ```

2. Upload `dist/writing-clearly-and-concisely.zip` under **Customize > Skills** (Desktop) or **Settings > Capabilities > Skills** (claude.ai).

## Purpose

This skill gives Claude access to Strunk's foundational writing guidance when working on documentation, user-facing text, or any prose that needs clarity and proper style.

## What's Inside

The plugin provides:

- **Skill**: `writing-clearly-and-concisely` - Guidance on when and how to use Strunk's rules
- **Reference**: Complete 1918 text with all rules, examples, and usage guidance (~12,000 tokens)

The reference contains:

1. **Elementary Rules of Usage** - Seven fundamental grammar and punctuation rules
2. **Elementary Principles of Composition** - Eleven rules for clear, effective writing
3. **Words and Expressions Commonly Misused** - An alphabetical guide to usage pitfalls

## Usage

Once installed, Claude will automatically use the `writing-clearly-and-concisely` skill when appropriate. The skill:

- Warns about the 12,000-token reference size
- Lists all rules at a glance
- Suggests dispatching a subagent for copyediting when context is limited
- Only loads the full reference when actively writing or editing prose

## Attribution

The text is *The Elements of Style* by William Strunk Jr., first published in 1918 and now in the public domain. It was obtained from [Project Gutenberg #37134](https://www.gutenberg.org/files/37134/37134-h/37134-h.htm) and converted to clean markdown format.

This repository is a fork of [obra/elements-of-style](https://github.com/obra/elements-of-style) by [Jesse Vincent](https://github.com/obra), who created the original Claude Code plugin, the skill, and the markdown conversion. This fork adds packaging for Claude Desktop, Cowork, and claude.ai.

- **Text**: William Strunk Jr., *The Elements of Style* (1918), public domain
- **Original plugin and skill**: Jesse Vincent, [obra/elements-of-style](https://github.com/obra/elements-of-style)
