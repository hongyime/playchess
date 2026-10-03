## Portability maintenance - 2026-09-27

- Added Windows/Linux launcher contracts and the conditional Windows curses dependency. New launch tests pass on both systems. The original chess engine suite still reproduces baseline failures; no unrelated game logic was changed.

# Play Chess

Updated 2026-09-16 SGT. Baseline triage by Sisyphus-Junior.

## Current State
- HEAD: 48e799a (Merge pull request #6 from hongyime/shell/standardise)
- Branch: master, clean, synced with origin
- Stack: Python stdlib only (chess module is local)
- Open PRs: 0  |  Open Issues: 0
- Secrets scan: clean  |  npm audit: N/A
- AGENTS.md: not present

## Next
- No code changes needed from this triage pass
- Consider adding AGENTS.md for agent convention continuity
