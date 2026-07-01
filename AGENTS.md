# Repository Agent Instructions

This repository follows the owner-wide DevSpecs and DocSpecs.

Canonical references:

- DevSpecs: https://github.com/flipoyo/DevSpec/blob/main/DevSpecs.md
- DocSpecs: https://github.com/flipoyo/DocSpec/blob/main/DocSpecs.md

Project-local references, when present:

- AdditionalSpecs.md
- DevPlan.md
- DevPlanTickets.md

In sovereign local-agent development, the target project can be cloned from
https://github.com/flipoyo/ComplexGitSync before these files are installed.

## Normative priority

When instructions conflict, apply this order:

1. User request in the current task
2. AdditionalSpecs.md
3. DevPlan.md and DevPlanTickets.md
4. This AGENTS.md
5. Owner-wide DevSpecs and DocSpecs
6. Language and tool conventions

## Mission

Use explicit agent roles to move a project from idea to reviewed implementation without mixing responsibilities.

Agents are workflow states, not independent personalities.

Default workflow:

```text
Idea
↓
Specification
↓
Architecture
↓
DevPlan / DevPlanTickets
↓
Implementation
↓
Tests
↓
Documentation
↓
Code Review
↓
Merge
```

## Before doing any work

1. Read this file.
2. Read AdditionalSpecs.md if present.
3. Read DevPlan.md and DevPlanTickets.md if present.
4. Identify the requested role: specification, architecture, implementation, ci-cd, documentation, or code-review.
5. Follow the matching role file under `.codex/agents/`.
6. If no role is specified, infer the minimal appropriate role from the user request.

## Global engineering rules

- Keep the project object-oriented when applicable.
- Keep the public API small, explicit, documented, and stable.
- Prefer a monolithic canonical API unless the project explicitly requires multiple APIs.
- Preserve CLI/API behavioral equivalence when both exist.
- Use explicit lifecycle states for domain objects and workflows.
- Use `uv` or `pixi` only for Python workflows.
- Do not use raw `pip`, `python -m venv`, or ad-hoc environment commands.
- Use structured JSON/TOML/YAML parsing, never raw string manipulation for state or config.
- Use logging, not `print`, for operational output.
- Fail early with typed, descriptive exceptions.
- Keep unit and integration tests separated.
- Update documentation in the same PR when user-facing behavior changes.
- Do not silently introduce plugins, adapters, frameworks, or compatibility layers unless explicitly requested.
- Prefer minimal, readable, maintainable implementation over clever abstractions.
- Reject unnecessary compatibility code, speculative features, and hidden side effects.

## Role files

- `.codex/agents/specification.md`
- `.codex/agents/architecture.md`
- `.codex/agents/implementation.md`
- `.codex/agents/ci-cd.md`
- `.codex/agents/documentation.md`
- `.codex/agents/code-review.md`

## Expected completion summary

At the end of a task, report:

1. What changed.
2. Which files were touched.
3. Which tests or checks were run.
4. Remaining risks or unresolved points.
5. Next minimal action, if any.
