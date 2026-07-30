# Testing Standards

## Style

- Do not use `GIVEN`, `WHEN`, or `THEN` comments in tests.
- Let test names, setup structure, helper names, and assertions carry the story.
- Keep tests focused on one behavior or scenario.
- Prefer explicit setup over heavily abstracted test fixtures when clarity would suffer.

## Communicate Intent

- Name tests after the observable business rule or outcome, not a generic contract or implementation detail.
- Add a one-line docstring when the reason for a rule is not obvious, especially for privacy, access, or compatibility behavior.
- Keep every assertion aligned with the behavior named by the test; remove unrelated sanity assertions.
- Prefer asserting produced output over framework configuration such as serializer metadata.
- When checking an HTTP status and response body, assert the status first so request failures remain diagnostic.

## Test Through Behavior

- Test observable behavior through public interfaces.
- Avoid testing private functions, internal call order, implementation-only data structures, or incidental collaborator calls.
- A refactor that preserves behavior should not require rewriting tests.
- Verify state through the same interface a caller would use when practical.

## Mocking

- Avoid monkeypatching code you own.
- Mock only true system boundaries when needed: external APIs, network calls, time, randomness, filesystem access, process environment, or slow infrastructure.
- Prefer dependency injection or local boundary wrappers over patching deep internal imports.
- Do not assert on mock call counts or exact internal call shapes unless the interaction itself is the public contract.

## Good Test Pressure

- If a behavior is hard to test without monkeypatching internals, consider whether the production interface is too shallow, too coupled, or missing a boundary.
- Prefer tests that survive renaming, extraction, and internal reorganization.
- Use integration-style tests for important flows when the repo has practical support for them.
