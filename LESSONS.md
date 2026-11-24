# Lessons

| Date | Task | Mistake or Insight | Rule going forward |
|---|---|---|---|
| 2026-08-24 | Ward Q&A build | Claude artifact pages cannot accept writes from anonymous public viewers (only owner/editors can publish state) and block external fetch, so an anonymous-submission app cannot live on claude.ai | For public-write apps, use a static host (GitHub Pages) + Supabase with insert-only RLS |
| 2026-08-24 | Supabase Management API | Cloudflare blocks Python urllib (error 1010) on api.supabase.com; curl works | Use curl for Supabase Management API calls from scripts |
| 2026-08-24 | Supabase Realtime | A postgres_changes channel reports SUBSCRIBED before the server-side binding is ready; inserts in the first few seconds are missed. After an 8s settle, delivery was 0.9s | In realtime tests, wait several seconds after SUBSCRIBED before triggering events; keep a polling fallback in production |
| 2026-08-24 | Supabase security | New project defaults allow public signups, which would let anyone become `authenticated` and pass `TO authenticated` RLS policies | Disable signups (`disable_signup: true`) on any project where authenticated = trusted staff |
| 2026-08-24 | GitHub deploy | `git init` on this machine defaults to `master`, so `gh repo create --push` published master and Pages needed a branch rename | Set `git config --global init.defaultBranch main`, or branch -m before first push |
| 2026-11-18 | Reuse for Evening with the Bishopric | Paused Supabase free project drops DNS entirely (curl exit 6), so the live form silently fails, it does not error loudly | Before reusing, resolve <ref>.supabase.co first; restore from dashboard days ahead, not the day of |
| 2026-11-24 | Closeout | The export script would overwrite a good export with an empty one if rerun after the rows were deleted | Make exports read-only (or refuse to overwrite) before deleting the source rows |
