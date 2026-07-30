# Adding Standards

## Update Policy

- Add new guidance only when it reflects a stable preference, repeated correction, or reusable practice.
- Put new material in the narrowest relevant reference file.
- Keep `SKILL.md` short: it should route and set priorities, not hold detailed rules.
- Create a new one-level `references/*.md` file when a topic grows beyond a few bullets or applies only in some situations.
- Do not duplicate the same rule in `SKILL.md` and a reference file.

## Writing Rules

- Use imperative language.
- Prefer concise rules with enough context to choose correctly.
- Include examples only when the distinction is otherwise easy to miss.
- Avoid repo-specific paths, tools, or domain terms unless the standard is intentionally scoped to that ecosystem.

## Validation

- After updating the skill, run the skill validator.
- Check that every reference file is linked directly from `SKILL.md`.
- Remove placeholder or unused resource directories.
