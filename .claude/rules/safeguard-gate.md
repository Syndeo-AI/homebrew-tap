# Safeguard gate

Before any **non-trivial feature, build, or refactor**, invoke the
`safeguard` skill via the **Skill tool** as your **first action**. AGENTS.md
mandates this. Do not Read the skill file — use the Skill tool.

**Do not** write code, scaffold, edit files, or produce implementation plans
until safeguard completes (Build Brief delivered) or the user opts out.

**Skip safeguard** when the user says **skip safeguard**, already provided a
detailed plan/issue, or is addressing bounded PR review comments.

**Route to `clarify`** for clear bug fixes with obvious scope.

**When in doubt:** prefer `clarify` for bugs; prefer `safeguard` when the
change adds behavior, crosses siblings, or reshapes architecture.
