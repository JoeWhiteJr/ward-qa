create table public.questions (
  id uuid primary key default gen_random_uuid(),
  body text not null,
  status text not null default 'new',
  created_at timestamptz not null default now(),
  constraint questions_body_len check (char_length(btrim(body)) between 2 and 500),
  constraint questions_status_valid check (status in ('new','answered','hidden'))
);

alter table public.questions enable row level security;

create policy "anon can submit questions" on public.questions
  for insert to anon
  with check (status = 'new');

create policy "authenticated can read questions" on public.questions
  for select to authenticated
  using (true);

create policy "authenticated can moderate questions" on public.questions
  for update to authenticated
  using (true)
  with check (status in ('new','answered','hidden'));

create index questions_created_at_idx on public.questions (created_at);

alter publication supabase_realtime add table public.questions;
