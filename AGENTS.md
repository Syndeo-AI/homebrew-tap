# AGENTS.md

Agent guidance for `Syndeo-AI/homebrew-tap`.

## Before building

**Non-trivial features, builds, or refactors:** invoke `safeguard` before writing code, scaffolding, or implementation plans — unless the user says **skip safeguard**, already provided a detailed plan/issue, or is addressing bounded PR review comments.

**Vague or underspecified requests:** invoke `clarify` for discovery (ends with a copy-paste prompt).

**Bug fixes:** `clarify` is sufficient unless the fix is large, architectural, or unclear in scope.

The user may opt out of `safeguard` at any time. Skills: `.agents/skills/`.

