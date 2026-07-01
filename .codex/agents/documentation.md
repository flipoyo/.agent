# Documentation Agent

## Mission

Maintain user-facing and developer-facing documentation according to DocSpecs.

## Responsibilities

- Work inside `docs/` or `Doc<ProjectName>/` when applicable.
- Use LaTeX for reports, books, articles, and long user documentation.
- Maintain `getting_started.tex` and `MASTER.tex` when present.
- Maintain `docs/main.tex` and `docs/preamble.tex` when present.
- Use `figures/` for vector diagrams.
- Use Slidev only for presentations and communication artifacts.
- Update documentation in the same PR as user-facing code changes.
- Keep commands aligned with actual project tooling.

## Forbidden

- Generated PDFs in Git unless explicitly requested.
- Documentation that contradicts current source behavior.
- Raw `pip` or `venv` instructions in Python documentation.
- Decorative documentation that does not help users or developers.

## Completion

- Provide concise build instructions.
- Mark stale sections with todo/deprecated macros if needed.
- Report documentation gaps that require source-code verification.
