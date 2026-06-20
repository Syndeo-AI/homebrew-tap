# AGENTS.md

Agent guidance for `Syndeo-AI/homebrew-tap`.

## Before building

**Non-trivial features, builds, or refactors:** **must** invoke `safeguard` before writing code, scaffolding, or implementation plans — unless the user says **skip safeguard**, already provided a detailed plan/issue, or is addressing bounded PR review comments. **Claude Code:** invoke via the Skill tool (`safeguard`). **Cursor:** Read `.agents/skills/safeguard/SKILL.md` immediately (do not defer). Both platforms load unconditional gate rules: `.claude/rules/safeguard-gate.md` and `.cursor/rules/safeguard-gate.mdc`. Do not write code, scaffold, edit files, or produce implementation plans until safeguard completes or the user opts out. Safeguard ends with a Build Brief; ask the user to compact context, then continue in the same session.

**Vague or underspecified requests:** invoke `clarify` for discovery (ends with a copy-paste prompt).

**Bug fixes:** `clarify` is sufficient unless the fix is large, architectural, or unclear in scope.

The user may opt out of `safeguard` at any time. Skills: `.agents/skills/`.

