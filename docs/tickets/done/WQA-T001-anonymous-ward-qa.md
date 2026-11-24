---
id: WQA-T001
title: Anonymous ward Q&A with live bishop view
status: done
created: 2026-08-24
assigned-team: [PM/Builder (Claude), Joe]
---

## Problem

Bishop and Sister Bonney are teaching a lesson Sunday Aug 30. Ward members should be able to submit questions anonymously, both ahead of time and live during the lesson via a QR code on the TV, and Bishop Bonney should see questions arrive in real time so they can answer them live.

## Acceptance Criteria

- [x] Submit page: anonymous, no account, works on phones, 2 to 500 chars
- [x] Anonymity enforced at the database: anon role can only INSERT, cannot read or modify
- [x] Public signups disabled; single bishop login can read and moderate
- [x] Bishop view: live updates (realtime + polling fallback), Watch mode and Moderate mode (mark answered / hide / restore)
- [x] QR code + TV slide pointing at the submit page
- [x] Deployed to GitHub Pages, end-to-end browser test passed against the live site (realtime arrival 1.1s; answered/hide/restore verified; test rows cleared)
- [ ] Joe verifies on his own phone, shares bishop credentials with Bishop Bonney
- [x] Test questions cleared (re-clear if more testing happens before Sunday)

## Retrospective

Used 2026-08-30; questions exported to exports/ward-questions-2026-08-30.pdf (local only). Reused for WQA-T002. Closed 2026-11-24. The phone-check box was never confirmed in writing, so it stays unticked.
