---
name: investigate-github-repo
description: Investigate a GitHub repository by cloning it locally for source code analysis. Use when: internet documentation is insufficient and you need to read actual implementation — "how does X work internally", "find all implementations of interface Y", "trace call graph for feature Z".
---

# Investigate GitHub Repository

## Process

### 1. Clone repo
```bash
git clone --depth 1 <url> /tmp/gh-investigate-$(echo <url> | sha256sum | cut -c1-8)
```
✓ **Completion**: `git -C <dir> rev-parse HEAD` succeeds

### 2. Investigate locally
Agent chooses exploration method (cymbal, explore subagent, Read, etc.)
✓ **Completion**: Investigation question answered from local source

## Rules
- Shallow clone (`--depth 1`) by default; full history only if version comparison needed
- Temp path: `/tmp/gh-investigate-<8-char-hash>`
- Never webfetch github.com for code investigation — clone instead
