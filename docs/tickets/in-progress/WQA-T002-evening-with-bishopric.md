---
id: WQA-T002
title: Reuse question box for An Evening with the Bishopric (Nov 22)
status: in-progress
created: 2026-11-18
assigned-team: [PM/Builder (Claude), Joe]
---

## Problem

YSA ward is holding An Evening with the Bishopric, Sunday 2026-11-22 at 7 pm. Same anonymous QR question format as WQA-T001, but questions go to the whole bishopric instead of the Bonneys' lesson.

## Acceptance Criteria

- [x] Submit page, TV slide, and backup TV slide say "Ask the Bishopric" / event name + date; no Bonney or lesson copy left
- [x] Supabase project `ward-qa` restored from pause (Joe, dashboard); anon insert 201, anon delete blocked
- [x] August questions cleared (Joe, 2026-11-18) from `public.questions` (already archived in exports/ward-questions-2026-08-30.pdf)
- [ ] Google Form backup retitled (Joe) and its old responses cleared (deferred by Joe 2026-11-18)
- [ ] Merged + live on GitHub Pages; live E2E: submit on phone, appears in bishop view
- [x] Bishopric has the bishop-view login (Joe sharing)

## Closeout (started 2026-11-24)

- [x] Public pages say questions are closed
- [x] Questions exported 2026-11-24, 16 of 16 (`exports/ward-questions-2026-11-22`, local only)
- [x] Questions deleted from `public.questions` (Joe, 2026-11-24, after checking the export)
- [x] Supabase project paused (Joe, 2026-11-24; free plan; resumable from the dashboard until 2027-12-29)
- [ ] Google Form closed and old responses cleared (Joe)

## Retrospective

(fill after the event)
