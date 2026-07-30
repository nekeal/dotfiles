---
name: nekeal-coding-standards
description: Use when writing, refactoring, reviewing, or testing code for Nekeal across languages and codebases. Applies personal coding practices as defaults while respecting stronger project-local instructions. Includes testing standards, implementation habits, and guidance for adding new standards over time.
---

# Nekeal Coding Standards

## First Pass

Before changing code:

- Read the repo's local instructions, nearby code, tests, and architecture notes.
- Treat this skill as personal defaults. Follow explicit project-local instructions when they conflict.
- Call out meaningful conflicts between this skill and local rules before making the affected choice.
- Prefer small, behavior-preserving changes unless the task asks for a broader redesign.
- Keep implementation style sympathetic to the codebase in front of you.

## Core Practices

- Design around public interfaces and observable behavior.
- Keep modules deep: expose a small interface and hide complexity behind it.
- Prefer boring, direct code over clever indirection.
- Add abstractions only when they remove real complexity or match an existing local pattern.
- Preserve existing domain language; introduce new terms only when they clarify stable concepts.
- Avoid speculative extensibility.
- Validate changes with the narrowest meaningful checks first, then broader checks when risk justifies it.

## References

- Read [testing.md](references/testing.md) before adding or changing tests.
- Read [python.md](references/python.md) before writing or reviewing Python code.
- Read [adding-standards.md](references/adding-standards.md) before updating this skill with new guidance.
