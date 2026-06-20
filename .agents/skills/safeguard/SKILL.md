---
name: safeguard
description: >
  Interviews the user before non-trivial implementation to ensure they
  understand why, what, codebase impact, and company necessity — preventing
  damage from building without a plan. Use when starting a feature, build,
  or refactor; user says "safeguard", "/safeguard", "understand before code",
  or "before building"; or AGENTS.md routes non-trivial work here. Not for
  clear bug fixes (use clarify) or when a detailed plan/issue already exists.
---

# Safeguard

Interview before implementation so the user understands how the work fits
the company and the codebase. One question at a time. Exit when all four
pillars are concrete enough to build safely — or when the user opts out.

<HARD-GATE>
During the interview, do NOT write code, edit files, commit, scaffold, or
produce implementation plans. The gate lifts when the interview completes
(Build Brief delivered) or the user says **skip safeguard** (or similar).
</HARD-GATE>

## When this skill runs

**Invoke safeguard** for non-trivial features, builds, or refactors.

**Route to `clarify` instead** for clear bug fixes with obvious scope.

**Skip safeguard** (proceed directly) when any of these apply:

- User says **skip safeguard** or explicitly opts out at any time
- User already pasted a detailed plan or linked a GitHub issue/PRD that
  answers company necessity, what/why, impact, and scope
- User is addressing bounded review comments on an existing PR

**When in doubt** on bug vs feature: prefer `clarify` for bugs; prefer
`safeguard` when the change adds behavior, crosses siblings, or reshapes
architecture.

## Checklist

Complete in order:

1. **Explore project context** — read relevant sibling `AGENTS.md`, `CONTEXT.md`,
   affected paths, recent commits; note cross-sibling touch points
2. **Scope check** — if the request spans multiple independent subsystems,
   flag it and interview one slice at a time
3. **Interview — one question at a time** across the four pillars (below)
4. **Stop when thorough** — each pillar survives "what about when…?"
5. **Deliver Build Brief** — short summary in chat (see template)
6. **Compact, then build** — ask the user to compact their context window,
   then continue implementation in the same session

## Four pillars

Cover each pillar before ending the interview. Do not skip a pillar because
the user sounds confident — vague one-liners need follow-ups.

| Pillar | What to establish |
|---|---|
| **Company necessity** | Is this actually needed for the company now? What problem does it solve? What happens if we don't build it? |
| **What & why** | What exactly are we building? Why this approach over alternatives? |
| **Codebase / system impact** | Which siblings, services, schemas, or flows are affected? What breaks if we get this wrong? Explore the repo — don't ask the user what you can read. |
| **Scope boundaries & non-goals** | What files/areas are in scope? What is explicitly out of scope? What must not change? |

## Question discipline

- **One question per message** — break complex topics into multiple turns
- **Explore the codebase** when impact or boundaries can be answered from
  the repo (read sibling `AGENTS.md`, `CONTEXT.md`, call paths, schemas)
- **Provide a recommended answer** when the user is stuck — then continue
  interviewing (grill-me style, unlike `clarify`)
- **Multiple choice preferred** when it speeds answers
- **Purposeful, not bureaucratic** — don't interrogate trivial details;
  exit as soon as all four pillars are concrete enough to implement safely

## Opt-out

At any point the user may say **skip safeguard** (or similar). Acknowledge
briefly and proceed to implementation without the Build Brief. Do not
guilt-trip or re-run the interview unless they ask.

## Build Brief

When the interview completes (not skipped), output this brief in chat before
any implementation:

```md
## Build Brief

**Why:** [company necessity — the problem and why now]

**What:** [exactly what we're building]

**Affected areas:** [siblings, paths, schemas, flows]

**Risks:** [what could go wrong; hard rules or invariants at stake]

**Done when:**
- [criterion]
- [criterion]

**Out of scope:**
- [non-goal]
```

Then tell the user:

> Compact your context window now (Cursor: /compact or the compact action).
> Once compacted, reply **ready** and we'll implement from this brief.

Do not write code until the user confirms ready (or explicitly asks to
implement without compacting).

## Relationship to other skills

| Skill | When |
|---|---|
| `clarify` | Vague ideas, discovery, clear bug fixes — ends with copy-paste prompt, no code |
| `safeguard` | Non-trivial builds — ends with Build Brief, then same-session implementation |
| `grill-me` | Stress-test an existing plan — not the pre-build gate |
| `pre-pr-review` | After feature complete, before opening a PR |

## Key principles

- **Understanding before damage** — the goal is holistic fit, not paperwork
- **Skippable** — power users and urgent fixes can opt out anytime
- **YAGNI in questioning** — ask what matters for safe implementation, not every hypothetical

## Repo-specific impact hints

When exploring codebase impact in this repo, check:

- **Distribution channel:** formula changes affect end-user installs via Homebrew
- **Version pins:** URL/checksum updates must match actual released artifacts from `terminal-ui` releases
- **Low churn:** small, focused PRs — mistakes break installs for all macOS users
