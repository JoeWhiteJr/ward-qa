# Ward Question Box

Anonymous Q&A for Bishop and Sister Bonney's lesson. Ward members scan a QR code and submit questions with no name, no account, and no sign-in. The Bonneys watch questions arrive live on a private view.

Live site: https://joewhitejr.github.io/ward-qa/

## Pages

| Page | URL | Who |
|---|---|---|
| `index.html` | `/ward-qa/` | Ward members. Submit-only, anonymous. |
| `bishop.html` | `/ward-qa/bishop.html` | Bishop Bonney. Password sign-in, live-updating list with Watch and Moderate modes. |
| `tv.html` | `/ward-qa/tv.html` | The TV during the lesson. Full-screen QR slide. `qr.png` is also standalone for PowerPoint. |

## Architecture

Static site on GitHub Pages + Supabase free tier (project `ward-qa`, ref `nxauxcflxzowhkonppgp`, us-west-2).

One table, `public.questions` (`schema.sql`), locked down with RLS:

- `anon` (the publishable key embedded in the pages): INSERT only, forced to `status = 'new'`. Cannot read, update, or delete anything.
- `authenticated`: SELECT and UPDATE (moderation). Public signups are disabled on the project, so the only authenticated user is the bishop account created at setup.
- Live updates via Supabase Realtime (`postgres_changes`), with a 20-second polling fallback for flaky chapel wifi.

The publishable key in the HTML is safe to expose by design; RLS is the security boundary.

## Credentials

`.env` (gitignored, local only) holds the database password and the bishop sign-in. The bishop email is a plus-alias of Joe's Gmail, so password resets land in Joe's inbox.

## Anonymity notes

- No name, email, IP, or device info is stored in the `questions` table. Supabase's platform request logs do record IPs for a retention window, but nothing links a log line to a question row without DB timestamps + log correlation by a project admin.
- Honeypot field on the form quietly drops naive bot submissions.

## Ops

- **Clear test questions before Sunday:** run against the SQL editor or Management API:
  `delete from public.questions;` (as project owner; anon cannot delete)
- **Costs:** $0. GitHub Pages free, Supabase free tier (2 active projects: Lyfe + this one).
- **After the lesson:** the project can be paused from the Supabase dashboard to free the slot.
