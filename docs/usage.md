# Usage

## Launching an agent manually

Open the matching prompt under `.codex/prompts/` and paste it before the task.

Example:

```text
Act as the Architecture Agent. Read AGENTS.md and .codex/agents/architecture.md. Analyze the current repository and produce the minimal architecture plan needed for the requested change.
```

Then add the concrete task.

## Recommended sequence

For a new feature:

```text
specification -> architecture -> implementation -> documentation -> code-review
```

For a failing CI workflow:

```text
ci-cd -> implementation if needed -> code-review
```

For documentation-only work:

```text
documentation -> code-review
```
