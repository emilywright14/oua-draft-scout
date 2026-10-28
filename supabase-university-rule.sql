-- Run after the initial setup SQL. Prevent multiple university picks per manager.
create or replace function public.enforce_one_university_per_manager()
returns trigger language plpgsql set search_path = '' as $$
begin
  if new.asset_type = 'university' and exists (
    select 1 from public.draft_picks
    where manager_id = new.manager_id and asset_type = 'university'
      and pick_number <> new.pick_number
  ) then
    raise exception 'This manager has already drafted a university';
  end if;
  return new;
end; $$;
drop trigger if exists one_university_per_manager on public.draft_picks;
create trigger one_university_per_manager
before insert or update on public.draft_picks
for each row execute function public.enforce_one_university_per_manager();
