---
id: WQA-T001
title: Anonymous ward Q&A with live bishop view
status: in-progress
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
- [ ] Deployed to GitHub Pages, end-to-end browser test passed
- [ ] Joe verifies on his own phone, shares bishop credentials with Bishop Bonney
- [ ] Test questions cleared before Sunday

## Retrospective

(fill after the lesson)
