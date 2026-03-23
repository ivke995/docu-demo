# Plan: Update homepage docs link text

## Change summary
- Update the homepage docs/intro link label to "docu intro tutorial" (lowercase).

## Success criteria
- `src/pages/index.tsx` shows the docs/intro link label as "docu intro tutorial".
- The docs/intro link target (URL) remains unchanged.
- `npm run typecheck` passes.
- Context files are synced to reflect the change.

## Constraints and non-goals
- No URL changes.
- No styling changes.
- No other copy updates outside the specific docs/intro link label in `src/pages/index.tsx`.

## Tasks
- [x] T01: Update homepage docs link text (status:done)
  - Task ID: T01
  - Goal: Replace the docs/intro link label with "docu intro tutorial" in `src/pages/index.tsx`.
  - Boundaries (in/out of scope): In - text change only in `src/pages/index.tsx`. Out - URL changes, styling, other pages/links.
  - Done when: The docs/intro link label reads "docu intro tutorial" and the file saves without errors.
  - Verification notes (commands or checks): Manual diff review of `src/pages/index.tsx`.
  - Status: done
  - Completed: 2026-03-23
  - Files changed: `src/pages/index.tsx`
  - Evidence: Manual diff review; no lint script available; automated checks deferred to T02.

- [ ] T02: Validation and context sync (status:todo)
  - Task ID: T02
  - Goal: Run required checks and sync context with code.
  - Boundaries (in/out of scope): In - run `npm run typecheck`, sync context files. Out - unrelated refactors.
  - Done when: `npm run typecheck` passes and context is synced; if `npm run build` finishes within ~2 minutes, it is run and passes (otherwise document the skip).
  - Verification notes (commands or checks): `npm run typecheck`; optionally `npm run build` if it completes within ~2 minutes; run context sync.

## Open questions
- None.
