# AGENT

Owner-wide agent instructions and role prompts for Codex-based development workflows.

This repository defines a reusable agentic development structure for projects maintained by `flipoyo`.

It is designed to be copied, vendored, or used as a reference by repositories such as:

- ComplexGitSync
- HydrologicalTwin / HTAS
- MOLONARI
- CaWaQS-related tools
- OEMS-oriented technical repositories

## Purpose

The repository separates the development workflow into explicit agent roles:

1. Specification Agent
2. Architecture Agent
3. Implementation Agent
4. CI/CD Agent
5. Documentation Agent
6. Code Review Agent

These agents are not independent personalities. They are explicit workflow states of the same engineering process.

## Recommended project layout

In each target repository:

```text
AGENTS.md
AdditionalSpecs.md          # optional, project-specific
DevPlan.md                  # optional, created when needed
DevPlanTickets.md           # optional, created when needed
.codex/
  agents/
  prompts/
  templates/
```

## Installation in a project

From a target repository root:

```bash
git clone git@github.com:flipoyo/AGENT.git /tmp/AGENT
cp /tmp/AGENT/AGENTS.md ./AGENTS.md
mkdir -p .codex
cp -r /tmp/AGENT/.codex/agents .codex/
cp -r /tmp/AGENT/.codex/prompts .codex/
cp -r /tmp/AGENT/.codex/templates .codex/
```

Then adapt `AdditionalSpecs.md` for the local project if needed.

## Global references

The repository assumes the following owner-wide references are normative:

- DevSpecs: https://github.com/flipoyo/DevSpec/blob/main/DevSpecs.md
- DocSpecs: https://github.com/flipoyo/DocSpec/blob/main/DocSpecs.md

Conflict priority:

```text
AdditionalSpecs.md
>
DevSpecs.md
>
DocSpecs.md
>
language/tool conventions
```

## Codex configuration

Codex officially reads `AGENTS.md` files. The recommended approach is to keep `AGENTS.md` at repository root.

Optional fallback configuration can be added to `~/.codex/config.toml`:

```toml
project_doc_fallback_filenames = ["AGENT.md", ".agents.md", ".codex/AGENTS.md"]
project_doc_max_bytes = 65536
```

## CGS profile

`AGENT.cgs` is the canonical flipoyo CGS agent profile. It explicitly lists the normative references:

- `https://github.com/flipoyo/DevSpec`
- `https://github.com/flipoyo/DocSpec`

Use it in repositories that follow the ComplexGitSync / HydrologicalTwin / MOLONARI development discipline.

