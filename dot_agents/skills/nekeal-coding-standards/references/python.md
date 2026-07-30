# Python Standards

## Imports

- Do not use local imports unless they bring a real benefit, such as avoiding an optional dependency cost, breaking an unavoidable import cycle, delaying an expensive import off a hot path, or isolating platform-specific code.
- When using a local import, keep it close to the code that needs it and make the reason obvious from context or a short comment.
